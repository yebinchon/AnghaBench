; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_rx_readfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_rx_readfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_SWAP_FIFO = common dso_local global i32 0, align 4
@RX_DATA_FIFO = common dso_local global i64 0, align 8
@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32*, i32)* @smsc911x_rx_readfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_rx_readfifo(%struct.smsc911x_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %8 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SMSC911X_SWAP_FIFO, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %21 = load i64, i64* @RX_DATA_FIFO, align 8
  %22 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %20, i64 %21)
  %23 = call i32 @swab32(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %15

26:                                               ; preds = %15
  br label %66

27:                                               ; preds = %3
  %28 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %29 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %37 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RX_DATA_FIFO, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @readsl(i64 %40, i32* %41, i32 %42)
  br label %66

44:                                               ; preds = %27
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %46 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32, i32* %6, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %59 = load i64, i64* @RX_DATA_FIFO, align 8
  %60 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %58, i64 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %53

63:                                               ; preds = %53
  br label %66

64:                                               ; preds = %44
  %65 = call i32 (...) @BUG()
  br label %66

66:                                               ; preds = %64, %63, %35, %26
  ret void
}

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i64) #1

declare dso_local i32 @readsl(i64, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_tx_writefifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_tx_writefifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_SWAP_FIFO = common dso_local global i32 0, align 4
@TX_DATA_FIFO = common dso_local global i64 0, align 8
@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32*, i32)* @smsc911x_tx_writefifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_tx_writefifo(%struct.smsc911x_data* %0, i32* %1, i32 %2) #0 {
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
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %19, %14
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %21 = load i64, i64* @TX_DATA_FIFO, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load i32, i32* %22, align 4
  %25 = call i32 @swab32(i32 %24)
  %26 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %20, i64 %21, i32 %25)
  br label %15

27:                                               ; preds = %15
  br label %68

28:                                               ; preds = %3
  %29 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %30 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %38 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TX_DATA_FIFO, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @writesl(i64 %41, i32* %42, i32 %43)
  br label %68

45:                                               ; preds = %28
  %46 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %47 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %60 = load i64, i64* @TX_DATA_FIFO, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %5, align 8
  %63 = load i32, i32* %61, align 4
  %64 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %59, i64 %60, i32 %63)
  br label %54

65:                                               ; preds = %54
  br label %68

66:                                               ; preds = %45
  %67 = call i32 (...) @BUG()
  br label %68

68:                                               ; preds = %66, %65, %36, %27
  ret void
}

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i64, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @writesl(i64, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

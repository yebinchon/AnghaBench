; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_wait_for_rx_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-au1550.c_wait_for_rx_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_au1550_data = type { i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@PSC_SMBSTAT_RE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_au1550_data*, i32*)* @wait_for_rx_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_rx_byte(%struct.i2c_au1550_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_au1550_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store %struct.i2c_au1550_data* %0, %struct.i2c_au1550_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %11 = call i64 @wait_xfer_done(%struct.i2c_au1550_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %9, align 8
  %21 = load %struct.i2c_au1550_data*, %struct.i2c_au1550_data** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_au1550_data, %struct.i2c_au1550_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 100
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %16
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load volatile i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = call i32 (...) @au_sync()
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @PSC_SMBSTAT_RE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %45

43:                                               ; preds = %33
  %44 = call i32 @udelay(i32 1)
  br label %45

45:                                               ; preds = %43, %42
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %25, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load volatile i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = call i32 (...) @au_sync()
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %30, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @wait_xfer_done(%struct.i2c_au1550_data*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

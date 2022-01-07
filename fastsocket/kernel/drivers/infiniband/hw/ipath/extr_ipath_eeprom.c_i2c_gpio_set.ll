; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_i2c_gpio_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_eeprom.c_i2c_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@i2c_line_scl = common dso_local global i32 0, align 4
@i2c_line_high = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32, i32)* @i2c_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_gpio_set(%struct.ipath_devdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipath_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %12 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %11, i32 0, i32 0
  store i64* %12, i64** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @i2c_line_scl, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %18 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 1, %22
  store i64 %23, i64* %7, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 1, %30
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %24, %16
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 6
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @i2c_line_high, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i64, i64* %8, align 8
  %42 = xor i64 %41, -1
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, %42
  store i64 %46, i64* %44, align 8
  br label %53

47:                                               ; preds = %32
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = or i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 7
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %61 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %54, i32 %59, i64 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @i2c_line_high, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %53
  %68 = load i64, i64* %7, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, %68
  store i64 %71, i64* %69, align 8
  br label %78

72:                                               ; preds = %53
  %73 = load i64, i64* %7, align 8
  %74 = xor i64 %73, -1
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = and i64 %76, %74
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %80 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %81 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %80, i32 0, i32 7
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64*, i64** %9, align 8
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %79, i32 %84, i64 %86)
  %88 = load %struct.ipath_devdata*, %struct.ipath_devdata** %4, align 8
  %89 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %88, i32 0, i32 6
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

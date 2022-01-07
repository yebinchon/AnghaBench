; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_start(%struct.cx231xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %6 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 1, %8
  %10 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %43 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 1
  %47 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %41, i32 %44, i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %120

53:                                               ; preds = %1
  %54 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %55 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %74 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 1
  %79 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %73, i32 %76, i32* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %53
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %120

85:                                               ; preds = %53
  %86 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %93 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %107 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %108 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %111 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %110, i32 0, i32 1
  %112 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %106, i32 %109, i32* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %85
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %120

118:                                              ; preds = %85
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %115, %82, %50
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

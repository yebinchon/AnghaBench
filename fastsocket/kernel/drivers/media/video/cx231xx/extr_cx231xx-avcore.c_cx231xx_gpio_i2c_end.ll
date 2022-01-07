; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_end(%struct.cx231xx* %0) #0 {
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
  %28 = xor i32 %27, -1
  %29 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %44 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 1
  %49 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %43, i32 %46, i32* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %1
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %122

55:                                               ; preds = %1
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  %61 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %66 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %72 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %76 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %77 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 1
  %81 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %75, i32 %78, i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %55
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %122

87:                                               ; preds = %55
  %88 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %89 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %99 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %105 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %109 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %110 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %113 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %112, i32 0, i32 1
  %114 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %108, i32 %111, i32* %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %87
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %122

120:                                              ; preds = %87
  %121 = load i32, i32* %4, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %120, %117, %84, %52
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_read_byte(%struct.cx231xx* %0, i32* %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %77, %2
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 8
  br i1 %11, label %12, label %80

12:                                               ; preds = %9
  %13 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %14 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %28 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %27, i32 0, i32 0
  %29 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %23, i32 %26, i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %40 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %41 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %44 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %43, i32 0, i32 0
  %45 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %39, i32 %42, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %50 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %51 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 0
  %55 = call i32 @cx231xx_get_gpio_bit(%struct.cx231xx* %49, i32 %52, i32* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 1, %62
  %64 = and i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %12
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 8, %67
  %69 = sub nsw i32 %68, 1
  %70 = shl i32 1, %69
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %66, %12
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %9

80:                                               ; preds = %9
  %81 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %82 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %88 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %92 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %93 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %96 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %95, i32 0, i32 0
  %97 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %91, i32 %94, i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %4, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @cx231xx_get_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

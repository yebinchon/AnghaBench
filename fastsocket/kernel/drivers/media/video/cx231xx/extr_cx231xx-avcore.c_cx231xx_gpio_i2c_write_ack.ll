; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_write_ack(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = shl i32 1, %7
  %9 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %10 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %14 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %15 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 1
  %19 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %13, i32 %16, i32* %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 1, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %37 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %41 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 1
  %46 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %40, i32 %43, i32* %45)
  store i32 %46, i32* %3, align 4
  %47 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %48 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 1
  %62 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %56, i32 %59, i32* %61)
  store i32 %62, i32* %3, align 4
  %63 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %74 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %75 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 1
  %79 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %73, i32 %76, i32* %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 1, %83
  %85 = xor i32 %84, -1
  %86 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %91 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %92 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 1
  %96 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %90, i32 %93, i32* %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

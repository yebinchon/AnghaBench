; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_gpio_i2c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_gpio_i2c_write_byte(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %156, %2
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %159

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %29, %30
  %32 = and i32 %31, 128
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %95

34:                                               ; preds = %28
  %35 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %42 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %52 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %56 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %60 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %59, i32 0, i32 1
  %61 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %55, i32 %58, i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %63 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %68 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %72 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 1
  %77 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %71, i32 %74, i32* %76)
  store i32 %77, i32* %5, align 4
  %78 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %79 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %85 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %89 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %90 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %93 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %92, i32 0, i32 1
  %94 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %88, i32 %91, i32* %93)
  store i32 %94, i32* %5, align 4
  br label %155

95:                                               ; preds = %28
  %96 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %97 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = xor i32 %100, -1
  %102 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %107 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 1, %109
  %111 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %112 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %116 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %117 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %120 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %119, i32 0, i32 1
  %121 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %115, i32 %118, i32* %120)
  store i32 %121, i32* %5, align 4
  %122 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %123 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 1, %125
  %127 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %128 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %132 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %133 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %136 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %135, i32 0, i32 1
  %137 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %131, i32 %134, i32* %136)
  store i32 %137, i32* %5, align 4
  %138 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %139 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 1, %141
  %143 = xor i32 %142, -1
  %144 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %145 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %149 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %150 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %153 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %152, i32 0, i32 1
  %154 = call i32 @cx231xx_set_gpio_bit(%struct.cx231xx* %148, i32 %151, i32* %153)
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %95, %34
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %25

159:                                              ; preds = %25
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @cx231xx_set_gpio_bit(%struct.cx231xx*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

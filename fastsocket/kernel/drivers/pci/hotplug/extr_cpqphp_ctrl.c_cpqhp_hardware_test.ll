; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_hardware_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_cpqhp_hardware_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i64 }

@SLOT_MASK = common dso_local global i64 0, align 8
@LED_CONTROL = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpqhp_hardware_test(%struct.controller* %0, i32 %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.controller*, %struct.controller** %3, align 8
  %10 = getelementptr inbounds %struct.controller, %struct.controller* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SLOT_MASK, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readb(i64 %13)
  %15 = and i32 %14, 15
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %134 [
    i32 1, label %17
    i32 2, label %132
    i32 3, label %133
  ]

17:                                               ; preds = %2
  %18 = load %struct.controller*, %struct.controller** %3, align 8
  %19 = getelementptr inbounds %struct.controller, %struct.controller* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LED_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %5, align 4
  store i32 16843009, i32* %6, align 4
  %24 = load %struct.controller*, %struct.controller** %3, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @switch_leds(%struct.controller* %24, i32 %25, i32* %6, i32 0)
  %27 = load %struct.controller*, %struct.controller** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @switch_leds(%struct.controller* %27, i32 %28, i32* %6, i32 1)
  %30 = load %struct.controller*, %struct.controller** %3, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @switch_leds(%struct.controller* %30, i32 %31, i32* %6, i32 0)
  %33 = load %struct.controller*, %struct.controller** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @switch_leds(%struct.controller* %33, i32 %34, i32* %6, i32 1)
  store i32 16842752, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.controller*, %struct.controller** %3, align 8
  %38 = getelementptr inbounds %struct.controller, %struct.controller* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LED_CONTROL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.controller*, %struct.controller** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @switch_leds(%struct.controller* %43, i32 %44, i32* %6, i32 0)
  %46 = load %struct.controller*, %struct.controller** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @switch_leds(%struct.controller* %46, i32 %47, i32* %6, i32 1)
  store i32 257, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.controller*, %struct.controller** %3, align 8
  %51 = getelementptr inbounds %struct.controller, %struct.controller* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LED_CONTROL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.controller*, %struct.controller** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @switch_leds(%struct.controller* %56, i32 %57, i32* %6, i32 0)
  %59 = load %struct.controller*, %struct.controller** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @switch_leds(%struct.controller* %59, i32 %60, i32* %6, i32 1)
  store i32 16842752, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.controller*, %struct.controller** %3, align 8
  %64 = getelementptr inbounds %struct.controller, %struct.controller* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LED_CONTROL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %117, %17
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %120

73:                                               ; preds = %69
  %74 = load %struct.controller*, %struct.controller** %3, align 8
  %75 = call i32 @set_SOGO(%struct.controller* %74)
  %76 = load %struct.controller*, %struct.controller** %3, align 8
  %77 = call i32 @wait_for_ctrl_irq(%struct.controller* %76)
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 3, %78
  %80 = sdiv i32 %79, 10
  %81 = call i32 @long_delay(i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 16
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.controller*, %struct.controller** %3, align 8
  %86 = getelementptr inbounds %struct.controller, %struct.controller* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LED_CONTROL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel(i32 %84, i64 %89)
  %91 = load %struct.controller*, %struct.controller** %3, align 8
  %92 = call i32 @set_SOGO(%struct.controller* %91)
  %93 = load %struct.controller*, %struct.controller** %3, align 8
  %94 = call i32 @wait_for_ctrl_irq(%struct.controller* %93)
  %95 = load i32, i32* @HZ, align 4
  %96 = mul nsw i32 3, %95
  %97 = sdiv i32 %96, 10
  %98 = call i32 @long_delay(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 16
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.controller*, %struct.controller** %3, align 8
  %103 = getelementptr inbounds %struct.controller, %struct.controller* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @LED_CONTROL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @writel(i32 %101, i64 %106)
  %108 = load i32, i32* %6, align 4
  %109 = shl i32 %108, 1
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.controller*, %struct.controller** %3, align 8
  %112 = getelementptr inbounds %struct.controller, %struct.controller* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LED_CONTROL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @writel(i32 %110, i64 %115)
  br label %117

117:                                              ; preds = %73
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %69

120:                                              ; preds = %69
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.controller*, %struct.controller** %3, align 8
  %123 = getelementptr inbounds %struct.controller, %struct.controller* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LED_CONTROL, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel(i32 %121, i64 %126)
  %128 = load %struct.controller*, %struct.controller** %3, align 8
  %129 = call i32 @set_SOGO(%struct.controller* %128)
  %130 = load %struct.controller*, %struct.controller** %3, align 8
  %131 = call i32 @wait_for_ctrl_irq(%struct.controller* %130)
  br label %134

132:                                              ; preds = %2
  br label %134

133:                                              ; preds = %2
  br label %134

134:                                              ; preds = %2, %133, %132, %120
  ret i32 0
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @switch_leds(%struct.controller*, i32, i32*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_SOGO(%struct.controller*) #1

declare dso_local i32 @wait_for_ctrl_irq(%struct.controller*) #1

declare dso_local i32 @long_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

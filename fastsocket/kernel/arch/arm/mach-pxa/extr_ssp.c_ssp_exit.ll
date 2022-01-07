; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_ssp.c_ssp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_dev = type { i64, %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@NO_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssp_exit(%struct.ssp_dev* %0) #0 {
  %2 = alloca %struct.ssp_dev*, align 8
  %3 = alloca %struct.ssp_device*, align 8
  store %struct.ssp_dev* %0, %struct.ssp_dev** %2, align 8
  %4 = load %struct.ssp_dev*, %struct.ssp_dev** %2, align 8
  %5 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %4, i32 0, i32 1
  %6 = load %struct.ssp_device*, %struct.ssp_device** %5, align 8
  store %struct.ssp_device* %6, %struct.ssp_device** %3, align 8
  %7 = load %struct.ssp_dev*, %struct.ssp_dev** %2, align 8
  %8 = call i32 @ssp_disable(%struct.ssp_dev* %7)
  %9 = load %struct.ssp_dev*, %struct.ssp_dev** %2, align 8
  %10 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NO_IRQ, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.ssp_dev*, %struct.ssp_dev** %2, align 8
  %16 = getelementptr inbounds %struct.ssp_dev, %struct.ssp_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ssp_dev*, %struct.ssp_dev** %2, align 8
  %19 = call i32 @free_irq(i64 %17, %struct.ssp_dev* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %22 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_disable(i32 %23)
  %25 = load %struct.ssp_device*, %struct.ssp_device** %3, align 8
  %26 = call i32 @ssp_free(%struct.ssp_device* %25)
  ret void
}

declare dso_local i32 @ssp_disable(%struct.ssp_dev*) #1

declare dso_local i32 @free_irq(i64, %struct.ssp_dev*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @ssp_free(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

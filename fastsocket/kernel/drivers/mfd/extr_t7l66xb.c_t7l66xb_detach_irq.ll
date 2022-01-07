; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_t7l66xb.c_t7l66xb_detach_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_t7l66xb.c_t7l66xb_detach_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.t7l66xb = type { i32, i32 }

@T7L66XB_NR_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @t7l66xb_detach_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t7l66xb_detach_irq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.t7l66xb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.t7l66xb* %7, %struct.t7l66xb** %3, align 8
  %8 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %9 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %12 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @set_irq_chained_handler(i32 %13, i32* null)
  %15 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %16 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @set_irq_data(i32 %17, i32* null)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @T7L66XB_NR_IRQS, align 4
  %24 = add i32 %22, %23
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @set_irq_chip(i32 %27, i32* null)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @set_irq_chip_data(i32 %29, i32* null)
  br label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %20

34:                                               ; preds = %20
  ret void
}

declare dso_local %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32*) #1

declare dso_local i32 @set_irq_data(i32, i32*) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_chip_data(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

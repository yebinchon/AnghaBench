; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_attach_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_tc6393xb.c_tc6393xb_attach_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tc6393xb = type { i32, i32 }

@TC6393XB_NR_IRQS = common dso_local global i32 0, align 4
@tc6393xb_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@IRQF_VALID = common dso_local global i32 0, align 4
@IRQF_PROBE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@tc6393xb_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tc6393xb_attach_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc6393xb_attach_irq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tc6393xb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.tc6393xb* %7, %struct.tc6393xb** %3, align 8
  %8 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %9 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @TC6393XB_NR_IRQS, align 4
  %16 = add i32 %14, %15
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @set_irq_chip(i32 %19, i32* @tc6393xb_chip)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %23 = call i32 @set_irq_chip_data(i32 %21, %struct.tc6393xb* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @handle_edge_irq, align 4
  %26 = call i32 @set_irq_handler(i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IRQF_VALID, align 4
  %29 = load i32, i32* @IRQF_PROBE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @set_irq_flags(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %37 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %40 = call i32 @set_irq_type(i32 %38, i32 %39)
  %41 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %42 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %45 = call i32 @set_irq_data(i32 %43, %struct.tc6393xb* %44)
  %46 = load %struct.tc6393xb*, %struct.tc6393xb** %3, align 8
  %47 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @tc6393xb_irq, align 4
  %50 = call i32 @set_irq_chained_handler(i32 %48, i32 %49)
  ret void
}

declare dso_local %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_chip_data(i32, %struct.tc6393xb*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @set_irq_flags(i32, i32) #1

declare dso_local i32 @set_irq_type(i32, i32) #1

declare dso_local i32 @set_irq_data(i32, %struct.tc6393xb*) #1

declare dso_local i32 @set_irq_chained_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

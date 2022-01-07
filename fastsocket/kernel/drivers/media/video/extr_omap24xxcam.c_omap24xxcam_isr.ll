; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CAM_IRQSTATUS = common dso_local global i32 0, align 4
@CAM_IRQSTATUS_DMA_IRQ2 = common dso_local global i32 0, align 4
@CAM_IRQSTATUS_DMA_IRQ1 = common dso_local global i32 0, align 4
@CAM_IRQSTATUS_DMA_IRQ0 = common dso_local global i32 0, align 4
@CAM_IRQSTATUS_CC_IRQ = common dso_local global i32 0, align 4
@CAM_IRQSTATUS_MMU_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unhandled camera MMU interrupt!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap24xxcam_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap24xxcam_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.omap24xxcam_device*
  store %struct.omap24xxcam_device* %9, %struct.omap24xxcam_device** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %11 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CAM_IRQSTATUS, align 4
  %14 = call i32 @omap24xxcam_reg_in(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @CAM_IRQSTATUS_DMA_IRQ2, align 4
  %17 = load i32, i32* @CAM_IRQSTATUS_DMA_IRQ1, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CAM_IRQSTATUS_DMA_IRQ0, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %25 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @omap24xxcam_dma_isr(i32* %26)
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CAM_IRQSTATUS_CC_IRQ, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %35 = call i32 @omap24xxcam_core_isr(%struct.omap24xxcam_device* %34)
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CAM_IRQSTATUS_MMU_IRQ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %43 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @IRQ_RETVAL(i32 %47)
  ret i32 %48
}

declare dso_local i32 @omap24xxcam_reg_in(i32, i32) #1

declare dso_local i32 @omap24xxcam_dma_isr(i32*) #1

declare dso_local i32 @omap24xxcam_core_isr(%struct.omap24xxcam_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

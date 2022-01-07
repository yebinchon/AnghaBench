; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_take_picture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_take_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@meye = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@MCHIP_HIC_MODE = common dso_local global i32 0, align 4
@MCHIP_HIC_MODE_STILL_CAP = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD_START = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mchip_take_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mchip_take_picture() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mchip_hic_stop()
  %3 = call i32 (...) @mchip_subsample()
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @meye, i32 0, i32 0), align 4
  %5 = call i32 @mchip_dma_setup(i32 %4)
  %6 = load i32, i32* @MCHIP_HIC_MODE, align 4
  %7 = load i32, i32* @MCHIP_HIC_MODE_STILL_CAP, align 4
  %8 = call i32 @mchip_set(i32 %6, i32 %7)
  %9 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %10 = load i32, i32* @MCHIP_HIC_CMD_START, align 4
  %11 = call i32 @mchip_set(i32 %9, i32 %10)
  %12 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %13 = call i64 @mchip_delay(i32 %12, i32 0)
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %25, %0
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %15, 100
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load i32, i32* @MCHIP_HIC_STATUS, align 4
  %19 = load i32, i32* @MCHIP_HIC_STATUS_IDLE, align 4
  %20 = call i64 @mchip_delay(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %28

23:                                               ; preds = %17
  %24 = call i32 @msleep(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %14

28:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @mchip_hic_stop(...) #1

declare dso_local i32 @mchip_subsample(...) #1

declare dso_local i32 @mchip_dma_setup(i32) #1

declare dso_local i32 @mchip_set(i32, i32) #1

declare dso_local i64 @mchip_delay(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

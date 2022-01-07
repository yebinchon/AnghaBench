; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_poweron_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_poweron_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i32, i32 }

@RESET_TIMEOUT_NS = common dso_local global i32 0, align 4
@CAM_SYSCONFIG = common dso_local global i32 0, align 4
@CAM_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@CAM_SYSSTATUS = common dso_local global i32 0, align 4
@CAM_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"camera soft reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_device*)* @omap24xxcam_poweron_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_poweron_reset(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca %struct.omap24xxcam_device*, align 8
  %3 = alloca i32, align 4
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %2, align 8
  %4 = load i32, i32* @RESET_TIMEOUT_NS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %6 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @CAM_SYSCONFIG, align 4
  %9 = load i32, i32* @CAM_SYSCONFIG_SOFTRESET, align 4
  %10 = call i32 @omap24xxcam_reg_out(i32 %7, i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %26, %1
  %12 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %13 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAM_SYSSTATUS, align 4
  %16 = call i32 @omap24xxcam_reg_in(i32 %14, i32 %15)
  %17 = load i32, i32* @CAM_SYSSTATUS_RESETDONE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i1 [ false, %11 ], [ %23, %20 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i32 @ndelay(i32 1)
  br label %11

28:                                               ; preds = %24
  %29 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAM_SYSSTATUS, align 4
  %33 = call i32 @omap24xxcam_reg_in(i32 %31, i32 %32)
  %34 = load i32, i32* @CAM_SYSSTATUS_RESETDONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %39 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @omap24xxcam_reg_out(i32, i32, i32) #1

declare dso_local i32 @omap24xxcam_reg_in(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

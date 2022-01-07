; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_add_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_4__, %struct.sh_mobile_ceu_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.sh_mobile_ceu_dev = type { %struct.soc_camera_device* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SuperH Mobile CEU driver attached to camera %d\0A\00", align 1
@CAPSR = common dso_local global i32 0, align 4
@CSTSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @sh_mobile_ceu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_add_device(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.soc_camera_host*, align 8
  %5 = alloca %struct.sh_mobile_ceu_dev*, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %9)
  store %struct.soc_camera_host* %10, %struct.soc_camera_host** %4, align 8
  %11 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %12 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %11, i32 0, i32 1
  %13 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %12, align 8
  store %struct.sh_mobile_ceu_dev* %13, %struct.sh_mobile_ceu_dev** %5, align 8
  %14 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %5, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %14, i32 0, i32 0
  %16 = load %struct.soc_camera_device*, %struct.soc_camera_device** %15, align 8
  %17 = icmp ne %struct.soc_camera_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %23 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %27 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_info(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.soc_camera_host*, %struct.soc_camera_host** %4, align 8
  %31 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pm_runtime_get_sync(i32 %33)
  %35 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %5, align 8
  %36 = load i32, i32* @CAPSR, align 4
  %37 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %35, i32 %36, i32 65536)
  br label %38

38:                                               ; preds = %44, %21
  %39 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %5, align 8
  %40 = load i32, i32* @CSTSR, align 4
  %41 = call i32 @ceu_read(%struct.sh_mobile_ceu_dev* %39, i32 %40)
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @msleep(i32 1)
  br label %38

46:                                               ; preds = %38
  %47 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %48 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %5, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %48, i32 0, i32 0
  store %struct.soc_camera_device* %47, %struct.soc_camera_device** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i32) #1

declare dso_local i32 @ceu_read(%struct.sh_mobile_ceu_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_remove_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.soc_camera_host = type { %struct.TYPE_5__, %struct.sh_mobile_ceu_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.sh_mobile_ceu_dev = type { %struct.soc_camera_device*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CEIER = common dso_local global i32 0, align 4
@CAPSR = common dso_local global i32 0, align 4
@VIDEOBUF_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"SuperH Mobile CEU driver detached from camera %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_camera_device*)* @sh_mobile_ceu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mobile_ceu_remove_device(%struct.soc_camera_device* %0) #0 {
  %2 = alloca %struct.soc_camera_device*, align 8
  %3 = alloca %struct.soc_camera_host*, align 8
  %4 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %2, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %9)
  store %struct.soc_camera_host* %10, %struct.soc_camera_host** %3, align 8
  %11 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %12 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %11, i32 0, i32 1
  %13 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %12, align 8
  store %struct.sh_mobile_ceu_dev* %13, %struct.sh_mobile_ceu_dev** %4, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %15 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %15, i32 0, i32 0
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %16, align 8
  %18 = icmp ne %struct.soc_camera_device* %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %22 = load i32, i32* @CEIER, align 4
  %23 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %21, i32 %22, i32 0)
  %24 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %25 = load i32, i32* @CAPSR, align 4
  %26 = call i32 @ceu_write(%struct.sh_mobile_ceu_dev* %24, i32 %25, i32 65536)
  %27 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %28 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %1
  %36 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = call i32 @list_del(i32* %39)
  %41 = load i32, i32* @VIDEOBUF_ERROR, align 4
  %42 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @wake_up_all(i32* %49)
  %51 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %52 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %51, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %52, align 8
  br label %53

53:                                               ; preds = %35, %1
  %54 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %55 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %54, i32 0, i32 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.soc_camera_host*, %struct.soc_camera_host** %3, align 8
  %59 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pm_runtime_put_sync(i32 %61)
  %63 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %64 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.soc_camera_device*, %struct.soc_camera_device** %2, align 8
  %68 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %4, align 8
  %72 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %71, i32 0, i32 0
  store %struct.soc_camera_device* null, %struct.soc_camera_device** %72, align 8
  ret void
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceu_write(%struct.sh_mobile_ceu_dev*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

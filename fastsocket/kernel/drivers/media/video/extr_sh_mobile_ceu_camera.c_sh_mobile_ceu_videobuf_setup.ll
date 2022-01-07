; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_videobuf_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_sh_mobile_ceu_camera.c_sh_mobile_ceu_videobuf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.soc_camera_device* }
%struct.soc_camera_device = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.soc_camera_host = type { %struct.sh_mobile_ceu_dev* }
%struct.sh_mobile_ceu_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"count=%d, size=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_queue*, i32*, i32*)* @sh_mobile_ceu_videobuf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_ceu_videobuf_setup(%struct.videobuf_queue* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.videobuf_queue*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.soc_camera_device*, align 8
  %8 = alloca %struct.soc_camera_host*, align 8
  %9 = alloca %struct.sh_mobile_ceu_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.videobuf_queue*, %struct.videobuf_queue** %4, align 8
  %12 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %11, i32 0, i32 0
  %13 = load %struct.soc_camera_device*, %struct.soc_camera_device** %12, align 8
  store %struct.soc_camera_device* %13, %struct.soc_camera_device** %7, align 8
  %14 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %15 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %17)
  store %struct.soc_camera_host* %18, %struct.soc_camera_host** %8, align 8
  %19 = load %struct.soc_camera_host*, %struct.soc_camera_host** %8, align 8
  %20 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %19, i32 0, i32 0
  %21 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %20, align 8
  store %struct.sh_mobile_ceu_dev* %21, %struct.sh_mobile_ceu_dev** %9, align 8
  %22 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %23 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %22, i32 0, i32 3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 7
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %10, align 4
  %29 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %30 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %33 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = call i32 @PAGE_ALIGN(i32 %37)
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 0, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %3
  %44 = load i32*, i32** %5, align 8
  store i32 2, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %3
  %46 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %9, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %61, %50
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = mul i32 %53, %55
  %57 = load %struct.sh_mobile_ceu_dev*, %struct.sh_mobile_ceu_dev** %9, align 8
  %58 = getelementptr inbounds %struct.sh_mobile_ceu_dev, %struct.sh_mobile_ceu_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ugt i32 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, -1
  store i32 %64, i32* %62, align 4
  br label %51

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.soc_camera_device*, %struct.soc_camera_device** %7, align 8
  %68 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74)
  ret i32 0
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

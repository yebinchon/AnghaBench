; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_vdev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-core.c_cx88_vdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.pci_dev = type { i32 }
%struct.video_device = type { i32, i32, i32*, i32* }

@video_device_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s %s (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.video_device* @cx88_vdev_init(%struct.cx88_core* %0, %struct.pci_dev* %1, %struct.video_device* %2, i8* %3) #0 {
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.video_device*, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store %struct.video_device* %2, %struct.video_device** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %11, %struct.video_device** %10, align 8
  %12 = load %struct.video_device*, %struct.video_device** %10, align 8
  %13 = icmp eq %struct.video_device* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.video_device* null, %struct.video_device** %5, align 8
  br label %44

15:                                               ; preds = %4
  %16 = load %struct.video_device*, %struct.video_device** %10, align 8
  %17 = load %struct.video_device*, %struct.video_device** %8, align 8
  %18 = bitcast %struct.video_device* %16 to i8*
  %19 = bitcast %struct.video_device* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %21 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %20, i32 0, i32 2
  %22 = load %struct.video_device*, %struct.video_device** %10, align 8
  %23 = getelementptr inbounds %struct.video_device, %struct.video_device* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.video_device*, %struct.video_device** %10, align 8
  %27 = getelementptr inbounds %struct.video_device, %struct.video_device* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* @video_device_release, align 4
  %29 = load %struct.video_device*, %struct.video_device** %10, align 8
  %30 = getelementptr inbounds %struct.video_device, %struct.video_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.video_device*, %struct.video_device** %10, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %35 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37, i8* %41)
  %43 = load %struct.video_device*, %struct.video_device** %10, align 8
  store %struct.video_device* %43, %struct.video_device** %5, align 8
  br label %44

44:                                               ; preds = %15, %14
  %45 = load %struct.video_device*, %struct.video_device** %5, align 8
  ret %struct.video_device* %45
}

declare dso_local %struct.video_device* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

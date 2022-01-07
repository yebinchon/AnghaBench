; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.omap24xxcam_fh* }
%struct.omap24xxcam_fh = type { i32, %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__*, %struct.file* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"streaming\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @omap24xxcam_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.omap24xxcam_fh*, align 8
  %4 = alloca %struct.omap24xxcam_device*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  store %struct.omap24xxcam_fh* %7, %struct.omap24xxcam_fh** %3, align 8
  %8 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %3, align 8
  %9 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %8, i32 0, i32 1
  %10 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %9, align 8
  store %struct.omap24xxcam_device* %10, %struct.omap24xxcam_device** %4, align 8
  %11 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %12 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %11, i32 0, i32 3
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = call i32 (...) @flush_scheduled_work()
  %15 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %3, align 8
  %16 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %15, i32 0, i32 0
  %17 = call i32 @videobuf_streamoff(i32* %16)
  %18 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %19 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %22 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %21, i32 0, i32 5
  %23 = load %struct.file*, %struct.file** %22, align 8
  %24 = load %struct.file*, %struct.file** %2, align 8
  %25 = icmp eq %struct.file* %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %28 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %27, i32 0, i32 5
  store %struct.file* null, %struct.file** %28, align 8
  %29 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %30 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %33 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @sysfs_notify(i32* %35, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %39 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %43 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %42, i32 0, i32 3
  %44 = call i32 @atomic_dec(i32* %43)
  %45 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %3, align 8
  %46 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %45, i32 0, i32 0
  %47 = call i32 @omap24xxcam_vbq_free_mmap_buffers(i32* %46)
  %48 = call i32 (...) @flush_scheduled_work()
  %49 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %50 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %53 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %52, i32 0, i32 2
  %54 = call i64 @atomic_dec_return(i32* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %58 = call i32 @omap24xxcam_sensor_disable(%struct.omap24xxcam_device* %57)
  %59 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %60 = call i32 @omap24xxcam_poweron_reset(%struct.omap24xxcam_device* %59)
  br label %61

61:                                               ; preds = %56, %41
  %62 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %63 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.file*, %struct.file** %2, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  store %struct.omap24xxcam_fh* null, %struct.omap24xxcam_fh** %66, align 8
  %67 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %4, align 8
  %68 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @module_put(i32 %71)
  %73 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %3, align 8
  %74 = call i32 @kfree(%struct.omap24xxcam_fh* %73)
  ret i32 0
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @omap24xxcam_vbq_free_mmap_buffers(i32*) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @omap24xxcam_sensor_disable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @omap24xxcam_poweron_reset(%struct.omap24xxcam_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.omap24xxcam_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_fops_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }
%struct.saa7146_dev = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { {}* }
%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { i64, %struct.saa7146_dev* }
%struct.TYPE_9__ = type { i32 (%struct.saa7146_dev*, %struct.file*)* }

@.str = private unnamed_addr constant [9 x i8] c"file:%p\0A\00", align 1
@saa7146_devices_lock = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@saa7146_vbi_uops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@saa7146_video_uops = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_release(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.saa7146_fh*, align 8
  %5 = alloca %struct.saa7146_dev*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.saa7146_fh*, %struct.saa7146_fh** %7, align 8
  store %struct.saa7146_fh* %8, %struct.saa7146_fh** %4, align 8
  %9 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %10 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %9, i32 0, i32 1
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  store %struct.saa7146_dev* %11, %struct.saa7146_dev** %5, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = bitcast %struct.file* %12 to i8*
  %14 = call i32 @DEB_EE(i8* %13)
  %15 = call i64 @mutex_lock_interruptible(i32* @saa7146_devices_lock)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %77

20:                                               ; preds = %1
  %21 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %22 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %28 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = call i32 %36(%struct.saa7146_dev* %37, %struct.file* %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %42 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.file*)**
  %47 = load i32 (%struct.file*)*, i32 (%struct.file*)** %46, align 8
  %48 = icmp ne i32 (%struct.file*)* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %51 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.file*)**
  %56 = load i32 (%struct.file*)*, i32 (%struct.file*)** %55, align 8
  %57 = load %struct.file*, %struct.file** %3, align 8
  %58 = call i32 %56(%struct.file* %57)
  br label %59

59:                                               ; preds = %49, %40
  br label %65

60:                                               ; preds = %20
  %61 = load i32 (%struct.saa7146_dev*, %struct.file*)*, i32 (%struct.saa7146_dev*, %struct.file*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @saa7146_video_uops, i32 0, i32 0), align 8
  %62 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %63 = load %struct.file*, %struct.file** %3, align 8
  %64 = call i32 %61(%struct.saa7146_dev* %62, %struct.file* %63)
  br label %65

65:                                               ; preds = %60, %59
  %66 = load %struct.saa7146_dev*, %struct.saa7146_dev** %5, align 8
  %67 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @module_put(i32 %70)
  %72 = load %struct.file*, %struct.file** %3, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  store %struct.saa7146_fh* null, %struct.saa7146_fh** %73, align 8
  %74 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %75 = call i32 @kfree(%struct.saa7146_fh* %74)
  %76 = call i32 @mutex_unlock(i32* @saa7146_devices_lock)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %65, %17
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.saa7146_fh*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

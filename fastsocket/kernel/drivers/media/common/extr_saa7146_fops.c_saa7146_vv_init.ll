; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_vv_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_fops.c_saa7146_vv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)* }
%struct.saa7146_dev = type { i32*, %struct.saa7146_vv*, %struct.saa7146_ext_vv*, %struct.TYPE_8__*, i32 }
%struct.saa7146_ext_vv = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.saa7146_vv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"out of memory. aborting.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@saa7146_video_ioctl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@BCS_CTRL = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@SAA7146_CLIPPING_MEM = common dso_local global i32 0, align 4
@saa7146_video_uops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@saa7146_vbi_uops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@vv_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_vv_init(%struct.saa7146_dev* %0, %struct.saa7146_ext_vv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_ext_vv*, align 8
  %6 = alloca %struct.saa7146_vv*, align 8
  %7 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_ext_vv* %1, %struct.saa7146_ext_vv** %5, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %9 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %13 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %12, i32 0, i32 4
  %14 = call i32 @v4l2_device_register(i32* %11, i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %99

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.saa7146_vv* @kzalloc(i32 16, i32 %20)
  store %struct.saa7146_vv* %21, %struct.saa7146_vv** %6, align 8
  %22 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %23 = icmp eq %struct.saa7146_vv* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %99

28:                                               ; preds = %19
  %29 = load i32, i32* @saa7146_video_ioctl_ops, align 4
  %30 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %31 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %33 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %32, i32 0, i32 1
  store i32* @saa7146_video_ioctl_ops, i32** %33, align 8
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %35 = bitcast %struct.saa7146_dev* %34 to i8*
  %36 = call i32 @DEB_EE(i8* %35)
  %37 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %38 = load i32, i32* @BCS_CTRL, align 4
  %39 = call i32 @saa7146_write(%struct.saa7146_dev* %37, i32 %38, i32 -2143289280)
  %40 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %41 = load i32, i32* @MC1, align 4
  %42 = load i32, i32* @MASK_10, align 4
  %43 = load i32, i32* @MASK_26, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @saa7146_write(%struct.saa7146_dev* %40, i32 %41, i32 %44)
  %46 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %5, align 8
  %47 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %48 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %47, i32 0, i32 2
  store %struct.saa7146_ext_vv* %46, %struct.saa7146_ext_vv** %48, align 8
  %49 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %50 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %49, i32 0, i32 3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load i32, i32* @SAA7146_CLIPPING_MEM, align 4
  %53 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %54 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = call i32* @pci_alloc_consistent(%struct.TYPE_8__* %51, i32 %52, i32* %55)
  %57 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %58 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  %60 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %61 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* null, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %28
  %66 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %68 = call i32 @kfree(%struct.saa7146_vv* %67)
  store i32 -1, i32* %3, align 4
  br label %99

69:                                               ; preds = %28
  %70 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %71 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @SAA7146_CLIPPING_MEM, align 4
  %75 = call i32 @memset(i32* %73, i32 0, i32 %74)
  %76 = load i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)*, i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @saa7146_video_uops, i32 0, i32 0), align 8
  %77 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %78 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %79 = call i32 %76(%struct.saa7146_dev* %77, %struct.saa7146_vv* %78)
  %80 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %81 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %80, i32 0, i32 2
  %82 = load %struct.saa7146_ext_vv*, %struct.saa7146_ext_vv** %81, align 8
  %83 = getelementptr inbounds %struct.saa7146_ext_vv, %struct.saa7146_ext_vv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %69
  %89 = load i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)*, i32 (%struct.saa7146_dev*, %struct.saa7146_vv*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @saa7146_vbi_uops, i32 0, i32 0), align 8
  %90 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %91 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %92 = call i32 %89(%struct.saa7146_dev* %90, %struct.saa7146_vv* %91)
  br label %93

93:                                               ; preds = %88, %69
  %94 = load %struct.saa7146_vv*, %struct.saa7146_vv** %6, align 8
  %95 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %96 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %95, i32 0, i32 1
  store %struct.saa7146_vv* %94, %struct.saa7146_vv** %96, align 8
  %97 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %98 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %97, i32 0, i32 0
  store i32* @vv_callback, i32** %98, align 8
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %65, %24, %17
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @v4l2_device_register(i32*, i32*) #1

declare dso_local %struct.saa7146_vv* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32* @pci_alloc_consistent(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.saa7146_vv*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7134_fh* }
%struct.saa7134_fh = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, i64, %struct.saa7134_dev* }
%struct.TYPE_5__ = type { %struct.saa7134_fh* }
%struct.saa7134_dev = type { i32, i32, i32 }
%struct.saa6588_command = type { i32 }

@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@RESOURCE_VIDEO = common dso_local global i32 0, align 4
@RESOURCE_VBI = common dso_local global i32 0, align 4
@SAA7134_OFMT_VIDEO_A = common dso_local global i32 0, align 4
@SAA7134_OFMT_VIDEO_B = common dso_local global i32 0, align 4
@SAA7134_OFMT_DATA_A = common dso_local global i32 0, align 4
@SAA7134_OFMT_DATA_B = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@ioctl = common dso_local global i32 0, align 4
@SAA6588_CMD_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.saa7134_fh*, align 8
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa6588_command, align 4
  %6 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  store %struct.saa7134_fh* %9, %struct.saa7134_fh** %3, align 8
  %10 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %11 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %10, i32 0, i32 6
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %11, align 8
  store %struct.saa7134_dev* %12, %struct.saa7134_dev** %4, align 8
  %13 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %14 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %15 = call i64 @res_check(%struct.saa7134_fh* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 2
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %23 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %24 = call i32 @stop_preview(%struct.saa7134_dev* %22, %struct.saa7134_fh* %23)
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %26 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %25, i32 0, i32 2
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %30 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %31 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %32 = call i32 @res_free(%struct.saa7134_dev* %29, %struct.saa7134_fh* %30, i32 %31)
  br label %33

33:                                               ; preds = %17, %1
  %34 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %35 = load i32, i32* @RESOURCE_VIDEO, align 4
  %36 = call i64 @res_check(%struct.saa7134_fh* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %40 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %39, i32 0, i32 4
  %41 = call i32 @videobuf_streamoff(%struct.TYPE_5__* %40)
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %43 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %44 = load i32, i32* @RESOURCE_VIDEO, align 4
  %45 = call i32 @res_free(%struct.saa7134_dev* %42, %struct.saa7134_fh* %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %33
  %47 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %48 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.saa7134_fh*, %struct.saa7134_fh** %49, align 8
  %51 = icmp ne %struct.saa7134_fh* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %54 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %53, i32 0, i32 4
  %55 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %56 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.saa7134_fh*, %struct.saa7134_fh** %57, align 8
  %59 = call i32 @buffer_release(%struct.TYPE_5__* %54, %struct.saa7134_fh* %58)
  %60 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %61 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.saa7134_fh*, %struct.saa7134_fh** %62, align 8
  %64 = call i32 @kfree(%struct.saa7134_fh* %63)
  br label %65

65:                                               ; preds = %52, %46
  %66 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %67 = load i32, i32* @RESOURCE_VBI, align 4
  %68 = call i64 @res_check(%struct.saa7134_fh* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %72 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %71, i32 0, i32 3
  %73 = call i32 @videobuf_stop(%struct.TYPE_5__* %72)
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %75 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %76 = load i32, i32* @RESOURCE_VBI, align 4
  %77 = call i32 @res_free(%struct.saa7134_dev* %74, %struct.saa7134_fh* %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* @SAA7134_OFMT_VIDEO_A, align 4
  %80 = call i32 @saa_andorb(i32 %79, i32 31, i32 0)
  %81 = load i32, i32* @SAA7134_OFMT_VIDEO_B, align 4
  %82 = call i32 @saa_andorb(i32 %81, i32 31, i32 0)
  %83 = load i32, i32* @SAA7134_OFMT_DATA_A, align 4
  %84 = call i32 @saa_andorb(i32 %83, i32 31, i32 0)
  %85 = load i32, i32* @SAA7134_OFMT_DATA_B, align 4
  %86 = call i32 @saa_andorb(i32 %85, i32 31, i32 0)
  %87 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %88 = load i32, i32* @core, align 4
  %89 = load i32, i32* @s_power, align 4
  %90 = call i32 (%struct.saa7134_dev*, i32, i32, i32, ...) @saa_call_all(%struct.saa7134_dev* %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %92 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %78
  %96 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %97 = load i32, i32* @core, align 4
  %98 = load i32, i32* @ioctl, align 4
  %99 = load i32, i32* @SAA6588_CMD_CLOSE, align 4
  %100 = call i32 (%struct.saa7134_dev*, i32, i32, i32, ...) @saa_call_all(%struct.saa7134_dev* %96, i32 %97, i32 %98, i32 %99, %struct.saa6588_command* %5)
  br label %101

101:                                              ; preds = %95, %78
  %102 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %103 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %102, i32 0, i32 4
  %104 = call i32 @videobuf_mmap_free(%struct.TYPE_5__* %103)
  %105 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %106 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %105, i32 0, i32 3
  %107 = call i32 @videobuf_mmap_free(%struct.TYPE_5__* %106)
  %108 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %109 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %112 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %111, i32 0, i32 2
  %113 = call i32 @saa7134_pgtable_free(i32 %110, i32* %112)
  %114 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %115 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %118 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %117, i32 0, i32 1
  %119 = call i32 @saa7134_pgtable_free(i32 %116, i32* %118)
  %120 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %121 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %120, i32 0, i32 0
  %122 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %123 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @v4l2_prio_close(i32* %121, i32 %124)
  %126 = load %struct.file*, %struct.file** %2, align 8
  %127 = getelementptr inbounds %struct.file, %struct.file* %126, i32 0, i32 0
  store %struct.saa7134_fh* null, %struct.saa7134_fh** %127, align 8
  %128 = load %struct.saa7134_fh*, %struct.saa7134_fh** %3, align 8
  %129 = call i32 @kfree(%struct.saa7134_fh* %128)
  ret i32 0
}

declare dso_local i64 @res_check(%struct.saa7134_fh*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stop_preview(%struct.saa7134_dev*, %struct.saa7134_fh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @res_free(%struct.saa7134_dev*, %struct.saa7134_fh*, i32) #1

declare dso_local i32 @videobuf_streamoff(%struct.TYPE_5__*) #1

declare dso_local i32 @buffer_release(%struct.TYPE_5__*, %struct.saa7134_fh*) #1

declare dso_local i32 @kfree(%struct.saa7134_fh*) #1

declare dso_local i32 @videobuf_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, i32, ...) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_5__*) #1

declare dso_local i32 @saa7134_pgtable_free(i32, i32*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

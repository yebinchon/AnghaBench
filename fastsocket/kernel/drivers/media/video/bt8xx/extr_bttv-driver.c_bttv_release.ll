; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.bttv_fh* }
%struct.bttv_fh = type { i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.bttv* }
%struct.TYPE_5__ = type { %struct.bttv_fh* }
%struct.bttv = type { i32, i32 }

@RESOURCE_OVERLAY = common dso_local global i32 0, align 4
@RESOURCE_VIDEO_STREAM = common dso_local global i32 0, align 4
@RESOURCE_VIDEO_READ = common dso_local global i32 0, align 4
@RESOURCE_VBI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @bttv_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.bttv_fh*, align 8
  %4 = alloca %struct.bttv*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.bttv_fh*, %struct.bttv_fh** %6, align 8
  store %struct.bttv_fh* %7, %struct.bttv_fh** %3, align 8
  %8 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %9 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %8, i32 0, i32 3
  %10 = load %struct.bttv*, %struct.bttv** %9, align 8
  store %struct.bttv* %10, %struct.bttv** %4, align 8
  %11 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %12 = load i32, i32* @RESOURCE_OVERLAY, align 4
  %13 = call i64 @check_btres(%struct.bttv_fh* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.bttv*, %struct.bttv** %4, align 8
  %17 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %18 = call i32 @bttv_switch_overlay(%struct.bttv* %16, %struct.bttv_fh* %17, i32* null)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %21 = load i32, i32* @RESOURCE_VIDEO_STREAM, align 4
  %22 = call i64 @check_btres(%struct.bttv_fh* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %26 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %25, i32 0, i32 2
  %27 = call i32 @videobuf_streamoff(%struct.TYPE_5__* %26)
  %28 = load %struct.bttv*, %struct.bttv** %4, align 8
  %29 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %30 = load i32, i32* @RESOURCE_VIDEO_STREAM, align 4
  %31 = call i32 @free_btres_lock(%struct.bttv* %28, %struct.bttv_fh* %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %34 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.bttv_fh*, %struct.bttv_fh** %35, align 8
  %37 = icmp ne %struct.bttv_fh* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %40 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %39, i32 0, i32 2
  %41 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %42 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.bttv_fh*, %struct.bttv_fh** %43, align 8
  %45 = call i32 @buffer_release(%struct.TYPE_5__* %40, %struct.bttv_fh* %44)
  %46 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %47 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.bttv_fh*, %struct.bttv_fh** %48, align 8
  %50 = call i32 @kfree(%struct.bttv_fh* %49)
  br label %51

51:                                               ; preds = %38, %32
  %52 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %53 = load i32, i32* @RESOURCE_VIDEO_READ, align 4
  %54 = call i64 @check_btres(%struct.bttv_fh* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.bttv*, %struct.bttv** %4, align 8
  %58 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %59 = load i32, i32* @RESOURCE_VIDEO_READ, align 4
  %60 = call i32 @free_btres_lock(%struct.bttv* %57, %struct.bttv_fh* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %63 = load i32, i32* @RESOURCE_VBI, align 4
  %64 = call i64 @check_btres(%struct.bttv_fh* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %68 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %67, i32 0, i32 1
  %69 = call i32 @videobuf_stop(%struct.TYPE_5__* %68)
  %70 = load %struct.bttv*, %struct.bttv** %4, align 8
  %71 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %72 = load i32, i32* @RESOURCE_VBI, align 4
  %73 = call i32 @free_btres_lock(%struct.bttv* %70, %struct.bttv_fh* %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %61
  %75 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %76 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %75, i32 0, i32 2
  %77 = call i32 @videobuf_mmap_free(%struct.TYPE_5__* %76)
  %78 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %79 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %78, i32 0, i32 1
  %80 = call i32 @videobuf_mmap_free(%struct.TYPE_5__* %79)
  %81 = load %struct.bttv*, %struct.bttv** %4, align 8
  %82 = getelementptr inbounds %struct.bttv, %struct.bttv* %81, i32 0, i32 1
  %83 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %84 = getelementptr inbounds %struct.bttv_fh, %struct.bttv_fh* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @v4l2_prio_close(i32* %82, i32 %85)
  %87 = load %struct.file*, %struct.file** %2, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  store %struct.bttv_fh* null, %struct.bttv_fh** %88, align 8
  %89 = load %struct.bttv_fh*, %struct.bttv_fh** %3, align 8
  %90 = call i32 @kfree(%struct.bttv_fh* %89)
  %91 = load %struct.bttv*, %struct.bttv** %4, align 8
  %92 = getelementptr inbounds %struct.bttv, %struct.bttv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.bttv*, %struct.bttv** %4, align 8
  %96 = call i32 @bttv_field_count(%struct.bttv* %95)
  %97 = load %struct.bttv*, %struct.bttv** %4, align 8
  %98 = getelementptr inbounds %struct.bttv, %struct.bttv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %74
  %102 = load %struct.bttv*, %struct.bttv** %4, align 8
  %103 = call i32 @audio_mute(%struct.bttv* %102, i32 1)
  br label %104

104:                                              ; preds = %101, %74
  ret i32 0
}

declare dso_local i64 @check_btres(%struct.bttv_fh*, i32) #1

declare dso_local i32 @bttv_switch_overlay(%struct.bttv*, %struct.bttv_fh*, i32*) #1

declare dso_local i32 @videobuf_streamoff(%struct.TYPE_5__*) #1

declare dso_local i32 @free_btres_lock(%struct.bttv*, %struct.bttv_fh*, i32) #1

declare dso_local i32 @buffer_release(%struct.TYPE_5__*, %struct.bttv_fh*) #1

declare dso_local i32 @kfree(%struct.bttv_fh*) #1

declare dso_local i32 @videobuf_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @videobuf_mmap_free(%struct.TYPE_5__*) #1

declare dso_local i32 @v4l2_prio_close(i32*, i32) #1

declare dso_local i32 @bttv_field_count(%struct.bttv*) #1

declare dso_local i32 @audio_mute(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

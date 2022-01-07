; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.front_face* }
%struct.front_face = type { i64, i32, %struct.poseidon* }
%struct.poseidon = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@POSEIDON_STATE_ANALOG = common dso_local global i32 0, align 4
@PLAY_SERVICE = common dso_local global i32 0, align 4
@TLG_TUNE_PLAY_SVC_STOP = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@POSEIDON_STATE_VBI = common dso_local global i32 0, align 4
@poseidon_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pd_video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.front_face*, align 8
  %4 = alloca %struct.poseidon*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.front_face*, %struct.front_face** %7, align 8
  store %struct.front_face* %8, %struct.front_face** %3, align 8
  %9 = load %struct.front_face*, %struct.front_face** %3, align 8
  %10 = getelementptr inbounds %struct.front_face, %struct.front_face* %9, i32 0, i32 2
  %11 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  store %struct.poseidon* %11, %struct.poseidon** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.front_face*, %struct.front_face** %3, align 8
  %13 = call i32 @logs(%struct.front_face* %12)
  %14 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %15 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.front_face*, %struct.front_face** %3, align 8
  %18 = getelementptr inbounds %struct.front_face, %struct.front_face* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load i32, i32* @POSEIDON_STATE_ANALOG, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %26 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %30 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %29, i32 0, i32 5
  %31 = call i32 @usb_transfer_stop(%struct.TYPE_5__* %30)
  %32 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %33 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %32, i32 0, i32 5
  %34 = call i32 @free_all_urb(%struct.TYPE_5__* %33)
  %35 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %36 = load i32, i32* @PLAY_SERVICE, align 4
  %37 = load i32, i32* @TLG_TUNE_PLAY_SVC_STOP, align 4
  %38 = call i32 @send_set_req(%struct.poseidon* %35, i32 %36, i32 %37, i32* %5)
  %39 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %40 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %42 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  br label %68

46:                                               ; preds = %1
  %47 = load %struct.front_face*, %struct.front_face** %3, align 8
  %48 = getelementptr inbounds %struct.front_face, %struct.front_face* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = load i32, i32* @POSEIDON_STATE_VBI, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %56 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %60 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %63 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %52, %46
  br label %68

68:                                               ; preds = %67, %22
  %69 = load %struct.front_face*, %struct.front_face** %3, align 8
  %70 = getelementptr inbounds %struct.front_face, %struct.front_face* %69, i32 0, i32 1
  %71 = call i32 @videobuf_stop(i32* %70)
  %72 = load %struct.front_face*, %struct.front_face** %3, align 8
  %73 = getelementptr inbounds %struct.front_face, %struct.front_face* %72, i32 0, i32 1
  %74 = call i32 @videobuf_mmap_free(i32* %73)
  %75 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %76 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @usb_autopm_put_interface(i32 %77)
  %79 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %80 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %79, i32 0, i32 1
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.front_face*, %struct.front_face** %3, align 8
  %83 = call i32 @kfree(%struct.front_face* %82)
  %84 = load %struct.file*, %struct.file** %2, align 8
  %85 = getelementptr inbounds %struct.file, %struct.file* %84, i32 0, i32 0
  store %struct.front_face* null, %struct.front_face** %85, align 8
  %86 = load %struct.poseidon*, %struct.poseidon** %4, align 8
  %87 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %86, i32 0, i32 0
  %88 = load i32, i32* @poseidon_delete, align 4
  %89 = call i32 @kref_put(i32* %87, i32 %88)
  ret i32 0
}

declare dso_local i32 @logs(%struct.front_face*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_transfer_stop(%struct.TYPE_5__*) #1

declare dso_local i32 @free_all_urb(%struct.TYPE_5__*) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.front_face*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

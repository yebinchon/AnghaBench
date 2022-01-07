; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_start_video_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_start_video_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i64, %struct.video_data }
%struct.video_data = type { i32 }

@TAKE_REQUEST = common dso_local global i32 0, align 4
@PLAY_SERVICE = common dso_local global i32 0, align 4
@TLG_TUNE_PLAY_SVC_START = common dso_local global i32 0, align 4
@iso_bubble_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.poseidon*)* @start_video_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_video_stream(%struct.poseidon* %0) #0 {
  %2 = alloca %struct.poseidon*, align 8
  %3 = alloca %struct.video_data*, align 8
  %4 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %2, align 8
  %5 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %6 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %5, i32 0, i32 1
  store %struct.video_data* %6, %struct.video_data** %3, align 8
  %7 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %8 = load i32, i32* @TAKE_REQUEST, align 4
  %9 = call i32 @send_set_req(%struct.poseidon* %7, i32 %8, i32 0, i32* %4)
  %10 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %11 = load i32, i32* @PLAY_SERVICE, align 4
  %12 = load i32, i32* @TLG_TUNE_PLAY_SVC_START, align 4
  %13 = call i32 @send_set_req(%struct.poseidon* %10, i32 %11, i32 %12, i32* %4)
  %14 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %15 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.video_data*, %struct.video_data** %3, align 8
  %20 = call i32 @prepare_iso_urb(%struct.video_data* %19)
  %21 = load %struct.video_data*, %struct.video_data** %3, align 8
  %22 = getelementptr inbounds %struct.video_data, %struct.video_data* %21, i32 0, i32 0
  %23 = load i32, i32* @iso_bubble_handler, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.video_data*, %struct.video_data** %3, align 8
  %27 = call i32 @prepare_bulk_urb(%struct.video_data* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load %struct.video_data*, %struct.video_data** %3, align 8
  %30 = call i32 @fire_all_urb(%struct.video_data* %29)
  ret i32 0
}

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

declare dso_local i32 @prepare_iso_urb(%struct.video_data*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @prepare_bulk_urb(%struct.video_data*) #1

declare dso_local i32 @fire_all_urb(%struct.video_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

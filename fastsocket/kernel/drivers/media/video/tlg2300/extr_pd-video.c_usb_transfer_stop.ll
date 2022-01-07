; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_usb_transfer_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_usb_transfer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i64*, i64, %struct.poseidon* }
%struct.poseidon = type { i32 }

@SBUF_NUM = common dso_local global i32 0, align 4
@PLAY_SERVICE = common dso_local global i32 0, align 4
@TLG_TUNE_PLAY_SVC_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_data*)* @usb_transfer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_transfer_stop(%struct.video_data* %0) #0 {
  %2 = alloca %struct.video_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.poseidon*, align 8
  store %struct.video_data* %0, %struct.video_data** %2, align 8
  %6 = load %struct.video_data*, %struct.video_data** %2, align 8
  %7 = getelementptr inbounds %struct.video_data, %struct.video_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %1
  %11 = load %struct.video_data*, %struct.video_data** %2, align 8
  %12 = getelementptr inbounds %struct.video_data, %struct.video_data* %11, i32 0, i32 2
  %13 = load %struct.poseidon*, %struct.poseidon** %12, align 8
  store %struct.poseidon* %13, %struct.poseidon** %5, align 8
  %14 = load %struct.video_data*, %struct.video_data** %2, align 8
  %15 = getelementptr inbounds %struct.video_data, %struct.video_data* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %39, %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SBUF_NUM, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load %struct.video_data*, %struct.video_data** %2, align 8
  %22 = getelementptr inbounds %struct.video_data, %struct.video_data* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = load %struct.video_data*, %struct.video_data** %2, align 8
  %31 = getelementptr inbounds %struct.video_data, %struct.video_data* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @usb_kill_urb(i64 %36)
  br label %38

38:                                               ; preds = %29, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %44 = load i32, i32* @PLAY_SERVICE, align 4
  %45 = load i32, i32* @TLG_TUNE_PLAY_SVC_STOP, align 4
  %46 = call i32 @send_set_req(%struct.poseidon* %43, i32 %44, i32 %45, i32* %4)
  br label %47

47:                                               ; preds = %42, %1
  ret i32 0
}

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @send_set_req(%struct.poseidon*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_stop_all_video_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_stop_all_video_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { i32, %struct.vbi_data, %struct.video_data }
%struct.vbi_data = type { %struct.front_face* }
%struct.front_face = type { i32 }
%struct.video_data = type { %struct.front_face*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_all_video_stream(%struct.poseidon* %0) #0 {
  %2 = alloca %struct.poseidon*, align 8
  %3 = alloca %struct.video_data*, align 8
  %4 = alloca %struct.vbi_data*, align 8
  %5 = alloca %struct.front_face*, align 8
  store %struct.poseidon* %0, %struct.poseidon** %2, align 8
  %6 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %7 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %6, i32 0, i32 2
  store %struct.video_data* %7, %struct.video_data** %3, align 8
  %8 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %9 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %8, i32 0, i32 1
  store %struct.vbi_data* %9, %struct.vbi_data** %4, align 8
  %10 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %11 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.video_data*, %struct.video_data** %3, align 8
  %14 = getelementptr inbounds %struct.video_data, %struct.video_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.video_data*, %struct.video_data** %3, align 8
  %19 = getelementptr inbounds %struct.video_data, %struct.video_data* %18, i32 0, i32 0
  %20 = load %struct.front_face*, %struct.front_face** %19, align 8
  store %struct.front_face* %20, %struct.front_face** %5, align 8
  %21 = load %struct.video_data*, %struct.video_data** %3, align 8
  %22 = call i32 @usb_transfer_stop(%struct.video_data* %21)
  %23 = load %struct.video_data*, %struct.video_data** %3, align 8
  %24 = call i32 @free_all_urb(%struct.video_data* %23)
  %25 = load %struct.front_face*, %struct.front_face** %5, align 8
  %26 = getelementptr inbounds %struct.front_face, %struct.front_face* %25, i32 0, i32 0
  %27 = call i32 @videobuf_stop(i32* %26)
  %28 = load %struct.front_face*, %struct.front_face** %5, align 8
  %29 = getelementptr inbounds %struct.front_face, %struct.front_face* %28, i32 0, i32 0
  %30 = call i32 @videobuf_mmap_free(i32* %29)
  %31 = load %struct.vbi_data*, %struct.vbi_data** %4, align 8
  %32 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %31, i32 0, i32 0
  %33 = load %struct.front_face*, %struct.front_face** %32, align 8
  store %struct.front_face* %33, %struct.front_face** %5, align 8
  %34 = load %struct.front_face*, %struct.front_face** %5, align 8
  %35 = icmp ne %struct.front_face* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load %struct.front_face*, %struct.front_face** %5, align 8
  %38 = getelementptr inbounds %struct.front_face, %struct.front_face* %37, i32 0, i32 0
  %39 = call i32 @videobuf_stop(i32* %38)
  %40 = load %struct.front_face*, %struct.front_face** %5, align 8
  %41 = getelementptr inbounds %struct.front_face, %struct.front_face* %40, i32 0, i32 0
  %42 = call i32 @videobuf_mmap_free(i32* %41)
  br label %43

43:                                               ; preds = %36, %17
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.poseidon*, %struct.poseidon** %2, align 8
  %46 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_transfer_stop(%struct.video_data*) #1

declare dso_local i32 @free_all_urb(%struct.video_data*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

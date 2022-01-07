; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_copy_vbi_video_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_copy_vbi_video_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i64, %struct.vbi_data* }
%struct.vbi_data = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_data*, i8*, i32)* @copy_vbi_video_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vbi_video_data(%struct.video_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vbi_data*, align 8
  %8 = alloca i32, align 4
  store %struct.video_data* %0, %struct.video_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.video_data*, %struct.video_data** %4, align 8
  %10 = getelementptr inbounds %struct.video_data, %struct.video_data* %9, i32 0, i32 1
  %11 = load %struct.vbi_data*, %struct.vbi_data** %10, align 8
  store %struct.vbi_data* %11, %struct.vbi_data** %7, align 8
  %12 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %13 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 2
  %16 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %17 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @copy_vbi_data(%struct.vbi_data* %24, i8* %25, i32 %26)
  br label %61

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @copy_vbi_data(%struct.vbi_data* %32, i8* %33, i32 %34)
  %36 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %37 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.video_data*, %struct.video_data** %4, align 8
  %42 = getelementptr inbounds %struct.video_data, %struct.video_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %47 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @submit_frame(i64 %48)
  br label %50

50:                                               ; preds = %45, %40, %31
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.video_data*, %struct.video_data** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub i32 %57, %58
  %60 = call i32 @copy_video_data(%struct.video_data* %52, i8* %56, i32 %59)
  br label %61

61:                                               ; preds = %51, %23
  ret void
}

declare dso_local i32 @copy_vbi_data(%struct.vbi_data*, i8*, i32) #1

declare dso_local i32 @submit_frame(i64) #1

declare dso_local i32 @copy_video_data(%struct.video_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.poseidon = type { %struct.vbi_data, %struct.video_data }
%struct.vbi_data = type { i32* }
%struct.video_data = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@pd_video_template = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@VFL_TYPE_VBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"register VIDEO/VBI devices\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"VIDEO/VBI devices register failed, : %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pd_video_init(%struct.poseidon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.poseidon*, align 8
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca %struct.vbi_data*, align 8
  %6 = alloca i32, align 4
  store %struct.poseidon* %0, %struct.poseidon** %3, align 8
  %7 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %8 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %7, i32 0, i32 1
  store %struct.video_data* %8, %struct.video_data** %4, align 8
  %9 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %10 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %9, i32 0, i32 0
  store %struct.vbi_data* %10, %struct.vbi_data** %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %14 = call i8* @vdev_init(%struct.poseidon* %13, i32* @pd_video_template)
  %15 = bitcast i8* %14 to i32*
  %16 = load %struct.video_data*, %struct.video_data** %4, align 8
  %17 = getelementptr inbounds %struct.video_data, %struct.video_data* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.video_data*, %struct.video_data** %4, align 8
  %19 = getelementptr inbounds %struct.video_data, %struct.video_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %56

23:                                               ; preds = %1
  %24 = load %struct.video_data*, %struct.video_data** %4, align 8
  %25 = getelementptr inbounds %struct.video_data, %struct.video_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %28 = call i32 @video_register_device(i32* %26, i32 %27, i32 -1)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %56

32:                                               ; preds = %23
  %33 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %34 = call i8* @vdev_init(%struct.poseidon* %33, i32* @pd_video_template)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.vbi_data*, %struct.vbi_data** %5, align 8
  %37 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.vbi_data*, %struct.vbi_data** %5, align 8
  %39 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %56

45:                                               ; preds = %32
  %46 = load %struct.vbi_data*, %struct.vbi_data** %5, align 8
  %47 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @VFL_TYPE_VBI, align 4
  %50 = call i32 @video_register_device(i32* %48, i32 %49, i32 -1)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %56

54:                                               ; preds = %45
  %55 = call i32 (i8*, ...) @log(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %62

56:                                               ; preds = %53, %42, %31, %22
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, ...) @log(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.poseidon*, %struct.poseidon** %3, align 8
  %60 = call i32 @pd_video_exit(%struct.poseidon* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @vdev_init(%struct.poseidon*, i32*) #1

declare dso_local i32 @video_register_device(i32*, i32, i32) #1

declare dso_local i32 @log(i8*, ...) #1

declare dso_local i32 @pd_video_exit(%struct.poseidon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

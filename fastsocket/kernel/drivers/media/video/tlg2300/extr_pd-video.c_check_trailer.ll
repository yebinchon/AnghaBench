; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_check_trailer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_check_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.vbi_data* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vbi_data = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"VFHS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_data*, i8*, i32)* @check_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_trailer(%struct.video_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.video_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vbi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.video_data* %0, %struct.video_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.video_data*, %struct.video_data** %4, align 8
  %12 = getelementptr inbounds %struct.video_data, %struct.video_data* %11, i32 0, i32 5
  %13 = load %struct.vbi_data*, %struct.vbi_data** %12, align 8
  store %struct.vbi_data* %13, %struct.vbi_data** %7, align 8
  %14 = load %struct.video_data*, %struct.video_data** %4, align 8
  %15 = getelementptr inbounds %struct.video_data, %struct.video_data* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 2
  %20 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %21 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %19, %23
  %25 = load %struct.vbi_data*, %struct.vbi_data** %7, align 8
  %26 = getelementptr inbounds %struct.vbi_data, %struct.vbi_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.video_data*, %struct.video_data** %4, align 8
  %29 = getelementptr inbounds %struct.video_data, %struct.video_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.video_data*, %struct.video_data** %4, align 8
  %32 = getelementptr inbounds %struct.video_data, %struct.video_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 %27, %34
  %36 = sub nsw i32 %24, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.video_data*, %struct.video_data** %4, align 8
  %38 = getelementptr inbounds %struct.video_data, %struct.video_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load %struct.video_data*, %struct.video_data** %4, align 8
  %43 = getelementptr inbounds %struct.video_data, %struct.video_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.video_data*, %struct.video_data** %4, align 8
  %46 = getelementptr inbounds %struct.video_data, %struct.video_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %41, %3
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %51
  br label %91

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %59
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 12
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 1
  %74 = load %struct.video_data*, %struct.video_data** %4, align 8
  %75 = getelementptr inbounds %struct.video_data, %struct.video_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %67
  %80 = load %struct.video_data*, %struct.video_data** %4, align 8
  %81 = load %struct.video_data*, %struct.video_data** %4, align 8
  %82 = getelementptr inbounds %struct.video_data, %struct.video_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @init_copy(%struct.video_data* %80, i32 %83)
  br label %94

85:                                               ; preds = %67
  %86 = load %struct.video_data*, %struct.video_data** %4, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @copy_video_data(%struct.video_data* %86, i8* %87, i32 %88)
  br label %90

90:                                               ; preds = %85, %59
  br label %91

91:                                               ; preds = %90, %58
  %92 = load %struct.video_data*, %struct.video_data** %4, align 8
  %93 = call i32 @end_field(%struct.video_data* %92)
  br label %94

94:                                               ; preds = %91, %79
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @init_copy(%struct.video_data*, i32) #1

declare dso_local i32 @copy_video_data(%struct.video_data*, i8*, i32) #1

declare dso_local i32 @end_field(%struct.video_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

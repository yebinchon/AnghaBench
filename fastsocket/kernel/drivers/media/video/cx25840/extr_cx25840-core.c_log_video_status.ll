; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_log_video_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_log_video_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32 }

@log_video_status.fmt_strs = internal constant [16 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"0x0\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"NTSC-J\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"NTSC-4.43\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"PAL-BDGHI\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"PAL-M\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PAL-N\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PAL-Nc\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"PAL-60\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"0x9\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"0xA\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"0xB\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SECAM\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"0xD\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"0xE\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"0xF\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Video signal:              %spresent\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Detected format:           %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Specified standard:        %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"automatic detection\00", align 1
@CX25840_COMPOSITE1 = common dso_local global i32 0, align 4
@CX25840_COMPOSITE8 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"Specified video input:     Composite %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"Specified video input:     S-Video (Luma In%d, Chroma In%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Specified audioclock freq: %d Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @log_video_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_video_status(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = call i32 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = call %struct.cx25840_state* @to_state(i32 %9)
  store %struct.cx25840_state* %10, %struct.cx25840_state** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = call i32 @cx25840_read(%struct.i2c_client* %11, i32 1024)
  %13 = and i32 %12, 15
  store i32 %13, i32* %4, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = call i32 @cx25840_read(%struct.i2c_client* %14, i32 1037)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @cx25840_read(%struct.i2c_client* %16, i32 1038)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %19 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)
  %27 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 15
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i8*], [16 x i8*]* @log_video_status.fmt_strs, i64 0, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0), i8* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [16 x i8*], [16 x i8*]* @log_video_status.fmt_strs, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i8* [ %42, %38 ], [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), %43 ]
  %46 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CX25840_COMPOSITE8, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CX25840_COMPOSITE1, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %59)
  br label %70

61:                                               ; preds = %50, %44
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 240
  %65 = ashr i32 %64, 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 3840
  %68 = ashr i32 %67, 8
  %69 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %62, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i64 0, i64 0), i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %61, %54
  %71 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %72 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %73 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

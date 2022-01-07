; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek.c_gemtek_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-gemtek.c_gemtek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemtek = type { i32, %struct.v4l2_device }
%struct.v4l2_device = type { i32 }

@__const.gemtek_probe.ioports = private unnamed_addr constant [6 x i32] [i32 524, i32 780, i32 588, i32 844, i32 584, i32 652], align 16
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Automatic device probing disabled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Automatic device probing enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Trying I/O port 0x%x...\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gemtek-probe\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"I/O port 0x%x busy!\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Card found from I/O port 0x%x!\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Automatic probing failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gemtek*)* @gemtek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemtek_probe(%struct.gemtek* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gemtek*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.gemtek* %0, %struct.gemtek** %3, align 8
  %7 = load %struct.gemtek*, %struct.gemtek** %3, align 8
  %8 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %7, i32 0, i32 1
  store %struct.v4l2_device* %8, %struct.v4l2_device** %4, align 8
  %9 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x i32]* @__const.gemtek_probe.ioports to i8*), i64 24, i1 false)
  %10 = load i32, i32* @probe, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %14 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %84

15:                                               ; preds = %1
  %16 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %17 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %78, %15
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %18
  %24 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @request_region(i32 %33, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %23
  %37 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @v4l2_warn(%struct.v4l2_device* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %41)
  br label %78

43:                                               ; preds = %23
  %44 = load %struct.gemtek*, %struct.gemtek** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @gemtek_verify(%struct.gemtek* %44, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %43
  %52 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.v4l2_device*, i8*, ...) @v4l2_info(%struct.v4l2_device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @release_region(i32 %61, i32 1)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.gemtek*, %struct.gemtek** %3, align 8
  %68 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.gemtek*, %struct.gemtek** %3, align 8
  %70 = getelementptr inbounds %struct.gemtek, %struct.gemtek* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %2, align 4
  br label %84

72:                                               ; preds = %43
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @release_region(i32 %76, i32 1)
  br label %78

78:                                               ; preds = %72, %36
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %18

81:                                               ; preds = %18
  %82 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %83 = call i32 @v4l2_err(%struct.v4l2_device* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %51, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_device*, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @request_region(i32, i32, i8*) #2

declare dso_local i32 @v4l2_warn(%struct.v4l2_device*, i8*, i32) #2

declare dso_local i64 @gemtek_verify(%struct.gemtek*, i32) #2

declare dso_local i32 @release_region(i32, i32) #2

declare dso_local i32 @v4l2_err(%struct.v4l2_device*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7127_state = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"Standard: %s\0A\00", align 1
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"60 Hz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"50 Hz\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Input:    %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"color bars\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Output:   %s\0A\00", align 1
@output_strs = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"WSS:      %s\0A\00", align 1
@wss_strs = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"VPS:      %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"CC:       %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @saa7127_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.saa7127_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %4)
  store %struct.saa7127_state* %5, %struct.saa7127_state** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %8 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @V4L2_STD_525_60, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @v4l2_info(%struct.v4l2_subdev* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %17 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %18 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %23 = call i32 @v4l2_info(%struct.v4l2_subdev* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %25 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %26 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load i8**, i8*** @output_strs, align 8
  %31 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %32 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %1
  br label %37

37:                                               ; preds = %36, %29
  %38 = phi i8* [ %35, %29 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %36 ]
  %39 = call i32 @v4l2_info(%struct.v4l2_subdev* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %38)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %41 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %42 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load i8**, i8*** @wss_strs, align 8
  %47 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %48 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i8* [ %51, %45 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), %52 ]
  %55 = call i32 @v4l2_info(%struct.v4l2_subdev* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %57 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %58 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %63 = call i32 @v4l2_info(%struct.v4l2_subdev* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %62)
  %64 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %65 = load %struct.saa7127_state*, %struct.saa7127_state** %3, align 8
  %66 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %71 = call i32 @v4l2_info(%struct.v4l2_subdev* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %70)
  ret i32 0
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

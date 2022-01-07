; ModuleID = '/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_status.c_tracker_write_status_to_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/tracker/extr_tracker_status.c_tracker_write_status_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/data/%s\00", align 1
@g_fdfs_base_path = common dso_local global i8* null, align 8
@TRACKER_STATUS_FILENAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%s=%d\0A%s=%d\0A\00", align 1
@TRACKER_STATUS_ITEM_UP_TIME = common dso_local global i8* null, align 8
@g_up_time = common dso_local global i64 0, align 8
@TRACKER_STATUS_ITEM_LAST_CHECK_TIME = common dso_local global i8* null, align 8
@g_current_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tracker_write_status_to_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MAX_PATH_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = trunc i64 %8 to i32
  %12 = load i8*, i8** @g_fdfs_base_path, align 8
  %13 = load i8*, i8** @TRACKER_STATUS_FILENAME, align 8
  %14 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = load i8*, i8** @TRACKER_STATUS_ITEM_UP_TIME, align 8
  %17 = load i64, i64* @g_up_time, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i8*, i8** @TRACKER_STATUS_ITEM_LAST_CHECK_TIME, align 8
  %20 = load i64, i64* @g_current_time, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %18, i8* %19, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @writeToFile(i8* %10, i8* %23, i32 %24)
  %26 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %26)
  ret i32 %25
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i8*, i32) #2

declare dso_local i32 @writeToFile(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

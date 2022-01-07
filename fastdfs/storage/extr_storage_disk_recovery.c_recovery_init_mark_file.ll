; ModuleID = '/home/carl/AnghaBench/fastdfs/storage/extr_storage_disk_recovery.c_recovery_init_mark_file.c'
source_filename = "/home/carl/AnghaBench/fastdfs/storage/extr_storage_disk_recovery.c_recovery_init_mark_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s=%d\0A%s=0\0A%s=%d\0A\00", align 1
@MARK_ITEM_SAVED_STORAGE_STATUS = common dso_local global i8* null, align 8
@saved_storage_status = common dso_local global i32 0, align 4
@MARK_ITEM_BINLOG_OFFSET = common dso_local global i8* null, align 8
@MARK_ITEM_FETCH_BINLOG_DONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @recovery_init_mark_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recovery_init_mark_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MAX_PATH_SIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @recovery_get_mark_filename(i8* %13, i8* %12)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %16 = load i8*, i8** @MARK_ITEM_SAVED_STORAGE_STATUS, align 8
  %17 = load i32, i32* @saved_storage_status, align 4
  %18 = load i8*, i8** @MARK_ITEM_BINLOG_OFFSET, align 8
  %19 = load i8*, i8** @MARK_ITEM_FETCH_BINLOG_DONE, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %17, i8* %18, i8* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @writeToFile(i8* %12, i8* %22, i32 %23)
  %25 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %25)
  ret i32 %24
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recovery_get_mark_filename(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i8*, i8*, i32) #2

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

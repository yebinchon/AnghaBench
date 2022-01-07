; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_cdrom_read_tocentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_cdrom_read_tocentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sense = type { i32 }

@BLK_MAX_CDB = common dso_local global i32 0, align 4
@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@GPCMD_READ_TOC_PMA_ATIP = common dso_local global i8 0, align 1
@REQ_QUIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i8*, i32, %struct.request_sense*)* @cdrom_read_tocentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_tocentry(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.request_sense* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.request_sense*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.request_sense* %6, %struct.request_sense** %14, align 8
  %17 = load i32, i32* @BLK_MAX_CDB, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %15, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %16, align 8
  %21 = load i32, i32* @IDE_DBG_FUNC, align 4
  %22 = call i32 @ide_debug_log(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @BLK_MAX_CDB, align 4
  %24 = call i32 @memset(i8* %20, i32 0, i32 %23)
  %25 = load i8, i8* @GPCMD_READ_TOC_PMA_ATIP, align 1
  %26 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %25, i8* %26, align 16
  %27 = load i32, i32* %9, align 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, i8* %20, i64 6
  store i8 %28, i8* %29, align 2
  %30 = load i32, i32* %13, align 4
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, i8* %20, i64 7
  store i8 %32, i8* %33, align 1
  %34 = load i32, i32* %13, align 4
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, i8* %20, i64 8
  store i8 %36, i8* %37, align 8
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 6
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, i8* %20, i64 9
  store i8 %40, i8* %41, align 1
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %7
  %45 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 2, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %7
  %47 = load i32*, i32** %8, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.request_sense*, %struct.request_sense** %14, align 8
  %50 = load i32, i32* @REQ_QUIET, align 4
  %51 = call i32 @ide_cd_queue_pc(i32* %47, i8* %20, i32 0, i8* %48, i32* %13, %struct.request_sense* %49, i32 0, i32 %50)
  %52 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ide_debug_log(i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @ide_cd_queue_pc(i32*, i8*, i32, i8*, i32*, %struct.request_sense*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

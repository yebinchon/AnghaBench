; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/hypfs/extr_inode.c_hypfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.hypfs_sb_info* }
%struct.hypfs_sb_info = type { i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@hypfs_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s is not a valid mount option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.super_block*)* @hypfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypfs_parse_options(i8* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hypfs_sb_info*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %13 = load i32, i32* @MAX_OPT_ARGS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %67

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %65, %31, %20
  %22 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %26, align 8
  store %struct.hypfs_sb_info* %27, %struct.hypfs_sb_info** %12, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %21

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @hypfs_tokens, align 4
  %35 = call i32 @match_token(i8* %33, i32 %34, i32* %16)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %60 [
    i32 128, label %37
    i32 129, label %48
    i32 130, label %59
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds i32, i32* %16, i64 0
  %39 = call i32 @match_int(i32* %38, i32* %11)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %67

44:                                               ; preds = %37
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %12, align 8
  %47 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %65

48:                                               ; preds = %32
  %49 = getelementptr inbounds i32, i32* %16, i64 0
  %50 = call i32 @match_int(i32* %49, i32* %11)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %67

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.hypfs_sb_info*, %struct.hypfs_sb_info** %12, align 8
  %58 = getelementptr inbounds %struct.hypfs_sb_info, %struct.hypfs_sb_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %65

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %32, %59
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %67

65:                                               ; preds = %55, %44
  br label %21

66:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %60, %52, %41, %19
  %68 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

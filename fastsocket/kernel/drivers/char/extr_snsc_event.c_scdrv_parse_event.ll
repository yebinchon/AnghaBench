; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_parse_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_snsc_event.c_scdrv_parse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IR_ARG_INT = common dso_local global i32 0, align 4
@IR_ARG_ASCII = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*, i8*)* @scdrv_parse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scdrv_parse_event(i8* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @get_unaligned_be32(i8* %13)
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @get_unaligned_be32(i8* %18)
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  %25 = load i8, i8* %23, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %90

29:                                               ; preds = %5
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* @IR_ARG_INT, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %90

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @get_unaligned_be32(i8* %38)
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  %45 = load i8, i8* %43, align 1
  %46 = sext i8 %45 to i32
  %47 = load i32, i32* @IR_ARG_ASCII, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %90

50:                                               ; preds = %37
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @CHUNKSIZE, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %12, align 8
  br label %66

66:                                               ; preds = %86, %50
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ne i8* %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %12, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ true, %70 ], [ %79, %75 ]
  br label %82

82:                                               ; preds = %80, %66
  %83 = phi i1 [ false, %66 ], [ %81, %80 ]
  br i1 %83, label %84, label %89

84:                                               ; preds = %82
  %85 = load i8*, i8** %12, align 8
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %84
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %12, align 8
  br label %66

89:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %49, %36, %28
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @get_unaligned_be32(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

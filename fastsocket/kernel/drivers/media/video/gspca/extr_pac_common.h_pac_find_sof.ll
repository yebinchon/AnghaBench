; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac_common.h_pac_find_sof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac_common.h_pac_find_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"SOF found, bytes to analyze: %u. Frame starts at byte #%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i32)* @pac_find_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pac_find_sof(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %93, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %96

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %90 [
    i32 0, label %16
    i32 1, label %27
    i32 2, label %40
    i32 3, label %53
    i32 4, label %66
  ]

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 255
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %16
  br label %92

27:                                               ; preds = %13
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 255
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  store i32 2, i32* %36, align 4
  br label %39

37:                                               ; preds = %27
  %38 = load i32*, i32** %5, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %92

40:                                               ; preds = %13
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %50 [
    i32 0, label %47
    i32 255, label %49
  ]

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  store i32 3, i32* %48, align 4
  br label %52

49:                                               ; preds = %40
  br label %52

50:                                               ; preds = %40
  %51 = load i32*, i32** %5, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %49, %47
  br label %92

53:                                               ; preds = %13
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 255
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32*, i32** %5, align 8
  store i32 4, i32* %62, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32*, i32** %5, align 8
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %61
  br label %92

66:                                               ; preds = %13
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  switch i32 %72, label %87 [
    i32 150, label %73
    i32 255, label %85
  ]

73:                                               ; preds = %66
  %74 = load i32, i32* @D_FRAM, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 @PDEBUG(i32 %74, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %77)
  %79 = load i32*, i32** %5, align 8
  store i32 0, i32* %79, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %4, align 8
  br label %97

85:                                               ; preds = %66
  %86 = load i32*, i32** %5, align 8
  store i32 2, i32* %86, align 4
  br label %89

87:                                               ; preds = %66
  %88 = load i32*, i32** %5, align 8
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %85
  br label %92

90:                                               ; preds = %13
  %91 = load i32*, i32** %5, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %89, %65, %52, %39, %26
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %9

96:                                               ; preds = %9
  store i8* null, i8** %4, align 8
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

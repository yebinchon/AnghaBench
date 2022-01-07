; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_querymenu = type { i32, i32, i64, i32 }
%struct.v4l2_ctrl = type { i8**, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_querymenu(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.v4l2_ctrl*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %8 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %12 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler* %11, i32 %14)
  store %struct.v4l2_ctrl* %15, %struct.v4l2_ctrl** %6, align 8
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %17 = icmp ne %struct.v4l2_ctrl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %90

21:                                               ; preds = %2
  %22 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp eq i8** %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %28, %21
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %90

43:                                               ; preds = %34
  %44 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %45 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 1, %47
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %90

54:                                               ; preds = %43
  %55 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %54
  %64 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %63, %54
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %90

78:                                               ; preds = %63
  %79 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strlcpy(i32 %81, i8* %88, i32 4)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %78, %75, %51, %40, %18
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

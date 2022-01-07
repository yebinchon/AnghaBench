; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_query_menu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_query_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_querymenu = type { i32, i32, i32, i64 }
%struct.v4l2_queryctrl = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_ctrl_query_menu(%struct.v4l2_querymenu* %0, %struct.v4l2_queryctrl* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.v4l2_queryctrl*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_querymenu* %0, %struct.v4l2_querymenu** %5, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load i8**, i8*** %7, align 8
  %12 = icmp eq i8** %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i8** @v4l2_ctrl_get_menu(i32 %16)
  store i8** %17, i8*** %7, align 8
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i8**, i8*** %7, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %23 = icmp ne %struct.v4l2_queryctrl* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32, %24, %18
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %95

43:                                               ; preds = %32, %21
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br label %57

57:                                               ; preds = %50, %44
  %58 = phi i1 [ false, %44 ], [ %56, %50 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %44

63:                                               ; preds = %57
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %63
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70, %63
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %95

83:                                               ; preds = %70
  %84 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %85 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i8**, i8*** %7, align 8
  %88 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %87, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @strlcpy(i32 %86, i8* %93, i32 4)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %83, %80, %40
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_query_menu_valid_items.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_query_menu_valid_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_querymenu = type { i64, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_MENU_IDS_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_ctrl_query_menu_valid_items(%struct.v4l2_querymenu* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_querymenu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  store %struct.v4l2_querymenu* %0, %struct.v4l2_querymenu** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %8 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i8** @v4l2_ctrl_get_menu(i32 %9)
  store i8** %10, i8*** %6, align 8
  %11 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp eq i8** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64*, i64** %5, align 8
  %17 = icmp eq i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %46, %21
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_CTRL_MENU_IDS_END, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %5, align 8
  %30 = load i64, i64* %28, align 8
  %31 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i8**, i8*** %6, align 8
  %40 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %4, align 8
  %41 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strlcpy(i32 %38, i8* %44, i32 4)
  store i32 0, i32* %3, align 4
  br label %50

46:                                               ; preds = %27
  br label %22

47:                                               ; preds = %22
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %35, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

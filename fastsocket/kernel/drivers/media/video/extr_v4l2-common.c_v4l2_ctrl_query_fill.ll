; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_query_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_query_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i32, i64*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.v4l2_queryctrl* %0, %struct.v4l2_queryctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %16, i32 0, i32 7
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %18, i32 0, i32 6
  %20 = call i32 @v4l2_ctrl_fill(i32 %15, i8** %12, i32* %17, i8** %8, i8** %9, i8** %10, i8** %11, i32* %19)
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @strlcpy(i32 %49, i8* %50, i32 4)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %26, %23
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

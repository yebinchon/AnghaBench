; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stk014.c_sd_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_stk014.c_sd_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_querymenu = type { i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"50 Hz\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"60 Hz\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_querymenu*)* @sd_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_querymenu(%struct.gspca_dev* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %6 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %26 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %25 [
    i32 1, label %13
    i32 2, label %19
  ]

13:                                               ; preds = %9
  %14 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @strcpy(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

19:                                               ; preds = %9
  %20 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @strcpy(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %2, %25
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %19, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

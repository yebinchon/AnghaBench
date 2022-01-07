; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_sd_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.v4l2_querymenu = type { i32, i64, i32 }
%struct.sd = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"NoFliker\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"50 Hz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"60 Hz\00", align 1
@SEN_OV7670 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.v4l2_querymenu*)* @sd_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_querymenu(%struct.gspca_dev* %0, %struct.v4l2_querymenu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.v4l2_querymenu*, align 8
  %6 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.v4l2_querymenu* %1, %struct.v4l2_querymenu** %5, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %6, align 8
  %9 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %50 [
    i32 128, label %12
  ]

12:                                               ; preds = %2
  %13 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %49 [
    i32 0, label %16
    i32 1, label %22
    i32 2, label %28
    i32 3, label %34
  ]

16:                                               ; preds = %12
  %17 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

22:                                               ; preds = %12
  %23 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @strcpy(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

28:                                               ; preds = %12
  %29 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @strcpy(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

34:                                               ; preds = %12
  %35 = load %struct.sd*, %struct.sd** %6, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SEN_OV7670, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %34
  %44 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 @strcpy(i8* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %12
  br label %50

50:                                               ; preds = %2, %49
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %43, %40, %28, %22, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-xc2028.c_parse_audio_std_option.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-xc2028.c_parse_audio_std_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@audio_std = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@V4L2_STD_A2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"A2/A\00", align 1
@V4L2_STD_A2_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"A2/B\00", align 1
@V4L2_STD_A2_B = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"NICAM\00", align 1
@V4L2_STD_NICAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"NICAM/A\00", align 1
@V4L2_STD_NICAM_A = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"NICAM/B\00", align 1
@V4L2_STD_NICAM_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_audio_std_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio_std_option() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @audio_std, align 4
  %3 = call i64 @strcasecmp(i32 %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @V4L2_STD_A2, align 4
  store i32 %6, i32* %1, align 4
  br label %38

7:                                                ; preds = %0
  %8 = load i32, i32* @audio_std, align 4
  %9 = call i64 @strcasecmp(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @V4L2_STD_A2_A, align 4
  store i32 %12, i32* %1, align 4
  br label %38

13:                                               ; preds = %7
  %14 = load i32, i32* @audio_std, align 4
  %15 = call i64 @strcasecmp(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @V4L2_STD_A2_B, align 4
  store i32 %18, i32* %1, align 4
  br label %38

19:                                               ; preds = %13
  %20 = load i32, i32* @audio_std, align 4
  %21 = call i64 @strcasecmp(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @V4L2_STD_NICAM, align 4
  store i32 %24, i32* %1, align 4
  br label %38

25:                                               ; preds = %19
  %26 = load i32, i32* @audio_std, align 4
  %27 = call i64 @strcasecmp(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @V4L2_STD_NICAM_A, align 4
  store i32 %30, i32* %1, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i32, i32* @audio_std, align 4
  %33 = call i64 @strcasecmp(i32 %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @V4L2_STD_NICAM_B, align 4
  store i32 %36, i32* %1, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %35, %29, %23, %17, %11, %5
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-driver.c_ivtv_parse_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-driver.c_ivtv_parse_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@pal = common dso_local global i32* null, align 8
@tunertype = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_H = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pal= argument not recognised\0A\00", align 1
@secam = common dso_local global i32* null, align 8
@V4L2_STD_SECAM_B = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_G = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_H = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"secam= argument not recognised\0A\00", align 1
@ntsc = common dso_local global i32* null, align 8
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ntsc= argument not recognised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtv_parse_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_parse_std(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %4 = load i32*, i32** @pal, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %34 [
    i32 54, label %7
    i32 98, label %9
    i32 66, label %9
    i32 103, label %9
    i32 71, label %9
    i32 104, label %9
    i32 72, label %9
    i32 110, label %13
    i32 78, label %13
    i32 105, label %27
    i32 73, label %27
    i32 100, label %29
    i32 68, label %29
    i32 107, label %29
    i32 75, label %29
    i32 77, label %31
    i32 109, label %31
    i32 45, label %33
  ]

7:                                                ; preds = %1
  store i32 0, i32* @tunertype, align 4
  %8 = load i32, i32* @V4L2_STD_PAL_60, align 4
  store i32 %8, i32* %2, align 4
  br label %79

9:                                                ; preds = %1, %1, %1, %1, %1, %1
  store i32 0, i32* @tunertype, align 4
  %10 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %11 = load i32, i32* @V4L2_STD_PAL_H, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1, %1
  store i32 1, i32* @tunertype, align 4
  %14 = load i32*, i32** @pal, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 99
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32*, i32** @pal, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 67
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %13
  %24 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %18
  %26 = load i32, i32* @V4L2_STD_PAL_N, align 4
  store i32 %26, i32* %2, align 4
  br label %79

27:                                               ; preds = %1, %1
  store i32 0, i32* @tunertype, align 4
  %28 = load i32, i32* @V4L2_STD_PAL_I, align 4
  store i32 %28, i32* %2, align 4
  br label %79

29:                                               ; preds = %1, %1, %1, %1
  store i32 0, i32* @tunertype, align 4
  %30 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %1, %1
  store i32 1, i32* @tunertype, align 4
  %32 = load i32, i32* @V4L2_STD_PAL_M, align 4
  store i32 %32, i32* %2, align 4
  br label %79

33:                                               ; preds = %1
  br label %36

34:                                               ; preds = %1
  %35 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

36:                                               ; preds = %33
  %37 = load i32*, i32** @secam, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %63 [
    i32 98, label %40
    i32 66, label %40
    i32 103, label %40
    i32 71, label %40
    i32 104, label %40
    i32 72, label %40
    i32 100, label %46
    i32 68, label %46
    i32 107, label %46
    i32 75, label %46
    i32 108, label %48
    i32 76, label %48
    i32 45, label %62
  ]

40:                                               ; preds = %36, %36, %36, %36, %36, %36
  store i32 0, i32* @tunertype, align 4
  %41 = load i32, i32* @V4L2_STD_SECAM_B, align 4
  %42 = load i32, i32* @V4L2_STD_SECAM_G, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @V4L2_STD_SECAM_H, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %36, %36, %36, %36
  store i32 0, i32* @tunertype, align 4
  %47 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  store i32 %47, i32* %2, align 4
  br label %79

48:                                               ; preds = %36, %36
  store i32 0, i32* @tunertype, align 4
  %49 = load i32*, i32** @secam, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 67
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32*, i32** @secam, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 99
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  store i32 %59, i32* %2, align 4
  br label %79

60:                                               ; preds = %53
  %61 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  store i32 %61, i32* %2, align 4
  br label %79

62:                                               ; preds = %36
  br label %65

63:                                               ; preds = %36
  %64 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

65:                                               ; preds = %62
  %66 = load i32*, i32** @ntsc, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %76 [
    i32 109, label %69
    i32 77, label %69
    i32 106, label %71
    i32 74, label %71
    i32 107, label %73
    i32 75, label %73
    i32 45, label %75
  ]

69:                                               ; preds = %65, %65
  store i32 1, i32* @tunertype, align 4
  %70 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  store i32 %70, i32* %2, align 4
  br label %79

71:                                               ; preds = %65, %65
  store i32 1, i32* @tunertype, align 4
  %72 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  store i32 %72, i32* %2, align 4
  br label %79

73:                                               ; preds = %65, %65
  store i32 1, i32* @tunertype, align 4
  %74 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  store i32 %74, i32* %2, align 4
  br label %79

75:                                               ; preds = %65
  br label %78

76:                                               ; preds = %65
  %77 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %79

78:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %76, %73, %71, %69, %63, %60, %58, %46, %40, %34, %31, %29, %27, %25, %23, %9, %7
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @IVTV_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_fixup_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_fixup_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner = type { i32 }

@V4L2_STD_PAL = common dso_local global i32 0, align 4
@pal = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"insmod fixup: PAL => PAL-60\0A\00", align 1
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"insmod fixup: PAL => PAL-BG\0A\00", align 1
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"insmod fixup: PAL => PAL-I\0A\00", align 1
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"insmod fixup: PAL => PAL-DK\0A\00", align 1
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"insmod fixup: PAL => PAL-M\0A\00", align 1
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"insmod fixup: PAL => PAL-Nc\0A\00", align 1
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"insmod fixup: PAL => PAL-N\0A\00", align 1
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"pal= argument not recognised\0A\00", align 1
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@secam = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"insmod fixup: SECAM => SECAM-BGH\0A\00", align 1
@V4L2_STD_SECAM_B = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_G = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_H = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"insmod fixup: SECAM => SECAM-DK\0A\00", align 1
@V4L2_STD_SECAM_DK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"insmod fixup: SECAM => SECAM-L'\0A\00", align 1
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"insmod fixup: SECAM => SECAM-L\0A\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"secam= argument not recognised\0A\00", align 1
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@ntsc = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"insmod fixup: NTSC => NTSC-M\0A\00", align 1
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [33 x i8] c"insmod fixup: NTSC => NTSC_M_JP\0A\00", align 1
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"insmod fixup: NTSC => NTSC_M_KR\0A\00", align 1
@V4L2_STD_NTSC_M_KR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"ntsc= argument not recognised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuner*)* @tuner_fixup_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_fixup_std(%struct.tuner* %0) #0 {
  %2 = alloca %struct.tuner*, align 8
  store %struct.tuner* %0, %struct.tuner** %2, align 8
  %3 = load %struct.tuner*, %struct.tuner** %2, align 8
  %4 = getelementptr inbounds %struct.tuner, %struct.tuner* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @V4L2_STD_PAL, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @V4L2_STD_PAL, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %1
  %11 = load i32*, i32** @pal, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %61 [
    i32 54, label %14
    i32 98, label %19
    i32 66, label %19
    i32 103, label %19
    i32 71, label %19
    i32 105, label %24
    i32 73, label %24
    i32 100, label %29
    i32 68, label %29
    i32 107, label %29
    i32 75, label %29
    i32 77, label %34
    i32 109, label %34
    i32 78, label %39
    i32 110, label %39
    i32 45, label %60
  ]

14:                                               ; preds = %10
  %15 = call i32 @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %17 = load %struct.tuner*, %struct.tuner** %2, align 8
  %18 = getelementptr inbounds %struct.tuner, %struct.tuner* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %63

19:                                               ; preds = %10, %10, %10, %10
  %20 = call i32 @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %22 = load %struct.tuner*, %struct.tuner** %2, align 8
  %23 = getelementptr inbounds %struct.tuner, %struct.tuner* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %63

24:                                               ; preds = %10, %10
  %25 = call i32 @tuner_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %27 = load %struct.tuner*, %struct.tuner** %2, align 8
  %28 = getelementptr inbounds %struct.tuner, %struct.tuner* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %63

29:                                               ; preds = %10, %10, %10, %10
  %30 = call i32 @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %32 = load %struct.tuner*, %struct.tuner** %2, align 8
  %33 = getelementptr inbounds %struct.tuner, %struct.tuner* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %63

34:                                               ; preds = %10, %10
  %35 = call i32 @tuner_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %37 = load %struct.tuner*, %struct.tuner** %2, align 8
  %38 = getelementptr inbounds %struct.tuner, %struct.tuner* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %63

39:                                               ; preds = %10, %10
  %40 = load i32*, i32** @pal, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 99
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** @pal, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 67
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %39
  %50 = call i32 @tuner_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %51 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %52 = load %struct.tuner*, %struct.tuner** %2, align 8
  %53 = getelementptr inbounds %struct.tuner, %struct.tuner* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %59

54:                                               ; preds = %44
  %55 = call i32 @tuner_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %56 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %57 = load %struct.tuner*, %struct.tuner** %2, align 8
  %58 = getelementptr inbounds %struct.tuner, %struct.tuner* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %49
  br label %63

60:                                               ; preds = %10
  br label %63

61:                                               ; preds = %10
  %62 = call i32 @tuner_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60, %59, %34, %29, %24, %19, %14
  br label %64

64:                                               ; preds = %63, %1
  %65 = load %struct.tuner*, %struct.tuner** %2, align 8
  %66 = getelementptr inbounds %struct.tuner, %struct.tuner* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @V4L2_STD_SECAM, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @V4L2_STD_SECAM, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %64
  %73 = load i32*, i32** @secam, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %112 [
    i32 98, label %76
    i32 66, label %76
    i32 103, label %76
    i32 71, label %76
    i32 104, label %76
    i32 72, label %76
    i32 100, label %85
    i32 68, label %85
    i32 107, label %85
    i32 75, label %85
    i32 108, label %90
    i32 76, label %90
    i32 45, label %111
  ]

76:                                               ; preds = %72, %72, %72, %72, %72, %72
  %77 = call i32 @tuner_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %78 = load i32, i32* @V4L2_STD_SECAM_B, align 4
  %79 = load i32, i32* @V4L2_STD_SECAM_G, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @V4L2_STD_SECAM_H, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.tuner*, %struct.tuner** %2, align 8
  %84 = getelementptr inbounds %struct.tuner, %struct.tuner* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %114

85:                                               ; preds = %72, %72, %72, %72
  %86 = call i32 @tuner_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %87 = load i32, i32* @V4L2_STD_SECAM_DK, align 4
  %88 = load %struct.tuner*, %struct.tuner** %2, align 8
  %89 = getelementptr inbounds %struct.tuner, %struct.tuner* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %114

90:                                               ; preds = %72, %72
  %91 = load i32*, i32** @secam, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 67
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i32*, i32** @secam, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 99
  br i1 %99, label %100, label %105

100:                                              ; preds = %95, %90
  %101 = call i32 @tuner_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %102 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %103 = load %struct.tuner*, %struct.tuner** %2, align 8
  %104 = getelementptr inbounds %struct.tuner, %struct.tuner* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  br label %110

105:                                              ; preds = %95
  %106 = call i32 @tuner_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %107 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %108 = load %struct.tuner*, %struct.tuner** %2, align 8
  %109 = getelementptr inbounds %struct.tuner, %struct.tuner* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %114

111:                                              ; preds = %72
  br label %114

112:                                              ; preds = %72
  %113 = call i32 @tuner_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %111, %110, %85, %76
  br label %115

115:                                              ; preds = %114, %64
  %116 = load %struct.tuner*, %struct.tuner** %2, align 8
  %117 = getelementptr inbounds %struct.tuner, %struct.tuner* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @V4L2_STD_NTSC, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @V4L2_STD_NTSC, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %115
  %124 = load i32*, i32** @ntsc, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  switch i32 %126, label %143 [
    i32 109, label %127
    i32 77, label %127
    i32 106, label %132
    i32 74, label %132
    i32 107, label %137
    i32 75, label %137
    i32 45, label %142
  ]

127:                                              ; preds = %123, %123
  %128 = call i32 @tuner_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %129 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %130 = load %struct.tuner*, %struct.tuner** %2, align 8
  %131 = getelementptr inbounds %struct.tuner, %struct.tuner* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  br label %145

132:                                              ; preds = %123, %123
  %133 = call i32 @tuner_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %134 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %135 = load %struct.tuner*, %struct.tuner** %2, align 8
  %136 = getelementptr inbounds %struct.tuner, %struct.tuner* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %145

137:                                              ; preds = %123, %123
  %138 = call i32 @tuner_dbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %139 = load i32, i32* @V4L2_STD_NTSC_M_KR, align 4
  %140 = load %struct.tuner*, %struct.tuner** %2, align 8
  %141 = getelementptr inbounds %struct.tuner, %struct.tuner* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  br label %145

142:                                              ; preds = %123
  br label %145

143:                                              ; preds = %123
  %144 = call i32 @tuner_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %142, %137, %132, %127
  br label %146

146:                                              ; preds = %145, %115
  ret i32 0
}

declare dso_local i32 @tuner_dbg(i8*) #1

declare dso_local i32 @tuner_warn(i8*) #1

declare dso_local i32 @tuner_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

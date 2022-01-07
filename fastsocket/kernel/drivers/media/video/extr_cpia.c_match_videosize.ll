; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_match_videosize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_match_videosize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOSIZE_352_288 = common dso_local global i32 0, align 4
@VIDEOSIZE_320_240 = common dso_local global i32 0, align 4
@VIDEOSIZE_288_216 = common dso_local global i32 0, align 4
@VIDEOSIZE_256_192 = common dso_local global i32 0, align 4
@VIDEOSIZE_224_168 = common dso_local global i32 0, align 4
@VIDEOSIZE_192_144 = common dso_local global i32 0, align 4
@VIDEOSIZE_176_144 = common dso_local global i32 0, align 4
@VIDEOSIZE_160_120 = common dso_local global i32 0, align 4
@VIDEOSIZE_128_96 = common dso_local global i32 0, align 4
@VIDEOSIZE_88_72 = common dso_local global i32 0, align 4
@VIDEOSIZE_64_48 = common dso_local global i32 0, align 4
@VIDEOSIZE_48_48 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @match_videosize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_videosize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sge i32 %6, 352
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 288
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @VIDEOSIZE_352_288, align 4
  store i32 %12, i32* %3, align 4
  br label %102

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 320
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 240
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @VIDEOSIZE_320_240, align 4
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 288
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sge i32 %25, 216
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @VIDEOSIZE_288_216, align 4
  store i32 %28, i32* %3, align 4
  br label %102

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 256
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 192
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @VIDEOSIZE_256_192, align 4
  store i32 %36, i32* %3, align 4
  br label %102

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 224
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4
  %42 = icmp sge i32 %41, 168
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @VIDEOSIZE_224_168, align 4
  store i32 %44, i32* %3, align 4
  br label %102

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 192
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp sge i32 %49, 144
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @VIDEOSIZE_192_144, align 4
  store i32 %52, i32* %3, align 4
  br label %102

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %4, align 4
  %55 = icmp sge i32 %54, 176
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = icmp sge i32 %57, 144
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @VIDEOSIZE_176_144, align 4
  store i32 %60, i32* %3, align 4
  br label %102

61:                                               ; preds = %56, %53
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 160
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 120
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @VIDEOSIZE_160_120, align 4
  store i32 %68, i32* %3, align 4
  br label %102

69:                                               ; preds = %64, %61
  %70 = load i32, i32* %4, align 4
  %71 = icmp sge i32 %70, 128
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 96
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @VIDEOSIZE_128_96, align 4
  store i32 %76, i32* %3, align 4
  br label %102

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %4, align 4
  %79 = icmp sge i32 %78, 88
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp sge i32 %81, 72
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @VIDEOSIZE_88_72, align 4
  store i32 %84, i32* %3, align 4
  br label %102

85:                                               ; preds = %80, %77
  %86 = load i32, i32* %4, align 4
  %87 = icmp sge i32 %86, 64
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp sge i32 %89, 48
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* @VIDEOSIZE_64_48, align 4
  store i32 %92, i32* %3, align 4
  br label %102

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %4, align 4
  %95 = icmp sge i32 %94, 48
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* @VIDEOSIZE_48_48, align 4
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %96, %93
  store i32 -1, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %99, %91, %83, %75, %67, %59, %51, %43, %35, %27, %19, %11
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_outfmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_set_outfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EM28XX_R27_OUTFMT = common dso_local global i32 0, align 4
@EM28XX_R10_VINMODE = common dso_local global i32 0, align 4
@EM28XX_VINCTRL_VBI_RAW = common dso_local global i32 0, align 4
@EM28XX_R34_VBI_START_H = common dso_local global i32 0, align 4
@EM28XX_R36_VBI_WIDTH = common dso_local global i32 0, align 4
@EM28XX_R37_VBI_HEIGHT = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@EM28XX_R35_VBI_START_V = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@EM28XX_R11_VINCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_set_outfmt(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %7 = load i32, i32* @EM28XX_R27_OUTFMT, align 4
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, 32
  %14 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %6, i32 %7, i32 %13, i32 255)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %21 = load i32, i32* @EM28XX_R10_VINMODE, align 4
  %22 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %23 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @em28xx_write_reg(%struct.em28xx* %20, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %85

30:                                               ; preds = %19
  %31 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %32 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %35 = call i32 @em28xx_vbi_supported(%struct.em28xx* %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %80

37:                                               ; preds = %30
  %38 = load i32, i32* @EM28XX_VINCTRL_VBI_RAW, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %42 = load i32, i32* @EM28XX_R34_VBI_START_H, align 4
  %43 = call i32 @em28xx_write_reg(%struct.em28xx* %41, i32 %42, i32 0)
  %44 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %45 = load i32, i32* @EM28XX_R36_VBI_WIDTH, align 4
  %46 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %47 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 4
  %50 = call i32 @em28xx_write_reg(%struct.em28xx* %44, i32 %45, i32 %49)
  %51 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %52 = load i32, i32* @EM28XX_R37_VBI_HEIGHT, align 4
  %53 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %54 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @em28xx_write_reg(%struct.em28xx* %51, i32 %52, i32 %55)
  %57 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %58 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @V4L2_STD_525_60, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %37
  %64 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %65 = load i32, i32* @EM28XX_R35_VBI_START_V, align 4
  %66 = call i32 @em28xx_write_reg(%struct.em28xx* %64, i32 %65, i32 9)
  br label %79

67:                                               ; preds = %37
  %68 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %69 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @V4L2_STD_625_50, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %76 = load i32, i32* @EM28XX_R35_VBI_START_V, align 4
  %77 = call i32 @em28xx_write_reg(%struct.em28xx* %75, i32 %76, i32 7)
  br label %78

78:                                               ; preds = %74, %67
  br label %79

79:                                               ; preds = %78, %63
  br label %80

80:                                               ; preds = %79, %30
  %81 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %82 = load i32, i32* @EM28XX_R11_VINCTRL, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @em28xx_write_reg(%struct.em28xx* %81, i32 %82, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %28, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

declare dso_local i32 @em28xx_write_reg(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @em28xx_vbi_supported(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

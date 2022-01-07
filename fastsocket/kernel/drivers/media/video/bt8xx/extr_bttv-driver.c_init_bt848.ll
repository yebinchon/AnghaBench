; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_init_bt848.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_init_bt848.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.bttv = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@bttv_tvcards = common dso_local global %struct.TYPE_4__* null, align 8
@BT848_CAP_CTL = common dso_local global i32 0, align 4
@BT848_COLOR_CTL_GAMMA = common dso_local global i32 0, align 4
@BT848_COLOR_CTL = common dso_local global i32 0, align 4
@BT848_IFORM_XTAUTO = common dso_local global i32 0, align 4
@BT848_IFORM_AUTO = common dso_local global i32 0, align 4
@BT848_IFORM = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_PKTP_32 = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_PLTP1_16 = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_PLTP23_16 = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_GPINTC = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL_GPINTI = common dso_local global i32 0, align 4
@BT848_GPIO_DMA_CTL = common dso_local global i32 0, align 4
@BT848_SCLOOP_CAGC = common dso_local global i32 0, align 4
@BT848_E_SCLOOP = common dso_local global i32 0, align 4
@BT848_O_SCLOOP = common dso_local global i32 0, align 4
@BT848_E_VSCALE_HI = common dso_local global i32 0, align 4
@BT848_O_VSCALE_HI = common dso_local global i32 0, align 4
@BT848_ADC_RESERVED = common dso_local global i32 0, align 4
@BT848_ADC_CRUSH = common dso_local global i32 0, align 4
@BT848_ADC = common dso_local global i32 0, align 4
@whitecrush_upper = common dso_local global i32 0, align 4
@BT848_WC_UP = common dso_local global i32 0, align 4
@whitecrush_lower = common dso_local global i32 0, align 4
@BT848_WC_DOWN = common dso_local global i32 0, align 4
@BT848_E_CONTROL = common dso_local global i32 0, align 4
@BT848_O_CONTROL = common dso_local global i32 0, align 4
@BT848_CONTROL_LDEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @init_bt848 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bt848(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bttv_tvcards, align 8
  %5 = load %struct.bttv*, %struct.bttv** %2, align 8
  %6 = getelementptr inbounds %struct.bttv, %struct.bttv* %5, i32 0, i32 7
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.bttv*, %struct.bttv** %2, align 8
  %15 = call i32 @init_irqreg(%struct.bttv* %14)
  br label %115

16:                                               ; preds = %1
  %17 = load i32, i32* @BT848_CAP_CTL, align 4
  %18 = call i32 @btwrite(i32 0, i32 %17)
  %19 = load i32, i32* @BT848_COLOR_CTL_GAMMA, align 4
  %20 = load i32, i32* @BT848_COLOR_CTL, align 4
  %21 = call i32 @btwrite(i32 %19, i32 %20)
  %22 = load i32, i32* @BT848_IFORM_XTAUTO, align 4
  %23 = load i32, i32* @BT848_IFORM_AUTO, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BT848_IFORM, align 4
  %26 = call i32 @btwrite(i32 %24, i32 %25)
  %27 = load i32, i32* @BT848_GPIO_DMA_CTL_PKTP_32, align 4
  %28 = load i32, i32* @BT848_GPIO_DMA_CTL_PLTP1_16, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BT848_GPIO_DMA_CTL_PLTP23_16, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BT848_GPIO_DMA_CTL_GPINTC, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BT848_GPIO_DMA_CTL_GPINTI, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BT848_GPIO_DMA_CTL, align 4
  %37 = call i32 @btwrite(i32 %35, i32 %36)
  %38 = load %struct.bttv*, %struct.bttv** %2, align 8
  %39 = getelementptr inbounds %struct.bttv, %struct.bttv* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %16
  %43 = load i32, i32* @BT848_SCLOOP_CAGC, align 4
  br label %45

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @BT848_E_SCLOOP, align 4
  %49 = call i32 @btwrite(i32 %47, i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @BT848_O_SCLOOP, align 4
  %52 = call i32 @btwrite(i32 %50, i32 %51)
  %53 = load i32, i32* @BT848_E_VSCALE_HI, align 4
  %54 = call i32 @btwrite(i32 32, i32 %53)
  %55 = load i32, i32* @BT848_O_VSCALE_HI, align 4
  %56 = call i32 @btwrite(i32 32, i32 %55)
  %57 = load i32, i32* @BT848_ADC_RESERVED, align 4
  %58 = load %struct.bttv*, %struct.bttv** %2, align 8
  %59 = getelementptr inbounds %struct.bttv, %struct.bttv* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* @BT848_ADC_CRUSH, align 4
  br label %65

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = or i32 %57, %66
  %68 = load i32, i32* @BT848_ADC, align 4
  %69 = call i32 @btwrite(i32 %67, i32 %68)
  %70 = load i32, i32* @whitecrush_upper, align 4
  %71 = load i32, i32* @BT848_WC_UP, align 4
  %72 = call i32 @btwrite(i32 %70, i32 %71)
  %73 = load i32, i32* @whitecrush_lower, align 4
  %74 = load i32, i32* @BT848_WC_DOWN, align 4
  %75 = call i32 @btwrite(i32 %73, i32 %74)
  %76 = load %struct.bttv*, %struct.bttv** %2, align 8
  %77 = getelementptr inbounds %struct.bttv, %struct.bttv* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load i32, i32* @BT848_E_CONTROL, align 4
  %82 = call i32 @btwrite(i32 0, i32 %81)
  %83 = load i32, i32* @BT848_O_CONTROL, align 4
  %84 = call i32 @btwrite(i32 0, i32 %83)
  br label %92

85:                                               ; preds = %65
  %86 = load i32, i32* @BT848_CONTROL_LDEC, align 4
  %87 = load i32, i32* @BT848_E_CONTROL, align 4
  %88 = call i32 @btwrite(i32 %86, i32 %87)
  %89 = load i32, i32* @BT848_CONTROL_LDEC, align 4
  %90 = load i32, i32* @BT848_O_CONTROL, align 4
  %91 = call i32 @btwrite(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %80
  %93 = load %struct.bttv*, %struct.bttv** %2, align 8
  %94 = load %struct.bttv*, %struct.bttv** %2, align 8
  %95 = getelementptr inbounds %struct.bttv, %struct.bttv* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bt848_bright(%struct.bttv* %93, i32 %96)
  %98 = load %struct.bttv*, %struct.bttv** %2, align 8
  %99 = load %struct.bttv*, %struct.bttv** %2, align 8
  %100 = getelementptr inbounds %struct.bttv, %struct.bttv* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bt848_hue(%struct.bttv* %98, i32 %101)
  %103 = load %struct.bttv*, %struct.bttv** %2, align 8
  %104 = load %struct.bttv*, %struct.bttv** %2, align 8
  %105 = getelementptr inbounds %struct.bttv, %struct.bttv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bt848_contrast(%struct.bttv* %103, i32 %106)
  %108 = load %struct.bttv*, %struct.bttv** %2, align 8
  %109 = load %struct.bttv*, %struct.bttv** %2, align 8
  %110 = getelementptr inbounds %struct.bttv, %struct.bttv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @bt848_sat(%struct.bttv* %108, i32 %111)
  %113 = load %struct.bttv*, %struct.bttv** %2, align 8
  %114 = call i32 @init_irqreg(%struct.bttv* %113)
  br label %115

115:                                              ; preds = %92, %13
  ret void
}

declare dso_local i32 @init_irqreg(%struct.bttv*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bt848_bright(%struct.bttv*, i32) #1

declare dso_local i32 @bt848_hue(%struct.bttv*, i32) #1

declare dso_local i32 @bt848_contrast(%struct.bttv*, i32) #1

declare dso_local i32 @bt848_sat(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

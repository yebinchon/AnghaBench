; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_find_syncrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_find_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }

@MSG_EXT_PPR_DT_REQ = common dso_local global i64 0, align 8
@AHD_SYNCRATE_MIN_DT = common dso_local global i64 0, align 8
@AHD_SYNCRATE_MIN = common dso_local global i64 0, align 8
@AHD_SYNCRATE_PACED = common dso_local global i64 0, align 8
@MSG_EXT_PPR_RTI = common dso_local global i64 0, align 8
@MSG_EXT_PPR_IU_REQ = common dso_local global i64 0, align 8
@MSG_EXT_PPR_QAS_REQ = common dso_local global i64 0, align 8
@AHD_SYNCRATE_DT = common dso_local global i64 0, align 8
@AHD_SYNCRATE_ULTRA2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_find_syncrate(%struct.ahd_softc* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = load i64*, i64** %6, align 8
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AHD_SYNCRATE_MIN_DT, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %29 = xor i64 %28, -1
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, %29
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %27, %22, %16
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AHD_SYNCRATE_MIN, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64*, i64** %6, align 8
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i64*, i64** %6, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AHD_SYNCRATE_PACED, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i64, i64* @MSG_EXT_PPR_RTI, align 8
  %47 = xor i64 %46, -1
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load i64*, i64** %7, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MSG_EXT_PPR_IU_REQ, align 8
  %55 = and i64 %53, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %59 = load i64, i64* @MSG_EXT_PPR_QAS_REQ, align 8
  %60 = or i64 %58, %59
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %62, %60
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %57, %51
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %68 = and i64 %66, %67
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i64, i64* @MSG_EXT_PPR_QAS_REQ, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = and i64 %73, %71
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MSG_EXT_PPR_IU_REQ, align 8
  %79 = and i64 %77, %78
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @AHD_SYNCRATE_DT, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* @AHD_SYNCRATE_DT, align 8
  %88 = load i64*, i64** %6, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %81, %75
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %93 = and i64 %91, %92
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load i64*, i64** %6, align 8
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AHD_SYNCRATE_ULTRA2, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i64, i64* @AHD_SYNCRATE_ULTRA2, align 8
  %102 = load i64*, i64** %6, align 8
  store i64 %101, i64* %102, align 8
  br label %103

103:                                              ; preds = %100, %95, %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

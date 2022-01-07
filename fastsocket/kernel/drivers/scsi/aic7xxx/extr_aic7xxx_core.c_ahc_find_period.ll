; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_find_period.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_find_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_syncrate = type { i64, i64, i64, i32* }
%struct.ahc_softc = type { i32 }

@AHC_ULTRA2 = common dso_local global i32 0, align 4
@SXFR_ULTRA2 = common dso_local global i64 0, align 8
@SXFR = common dso_local global i64 0, align 8
@AHC_DT = common dso_local global i32 0, align 4
@AHC_SYNCRATE_ULTRA2 = common dso_local global i64 0, align 8
@AHC_SYNCRATE_ULTRA = common dso_local global i64 0, align 8
@AHC_ULTRA = common dso_local global i32 0, align 4
@AHC_SYNCRATE_FAST = common dso_local global i64 0, align 8
@ahc_syncrates = common dso_local global %struct.ahc_syncrate* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ahc_find_period(%struct.ahc_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ahc_syncrate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AHC_ULTRA2, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64, i64* @SXFR_ULTRA2, align 8
  %17 = load i64, i64* %6, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %6, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @SXFR, align 8
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AHC_DT, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %34, %30, %23
  %37 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %38 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AHC_DT, align 4
  %41 = load i32, i32* @AHC_ULTRA2, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @AHC_SYNCRATE_ULTRA, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @AHC_SYNCRATE_ULTRA, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %49, %45, %36
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %53 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AHC_DT, align 4
  %56 = load i32, i32* @AHC_ULTRA2, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AHC_ULTRA, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @AHC_SYNCRATE_FAST, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* @AHC_SYNCRATE_FAST, align 8
  store i64 %67, i64* %7, align 8
  br label %68

68:                                               ; preds = %66, %62, %51
  %69 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** @ahc_syncrates, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %69, i64 %70
  store %struct.ahc_syncrate* %71, %struct.ahc_syncrate** %8, align 8
  br label %72

72:                                               ; preds = %117, %68
  %73 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %74 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %120

77:                                               ; preds = %72
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %79 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AHC_ULTRA2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %77
  %85 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %86 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %120

90:                                               ; preds = %84
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %93 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SXFR_ULTRA2, align 8
  %96 = and i64 %94, %95
  %97 = icmp eq i64 %91, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %100 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %4, align 8
  br label %121

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102
  br label %117

104:                                              ; preds = %77
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %107 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SXFR, align 8
  %110 = and i64 %108, %109
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %114 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %4, align 8
  br label %121

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %103
  %118 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %8, align 8
  %119 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %118, i32 1
  store %struct.ahc_syncrate* %119, %struct.ahc_syncrate** %8, align 8
  br label %72

120:                                              ; preds = %89, %72
  store i64 0, i64* %4, align 8
  br label %121

121:                                              ; preds = %120, %112, %98
  %122 = load i64, i64* %4, align 8
  ret i64 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

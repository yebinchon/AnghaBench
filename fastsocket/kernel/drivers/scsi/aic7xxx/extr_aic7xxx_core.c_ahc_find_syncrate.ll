; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_find_syncrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_find_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_syncrate = type { i32, i64, i32* }
%struct.ahc_softc = type { i32 }

@AHC_DT = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i64 0, align 8
@AHC_SYNCRATE_ULTRA2 = common dso_local global i64 0, align 8
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@AHC_SYNCRATE_ULTRA = common dso_local global i64 0, align 8
@AHC_ULTRA = common dso_local global i32 0, align 4
@AHC_SYNCRATE_FAST = common dso_local global i64 0, align 8
@ahc_syncrates = common dso_local global %struct.ahc_syncrate* null, align 8
@ST_SXFR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ahc_syncrate* @ahc_find_syncrate(%struct.ahc_softc* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ahc_syncrate*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AHC_DT, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %18 = xor i64 %17, -1
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %18
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %16, %4
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %26 = and i64 %24, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* @AHC_SYNCRATE_ULTRA2, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %28, %22
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AHC_DT, align 4
  %39 = load i32, i32* @AHC_ULTRA2, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @AHC_SYNCRATE_ULTRA, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @AHC_SYNCRATE_ULTRA, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %43, %34
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %51 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AHC_DT, align 4
  %54 = load i32, i32* @AHC_ULTRA2, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AHC_ULTRA, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %52, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @AHC_SYNCRATE_FAST, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @AHC_SYNCRATE_FAST, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %64, %60, %49
  %67 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** @ahc_syncrates, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %67, i64 %68
  store %struct.ahc_syncrate* %69, %struct.ahc_syncrate** %9, align 8
  br label %70

70:                                               ; preds = %121, %66
  %71 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %72 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %124

75:                                               ; preds = %70
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AHC_ULTRA2, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %84 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %124

88:                                               ; preds = %82, %75
  %89 = load i64*, i64** %6, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %92 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ule i64 %90, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %88
  %96 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %97 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** @ahc_syncrates, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %97, i64 %98
  %100 = icmp eq %struct.ahc_syncrate* %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %103 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %6, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %95
  %107 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %108 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ST_SXFR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %115 = xor i64 %114, -1
  %116 = load i64*, i64** %7, align 8
  %117 = load i64, i64* %116, align 8
  %118 = and i64 %117, %115
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %113, %106
  br label %124

120:                                              ; preds = %88
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %123 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %122, i32 1
  store %struct.ahc_syncrate* %123, %struct.ahc_syncrate** %9, align 8
  br label %70

124:                                              ; preds = %119, %87, %70
  %125 = load i64*, i64** %6, align 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %124
  %129 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %130 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %131, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %128
  %134 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %135 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AHC_ULTRA2, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %133
  %141 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  %142 = getelementptr inbounds %struct.ahc_syncrate, %struct.ahc_syncrate* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140, %128, %124
  %146 = load i64*, i64** %6, align 8
  store i64 0, i64* %146, align 8
  store %struct.ahc_syncrate* null, %struct.ahc_syncrate** %9, align 8
  %147 = load i64, i64* @MSG_EXT_PPR_DT_REQ, align 8
  %148 = xor i64 %147, -1
  %149 = load i64*, i64** %7, align 8
  %150 = load i64, i64* %149, align 8
  %151 = and i64 %150, %148
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %145, %140, %133
  %153 = load %struct.ahc_syncrate*, %struct.ahc_syncrate** %9, align 8
  ret %struct.ahc_syncrate* %153
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, %struct.ahd_softc*, %struct.ahd_softc*, %struct.ahd_softc*, %struct.ahd_softc*, i32, %struct.ahd_softc**, %struct.ahd_softc**, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ahd_tmode_tstate = type { i32, %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate*, i32, %struct.ahd_tmode_tstate**, %struct.ahd_tmode_tstate**, i32, i32, i32, %struct.TYPE_2__, i32 }

@AHD_NUM_TARGETS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@AHD_NUM_LUNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_free(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahd_tmode_tstate*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %5 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %8 [
    i32 5, label %9
    i32 4, label %13
    i32 3, label %24
    i32 2, label %48
    i32 1, label %55
    i32 0, label %56
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %11 = bitcast %struct.ahd_softc* %10 to %struct.ahd_tmode_tstate*
  %12 = call i32 @ahd_shutdown(%struct.ahd_tmode_tstate* %11)
  br label %13

13:                                               ; preds = %1, %9
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = bitcast %struct.ahd_softc* %14 to %struct.ahd_tmode_tstate*
  %16 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %17 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ahd_dmamap_unload(%struct.ahd_tmode_tstate* %15, i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %1, %13
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = bitcast %struct.ahd_softc* %25 to %struct.ahd_tmode_tstate*
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ahd_dmamem_free(%struct.ahd_tmode_tstate* %26, i32 %29, i32 %32, i32 %36)
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %39 = bitcast %struct.ahd_softc* %38 to %struct.ahd_tmode_tstate*
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ahd_dmamap_destroy(%struct.ahd_tmode_tstate* %39, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %1, %24
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %50 = bitcast %struct.ahd_softc* %49 to %struct.ahd_tmode_tstate*
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %52 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ahd_dma_tag_destroy(%struct.ahd_tmode_tstate* %50, i32 %53)
  br label %55

55:                                               ; preds = %1, %48
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %55
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %59 = bitcast %struct.ahd_softc* %58 to %struct.ahd_tmode_tstate*
  %60 = call i32 @ahd_platform_free(%struct.ahd_tmode_tstate* %59)
  %61 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %62 = bitcast %struct.ahd_softc* %61 to %struct.ahd_tmode_tstate*
  %63 = call i32 @ahd_fini_scbdata(%struct.ahd_tmode_tstate* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %84, %57
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @AHD_NUM_TARGETS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %69, i32 0, i32 7
  %71 = load %struct.ahd_softc**, %struct.ahd_softc*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ahd_softc*, %struct.ahd_softc** %71, i64 %73
  %75 = load %struct.ahd_softc*, %struct.ahd_softc** %74, align 8
  %76 = bitcast %struct.ahd_softc* %75 to %struct.ahd_tmode_tstate*
  store %struct.ahd_tmode_tstate* %76, %struct.ahd_tmode_tstate** %4, align 8
  %77 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %4, align 8
  %78 = icmp ne %struct.ahd_tmode_tstate* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %4, align 8
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = call i32 @free(%struct.ahd_tmode_tstate* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %68
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %64

87:                                               ; preds = %64
  %88 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %89 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %88, i32 0, i32 3
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %89, align 8
  %91 = icmp ne %struct.ahd_softc* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 3
  %95 = load %struct.ahd_softc*, %struct.ahd_softc** %94, align 8
  %96 = bitcast %struct.ahd_softc* %95 to %struct.ahd_tmode_tstate*
  %97 = load i32, i32* @M_DEVBUF, align 4
  %98 = call i32 @free(%struct.ahd_tmode_tstate* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 2
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %101, align 8
  %103 = icmp ne %struct.ahd_softc* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %105, i32 0, i32 2
  %107 = load %struct.ahd_softc*, %struct.ahd_softc** %106, align 8
  %108 = bitcast %struct.ahd_softc* %107 to %struct.ahd_tmode_tstate*
  %109 = load i32, i32* @M_DEVBUF, align 4
  %110 = call i32 @free(%struct.ahd_tmode_tstate* %108, i32 %109)
  br label %111

111:                                              ; preds = %104, %99
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %112, i32 0, i32 1
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %113, align 8
  %115 = icmp ne %struct.ahd_softc* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %117, i32 0, i32 1
  %119 = load %struct.ahd_softc*, %struct.ahd_softc** %118, align 8
  %120 = bitcast %struct.ahd_softc* %119 to %struct.ahd_tmode_tstate*
  %121 = load i32, i32* @M_DEVBUF, align 4
  %122 = call i32 @free(%struct.ahd_tmode_tstate* %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %125 = bitcast %struct.ahd_softc* %124 to %struct.ahd_tmode_tstate*
  %126 = load i32, i32* @M_DEVBUF, align 4
  %127 = call i32 @free(%struct.ahd_tmode_tstate* %125, i32 %126)
  ret void
}

declare dso_local i32 @ahd_shutdown(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @ahd_dmamap_unload(%struct.ahd_tmode_tstate*, i32, i32) #1

declare dso_local i32 @ahd_dmamem_free(%struct.ahd_tmode_tstate*, i32, i32, i32) #1

declare dso_local i32 @ahd_dmamap_destroy(%struct.ahd_tmode_tstate*, i32, i32) #1

declare dso_local i32 @ahd_dma_tag_destroy(%struct.ahd_tmode_tstate*, i32) #1

declare dso_local i32 @ahd_platform_free(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @ahd_fini_scbdata(%struct.ahd_tmode_tstate*) #1

declare dso_local i32 @free(%struct.ahd_tmode_tstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fini_scbdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_fini_scbdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { %struct.scb_data* }
%struct.scb_data = type { i32, %struct.sg_map_node*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_map_node = type { i32, i32 }

@links = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_fini_scbdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_fini_scbdata(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scb_data*, align 8
  %4 = alloca %struct.sg_map_node*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load %struct.scb_data*, %struct.scb_data** %6, align 8
  store %struct.scb_data* %7, %struct.scb_data** %3, align 8
  %8 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %9 = icmp eq %struct.scb_data* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %137

11:                                               ; preds = %1
  %12 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %13 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %15 [
    i32 7, label %16
    i32 6, label %55
    i32 5, label %64
    i32 4, label %84
    i32 3, label %90
    i32 2, label %99
    i32 1, label %119
    i32 0, label %125
  ]

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %11, %15
  br label %17

17:                                               ; preds = %22, %16
  %18 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %19 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %18, i32 0, i32 9
  %20 = call %struct.sg_map_node* @SLIST_FIRST(i32* %19)
  store %struct.sg_map_node* %20, %struct.sg_map_node** %4, align 8
  %21 = icmp ne %struct.sg_map_node* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %24 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %23, i32 0, i32 9
  %25 = load i32, i32* @links, align 4
  %26 = call i32 @SLIST_REMOVE_HEAD(i32* %24, i32 %25)
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %29 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %32 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ahc_dmamap_unload(%struct.ahc_softc* %27, i32 %30, i32 %33)
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %37 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %40 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %43 = getelementptr inbounds %struct.sg_map_node, %struct.sg_map_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ahc_dmamem_free(%struct.ahc_softc* %35, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.sg_map_node*, %struct.sg_map_node** %4, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.sg_map_node* %46, i32 %47)
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %51 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %52 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ahc_dma_tag_destroy(%struct.ahc_softc* %50, i32 %53)
  br label %55

55:                                               ; preds = %11, %49
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %58 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %61 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ahc_dmamap_unload(%struct.ahc_softc* %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %11, %55
  %65 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %66 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %67 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %70 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %73 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ahc_dmamem_free(%struct.ahc_softc* %65, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %77 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %78 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %81 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ahc_dmamap_destroy(%struct.ahc_softc* %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %11, %64
  %85 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %86 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %87 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ahc_dma_tag_destroy(%struct.ahc_softc* %85, i32 %88)
  br label %90

90:                                               ; preds = %11, %84
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %93 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %96 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ahc_dmamap_unload(%struct.ahc_softc* %91, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %11, %90
  %100 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %101 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %102 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %105 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %108 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ahc_dmamem_free(%struct.ahc_softc* %100, i32 %103, i32 %106, i32 %109)
  %111 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %112 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %113 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %116 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ahc_dmamap_destroy(%struct.ahc_softc* %111, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %11, %99
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %121 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %122 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @ahc_dma_tag_destroy(%struct.ahc_softc* %120, i32 %123)
  br label %126

125:                                              ; preds = %11
  br label %126

126:                                              ; preds = %125, %119
  %127 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %128 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %127, i32 0, i32 1
  %129 = load %struct.sg_map_node*, %struct.sg_map_node** %128, align 8
  %130 = icmp ne %struct.sg_map_node* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.scb_data*, %struct.scb_data** %3, align 8
  %133 = getelementptr inbounds %struct.scb_data, %struct.scb_data* %132, i32 0, i32 1
  %134 = load %struct.sg_map_node*, %struct.sg_map_node** %133, align 8
  %135 = load i32, i32* @M_DEVBUF, align 4
  %136 = call i32 @free(%struct.sg_map_node* %134, i32 %135)
  br label %137

137:                                              ; preds = %10, %131, %126
  ret void
}

declare dso_local %struct.sg_map_node* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @ahc_dmamap_unload(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_dmamem_free(%struct.ahc_softc*, i32, i32, i32) #1

declare dso_local i32 @free(%struct.sg_map_node*, i32) #1

declare dso_local i32 @ahc_dma_tag_destroy(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_dmamap_destroy(%struct.ahc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

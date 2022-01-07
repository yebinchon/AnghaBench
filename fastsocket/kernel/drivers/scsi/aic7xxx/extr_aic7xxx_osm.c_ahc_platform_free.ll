; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_platform_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.scsi_target** }
%struct.scsi_target = type { i32 }
%struct.TYPE_3__ = type { i64, i32* }

@AHC_NUM_TARGETS = common dso_local global i32 0, align 4
@AHC_LINUX_NOIRQ = common dso_local global i64 0, align 8
@BUS_SPACE_PIO = common dso_local global i64 0, align 8
@BUS_SPACE_MEMIO = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_platform_free(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scsi_target*, align 8
  %4 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %117

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AHC_NUM_TARGETS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load %struct.scsi_target**, %struct.scsi_target*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %19, i64 %21
  %23 = load %struct.scsi_target*, %struct.scsi_target** %22, align 8
  store %struct.scsi_target* %23, %struct.scsi_target** %3, align 8
  %24 = load %struct.scsi_target*, %struct.scsi_target** %3, align 8
  %25 = icmp ne %struct.scsi_target* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load %struct.scsi_target**, %struct.scsi_target*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.scsi_target*, %struct.scsi_target** %31, i64 %33
  store %struct.scsi_target* null, %struct.scsi_target** %34, align 8
  br label %35

35:                                               ; preds = %26, %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %41 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AHC_LINUX_NOIRQ, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %54 = call i32 @free_irq(i64 %52, %struct.ahc_softc* %53)
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BUS_SPACE_PIO, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @release_region(i64 %71, i32 256)
  br label %73

73:                                               ; preds = %67, %61, %55
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BUS_SPACE_MEMIO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %73
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %79
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @iounmap(i32* %89)
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @release_mem_region(i32 %95, i32 4096)
  br label %97

97:                                               ; preds = %85, %79, %73
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %106 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @scsi_host_put(i64 %109)
  br label %111

111:                                              ; preds = %104, %97
  %112 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* @M_DEVBUF, align 4
  %116 = call i32 @free(%struct.TYPE_4__* %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %1
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.ahc_softc*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @scsi_host_put(i64) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

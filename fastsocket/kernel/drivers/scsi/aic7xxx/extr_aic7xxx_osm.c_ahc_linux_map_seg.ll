; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_map_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_osm.c_ahc_linux_map_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.scb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ahc_dma_seg = type { i8*, i8* }

@AHC_NSEG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Too few segs for dma mapping.  Increase AHC_NSEG\0A\00", align 1
@AHC_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHC_SG_HIGH_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, %struct.scb*, %struct.ahc_dma_seg*, i32, i32)* @ahc_linux_map_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_linux_map_seg(%struct.ahc_softc* %0, %struct.scb* %1, %struct.ahc_dma_seg* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca %struct.scb*, align 8
  %8 = alloca %struct.ahc_dma_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store %struct.scb* %1, %struct.scb** %7, align 8
  store %struct.ahc_dma_seg* %2, %struct.ahc_dma_seg** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.scb*, %struct.scb** %7, align 8
  %13 = getelementptr inbounds %struct.scb, %struct.scb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 1
  %16 = load i64, i64* @AHC_NSEG, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %5
  store i32 1, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i8* @ahc_htole32(i32 %21)
  %23 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %24 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.scb*, %struct.scb** %7, align 8
  %27 = getelementptr inbounds %struct.scb, %struct.scb* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @ahc_htole32(i32 %32)
  %34 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %8, align 8
  %35 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i8* @ahc_htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

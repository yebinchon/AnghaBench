; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_run_qoutfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_run_qoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64*, i64, i32, i32 }
%struct.scb = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: WARNING no command for scb %d (cmdcmplt)\0AQOUTPOS = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_run_qoutfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_run_qoutfifo(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %7 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %8 = call i32 @ahc_sync_qoutfifo(%struct.ahc_softc* %6, i32 %7)
  br label %9

9:                                                ; preds = %76, %65, %1
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SCB_LIST_NULL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %9
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, 3
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %55

34:                                               ; preds = %20
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, -4
  store i64 %38, i64* %5, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = bitcast i64* %43 to i32*
  store i32 -1, i32* %44, align 4
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %47 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %54 = call i32 @ahc_dmamap_sync(%struct.ahc_softc* %45, i32 %48, i32 %51, i64 %52, i32 4, i32 %53)
  br label %55

55:                                               ; preds = %34, %20
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %60, i64 %61)
  store %struct.scb* %62, %struct.scb** %3, align 8
  %63 = load %struct.scb*, %struct.scb** %3, align 8
  %64 = icmp eq %struct.scb* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %67 = call i8* @ahc_name(%struct.ahc_softc* %66)
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %70 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 1
  %73 = and i64 %72, 255
  %74 = trunc i64 %73 to i32
  %75 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %67, i64 %68, i32 %74)
  br label %9

76:                                               ; preds = %55
  %77 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %78 = load %struct.scb*, %struct.scb** %3, align 8
  %79 = call i32 @ahc_update_residual(%struct.ahc_softc* %77, %struct.scb* %78)
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = load %struct.scb*, %struct.scb** %3, align 8
  %82 = call i32 @ahc_done(%struct.ahc_softc* %80, %struct.scb* %81)
  br label %9

83:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ahc_sync_qoutfifo(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_dmamap_sync(%struct.ahc_softc*, i32, i32, i64, i32, i32) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i64) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_update_residual(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @ahc_done(%struct.ahc_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

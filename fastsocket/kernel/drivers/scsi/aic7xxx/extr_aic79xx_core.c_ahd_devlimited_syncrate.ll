; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_devlimited_syncrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_devlimited_syncrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_initiator_tinfo = type { %struct.ahd_transinfo, %struct.ahd_transinfo }
%struct.ahd_transinfo = type { i32, i64, i64 }

@SBLKCTL = common dso_local global i32 0, align 4
@ENAB40 = common dso_local global i32 0, align 4
@SSTAT2 = common dso_local global i32 0, align 4
@EXP_ACTIVE = common dso_local global i32 0, align 4
@AHD_SYNCRATE_PACED = common dso_local global i32 0, align 4
@AHD_SYNCRATE_ULTRA = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i64 0, align 8
@MSG_EXT_PPR_PCOMP_EN = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i64 0, align 8
@AHD_SYNCRATE_ULTRA2 = common dso_local global i64 0, align 8
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i32*, i32*, i64)* @ahd_devlimited_syncrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_devlimited_syncrate(%struct.ahd_softc* %0, %struct.ahd_initiator_tinfo* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.ahd_softc*, align 8
  %7 = alloca %struct.ahd_initiator_tinfo*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ahd_transinfo*, align 8
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %6, align 8
  store %struct.ahd_initiator_tinfo* %1, %struct.ahd_initiator_tinfo** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %14 = load i32, i32* @SBLKCTL, align 4
  %15 = call i32 @ahd_inb(%struct.ahd_softc* %13, i32 %14)
  %16 = load i32, i32* @ENAB40, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %21 = load i32, i32* @SSTAT2, align 4
  %22 = call i32 @ahd_inb(%struct.ahd_softc* %20, i32 %21)
  %23 = load i32, i32* @EXP_ACTIVE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @AHD_SYNCRATE_PACED, align 4
  store i32 %27, i32* %12, align 4
  br label %34

28:                                               ; preds = %19, %5
  %29 = load i32, i32* @AHD_SYNCRATE_ULTRA, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @ROLE_TARGET, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %7, align 8
  %40 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %39, i32 0, i32 1
  store %struct.ahd_transinfo* %40, %struct.ahd_transinfo** %11, align 8
  br label %44

41:                                               ; preds = %34
  %42 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %7, align 8
  %43 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %42, i32 0, i32 0
  store %struct.ahd_transinfo* %43, %struct.ahd_transinfo** %11, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %11, align 8
  %46 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MSG_EXT_PPR_PCOMP_EN, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %49
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %11, align 8
  %54 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = load i64, i64* @AHD_SYNCRATE_ULTRA2, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @max(i32 %59, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %64 = xor i32 %63, -1
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %58, %44
  %69 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %11, align 8
  %70 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** %8, align 8
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 0, i32* %75, align 4
  br label %90

76:                                               ; preds = %68
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ahd_transinfo*, %struct.ahd_transinfo** %11, align 8
  %80 = getelementptr inbounds %struct.ahd_transinfo, %struct.ahd_transinfo* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @max(i32 %78, i32 %82)
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %6, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @ahd_find_syncrate(%struct.ahd_softc* %85, i32* %86, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ahd_find_syncrate(%struct.ahd_softc*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

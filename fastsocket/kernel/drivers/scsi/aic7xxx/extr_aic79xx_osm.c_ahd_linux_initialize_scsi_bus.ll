; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_initialize_scsi_bus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_linux_initialize_scsi_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i32 }
%struct.ahd_devinfo = type { i32 }
%struct.ahd_initiator_tinfo = type { i32 }
%struct.ahd_tmode_tstate = type { i32 }

@aic79xx_no_reset = common dso_local global i64 0, align 8
@AHD_RESET_BUS_A = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHD_WIDE = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@AHD_NEG_ALWAYS = common dso_local global i32 0, align 4
@AIC79XX_RESET_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_linux_initialize_scsi_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_linux_initialize_scsi_bus(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ahd_devinfo, align 4
  %7 = alloca %struct.ahd_initiator_tinfo*, align 8
  %8 = alloca %struct.ahd_tmode_tstate*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i64, i64* @aic79xx_no_reset, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = call i32 @ahd_reset_channel(%struct.ahd_softc* %26, i8 signext 65, i32 %27)
  br label %38

29:                                               ; preds = %18
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AHD_WIDE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 16, i32 8
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %29, %25
  %39 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %40 = call i32 @ahd_lock(%struct.ahd_softc* %39, i64* %5)
  br label %41

41:                                               ; preds = %64, %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %48 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %46, i8 signext 65, i32 %49, i32 %50, %struct.ahd_tmode_tstate** %8)
  store %struct.ahd_initiator_tinfo* %51, %struct.ahd_initiator_tinfo** %7, align 8
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %57 = load i32, i32* @ROLE_INITIATOR, align 4
  %58 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %6, i32 %54, i32 %55, i32 %56, i8 signext 65, i32 %57)
  %59 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %60 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %8, align 8
  %61 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %7, align 8
  %62 = load i32, i32* @AHD_NEG_ALWAYS, align 4
  %63 = call i32 @ahd_update_neg_request(%struct.ahd_softc* %59, %struct.ahd_devinfo* %6, %struct.ahd_tmode_tstate* %60, %struct.ahd_initiator_tinfo* %61, i32 %62)
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %69 = call i32 @ahd_unlock(%struct.ahd_softc* %68, i64* %5)
  %70 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AHD_RESET_BUS_A, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %78 = call i32 @ahd_freeze_simq(%struct.ahd_softc* %77)
  %79 = load i32, i32* @AIC79XX_RESET_DELAY, align 4
  %80 = call i32 @msleep(i32 %79)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %82 = call i32 @ahd_release_simq(%struct.ahd_softc* %81)
  br label %83

83:                                               ; preds = %76, %67
  ret void
}

declare dso_local i32 @ahd_reset_channel(%struct.ahd_softc*, i8 signext, i32) #1

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i64*) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i8 signext, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i32, i32, i32, i8 signext, i32) #1

declare dso_local i32 @ahd_update_neg_request(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.ahd_tmode_tstate*, %struct.ahd_initiator_tinfo*, i32) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i64*) #1

declare dso_local i32 @ahd_freeze_simq(%struct.ahd_softc*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ahd_release_simq(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

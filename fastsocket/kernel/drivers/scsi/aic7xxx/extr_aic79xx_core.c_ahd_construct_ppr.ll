; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_construct_ppr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_construct_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64 }
%struct.ahd_devinfo = type { i32, i32, i32 }

@AHD_SYNCRATE_PACED = common dso_local global i64 0, align 8
@MSG_EXT_PPR_PCOMP_EN = common dso_local global i64 0, align 8
@AHD_ASYNC_XFER_PERIOD = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, offset %x, ppr_options %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64, i64, i64)* @ahd_construct_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_construct_ppr(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca %struct.ahd_devinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %7, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @AHD_SYNCRATE_PACED, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load i64, i64* @MSG_EXT_PPR_PCOMP_EN, align 8
  %18 = load i64, i64* %12, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %16, %6
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @AHD_ASYNC_XFER_PERIOD, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %27 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %30 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @spi_populate_ppr_msg(i64 %32, i64 %33, i64 %34, i64 %35, i64 %36)
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %39 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %43 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 8
  store i32 %45, i32* %43, align 8
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %25
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %50 = call i8* @ahd_name(%struct.ahd_softc* %49)
  %51 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %52 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %55 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %58 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %53, i32 %56, i32 %59, i64 %60, i64 %61, i64 %62, i64 %63)
  br label %65

65:                                               ; preds = %48, %25
  ret void
}

declare dso_local i64 @spi_populate_ppr_msg(i64, i64, i64, i64, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

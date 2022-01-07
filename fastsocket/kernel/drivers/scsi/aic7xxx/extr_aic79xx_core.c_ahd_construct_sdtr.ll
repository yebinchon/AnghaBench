; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_construct_sdtr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_construct_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i64, i64 }
%struct.ahd_devinfo = type { i32, i32, i32 }

@AHD_ASYNC_XFER_PERIOD = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"(%s:%c:%d:%d): Sending SDTR period %x, offset %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64)* @ahd_construct_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_construct_sdtr(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca %struct.ahd_devinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load i64, i64* @AHD_ASYNC_XFER_PERIOD, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %11, %4
  %14 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %18 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @spi_populate_sync_msg(i64 %20, i64 %21, i64 %22)
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %25 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 5
  store i32 %31, i32* %29, align 8
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %13
  %35 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %36 = call i8* @ahd_name(%struct.ahd_softc* %35)
  %37 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %6, align 8
  %38 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %6, align 8
  %41 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %6, align 8
  %44 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39, i32 %42, i32 %45, i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %34, %13
  ret void
}

declare dso_local i64 @spi_populate_sync_msg(i64, i64, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_osm.c_ahd_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_linux_iocell_opts = type { i64, i64, i64 }
%struct.ahd_softc = type { i64 }

@aic79xx_iocell_info = common dso_local global %struct.ahd_linux_iocell_opts* null, align 8
@AIC79XX_DEFAULT_PRECOMP = common dso_local global i64 0, align 8
@AIC79XX_DEFAULT_SLEWRATE = common dso_local global i64 0, align 8
@AIC79XX_DEFAULT_AMPLITUDE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_platform_init(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.ahd_linux_iocell_opts*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %4 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** @aic79xx_iocell_info, align 8
  %8 = call i64 @ARRAY_SIZE(%struct.ahd_linux_iocell_opts* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  %11 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** @aic79xx_iocell_info, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %11, i64 %14
  store %struct.ahd_linux_iocell_opts* %15, %struct.ahd_linux_iocell_opts** %3, align 8
  %16 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %3, align 8
  %17 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AIC79XX_DEFAULT_PRECOMP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %3, align 8
  %24 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @AHD_SET_PRECOMP(%struct.ahd_softc* %22, i64 %25)
  br label %27

27:                                               ; preds = %21, %10
  %28 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %3, align 8
  %29 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AIC79XX_DEFAULT_SLEWRATE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %3, align 8
  %36 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @AHD_SET_SLEWRATE(%struct.ahd_softc* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %3, align 8
  %41 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AIC79XX_DEFAULT_AMPLITUDE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %47 = load %struct.ahd_linux_iocell_opts*, %struct.ahd_linux_iocell_opts** %3, align 8
  %48 = getelementptr inbounds %struct.ahd_linux_iocell_opts, %struct.ahd_linux_iocell_opts* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @AHD_SET_AMPLITUDE(%struct.ahd_softc* %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.ahd_linux_iocell_opts*) #1

declare dso_local i32 @AHD_SET_PRECOMP(%struct.ahd_softc*, i64) #1

declare dso_local i32 @AHD_SET_SLEWRATE(%struct.ahd_softc*, i64) #1

declare dso_local i32 @AHD_SET_AMPLITUDE(%struct.ahd_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

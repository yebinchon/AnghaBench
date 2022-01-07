; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_proc_write_seeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_proc_write_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i8, i32* }
%struct.seeprom_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ahd_proc_write_seeprom: incorrect buffer size\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ahd_proc_write_seeprom: cksum verification failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ahd_proc_write_seeprom: No Serial EEPROM\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [66 x i8] c"aic79xx: Unable to allocate serial eeprom buffer.  Write failing\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"aic79xx: Writing Serial EEPROM\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, i8*, i32)* @ahd_proc_write_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_proc_write_seeprom(%struct.ahd_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %16 = call i32 @ahd_lock(%struct.ahd_softc* %15, i32* %9)
  %17 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %18 = call i32 @ahd_is_paused(%struct.ahd_softc* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %23 = call i32 @ahd_pause(%struct.ahd_softc* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %26 = call i32 @ahd_save_modes(%struct.ahd_softc* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %28 = load i32, i32* @AHD_MODE_SCSI, align 4
  %29 = load i32, i32* @AHD_MODE_SCSI, align 4
  %30 = call i32 @ahd_set_modes(%struct.ahd_softc* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %93

36:                                               ; preds = %24
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to %struct.seeprom_config*
  %39 = call i32 @ahd_verify_cksum(%struct.seeprom_config* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %93

44:                                               ; preds = %36
  %45 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %46 = call i32 @ahd_acquire_seeprom(%struct.ahd_softc* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %93

51:                                               ; preds = %44
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = call i32* @malloc(i32 4, i32 %57, i32 %58)
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %63 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0))
  br label %93

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %51
  %70 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 8
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 65
  %76 = mul nsw i32 32, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @ahd_write_seeprom(%struct.ahd_softc* %77, i32* %79, i32 %80, i32 2)
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %83 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @ahd_read_seeprom(%struct.ahd_softc* %82, i32* %85, i32 %86, i32 2, i32 %87)
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %90 = call i32 @ahd_release_seeprom(%struct.ahd_softc* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %66, %49, %42, %34
  %94 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @ahd_restore_modes(%struct.ahd_softc* %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %101 = call i32 @ahd_unpause(%struct.ahd_softc* %100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %104 = call i32 @ahd_unlock(%struct.ahd_softc* %103, i32* %9)
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i32 @ahd_lock(%struct.ahd_softc*, i32*) #1

declare dso_local i32 @ahd_is_paused(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_pause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ahd_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32 @ahd_acquire_seeprom(%struct.ahd_softc*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ahd_write_seeprom(%struct.ahd_softc*, i32*, i32, i32) #1

declare dso_local i32 @ahd_read_seeprom(%struct.ahd_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @ahd_release_seeprom(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_restore_modes(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_unpause(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_unlock(%struct.ahd_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

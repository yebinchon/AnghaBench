; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_proc_write_seeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_proc_write_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i8, i32* }
%struct.seeprom_descriptor = type { i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, %struct.ahc_softc* }
%struct.seeprom_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ahc_proc_write_seeprom: incorrect buffer size\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ahc_proc_write_seeprom: cksum verification failed\0A\00", align 1
@AHC_VL = common dso_local global i32 0, align 4
@SEECTL_2840 = common dso_local global i8* null, align 8
@STATUS_2840 = common dso_local global i8* null, align 8
@C46 = common dso_local global i8* null, align 8
@EEPROM_TF = common dso_local global i32 0, align 4
@CS_2840 = common dso_local global i32 0, align 4
@CK_2840 = common dso_local global i32 0, align 4
@DO_2840 = common dso_local global i32 0, align 4
@DI_2840 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ahc_proc_write_seeprom: unsupported adapter type\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ahc_proc_write_seeprom: No Serial EEPROM\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"aic7xxx: Unable to allocate serial eeprom buffer.  Write failing\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"aic7xxx: Writing Serial EEPROM\0A\00", align 1
@AHC_LARGE_SEEPROM = common dso_local global i32 0, align 4
@AHC_PCI = common dso_local global i32 0, align 4
@C56_66 = common dso_local global i8* null, align 8
@SEECK = common dso_local global i32 0, align 4
@SEECS = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i8* null, align 8
@SEEDI = common dso_local global i32 0, align 4
@SEEDO = common dso_local global i32 0, align 4
@SEEMS = common dso_local global i64 0, align 8
@SEERDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahc_softc*, i8*, i32)* @ahc_proc_write_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahc_proc_write_seeprom(%struct.ahc_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seeprom_descriptor, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %16 = call i32 @ahc_lock(%struct.ahc_softc* %15, i32* %9)
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %18 = call i32 @ahc_is_paused(%struct.ahc_softc* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %23 = call i32 @ahc_pause(%struct.ahc_softc* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %112

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to %struct.seeprom_config*
  %33 = call i32 @ahc_verify_cksum(%struct.seeprom_config* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %112

38:                                               ; preds = %30
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %40 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 10
  store %struct.ahc_softc* %39, %struct.ahc_softc** %40, align 8
  %41 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %42 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AHC_VL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load i8*, i8** @SEECTL_2840, align 8
  %49 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 9
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @STATUS_2840, align 8
  %51 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 8
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** @STATUS_2840, align 8
  %53 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 7
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** @C46, align 8
  %55 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 6
  store i8* %54, i8** %55, align 8
  %56 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @EEPROM_TF, align 4
  %58 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 4
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* @CS_2840, align 4
  %60 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @CK_2840, align 4
  %62 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 2
  store i32 %61, i32* %62, align 8
  %63 = load i32, i32* @DO_2840, align 4
  %64 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @DI_2840, align 4
  %66 = getelementptr inbounds %struct.seeprom_descriptor, %struct.seeprom_descriptor* %7, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %8, align 4
  br label %70

68:                                               ; preds = %38
  %69 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %112

70:                                               ; preds = %47
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %112

75:                                               ; preds = %70
  %76 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load i32, i32* @M_DEVBUF, align 4
  %82 = load i32, i32* @M_NOWAIT, align 4
  %83 = call i32* @malloc(i32 4, i32 %81, i32 %82)
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %85 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %112

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %75
  %94 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %96 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %95, i32 0, i32 2
  %97 = load i8, i8* %96, align 8
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 65
  %100 = mul nsw i32 32, %99
  store i32 %100, i32* %12, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ahc_write_seeprom(%struct.seeprom_descriptor* %7, i32* %102, i32 %103, i32 2)
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %106 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @ahc_read_seeprom(%struct.seeprom_descriptor* %7, i32* %107, i32 %108, i32 2)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %90, %73, %68, %36, %28
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %117 = call i32 @ahc_unpause(%struct.ahc_softc* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %120 = call i32 @ahc_unlock(%struct.ahc_softc* %119, i32* %9)
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local i32 @ahc_lock(%struct.ahc_softc*, i32*) #1

declare dso_local i32 @ahc_is_paused(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ahc_verify_cksum(%struct.seeprom_config*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @ahc_write_seeprom(%struct.seeprom_descriptor*, i32*, i32, i32) #1

declare dso_local i32 @ahc_read_seeprom(%struct.seeprom_descriptor*, i32*, i32, i32) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unlock(%struct.ahc_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_linux_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_proc.c_ahd_linux_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.ahd_softc = type { i32, i32, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.info_str = type { i8*, i32, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Adaptec AIC79xx driver version: %s\0A\00", align 1
@AIC79XX_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Allocated SCBs: %d, SG List Length: %d\0A\0A\00", align 1
@AHD_NSEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No Serial EEPROM\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Serial EEPROM:\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%.4x \00", align 1
@AHD_WIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahd_linux_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ahd_softc*, align 8
  %14 = alloca %struct.info_str, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ahd_softc**
  %23 = load %struct.ahd_softc*, %struct.ahd_softc** %22, align 8
  store %struct.ahd_softc* %23, %struct.ahd_softc** %13, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @ahd_proc_write_seeprom(%struct.ahd_softc* %28, i8* %29, i32 %30)
  store i32 %31, i32* %18, align 4
  br label %138

32:                                               ; preds = %6
  %33 = load i8**, i8*** %9, align 8
  %34 = icmp ne i8** %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = load i8**, i8*** %9, align 8
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 1
  store i32 %41, i32* %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 2
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @AIC79XX_DRIVER_VERSION, align 4
  %47 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %49 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %54 = call i32 @ahd_controller_info(%struct.ahd_softc* %52, i8* %53)
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %56 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %58 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AHD_NSEG, align 4
  %62 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  store i32 16, i32* %16, align 4
  %63 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %64 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %38
  %68 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %98

69:                                               ; preds = %38
  %70 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %71

71:                                               ; preds = %93, %69
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 2
  br i1 %74, label %75, label %96

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = srem i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79, %75
  %85 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %86 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %71

96:                                               ; preds = %71
  %97 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %67
  %99 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %101 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @AHD_WIDE, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 8, i32* %16, align 4
  br label %107

107:                                              ; preds = %106, %98
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %114 = load %struct.ahd_softc*, %struct.ahd_softc** %13, align 8
  %115 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @ahd_dump_target_state(%struct.ahd_softc* %113, %struct.info_str* %14, i32 %116, i8 signext 65, i32 %117)
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %108

122:                                              ; preds = %108
  %123 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %124, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %130, %132
  br label %135

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %128
  %136 = phi i64 [ %133, %128 ], [ 0, %134 ]
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %135, %27
  %139 = load i32, i32* %18, align 4
  ret i32 %139
}

declare dso_local i32 @ahd_proc_write_seeprom(%struct.ahd_softc*, i8*, i32) #1

declare dso_local i32 @copy_info(%struct.info_str*, i8*, ...) #1

declare dso_local i32 @ahd_controller_info(%struct.ahd_softc*, i8*) #1

declare dso_local i32 @ahd_dump_target_state(%struct.ahd_softc*, %struct.info_str*, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

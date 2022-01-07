; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_linux_proc_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_proc.c_ahc_linux_proc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.ahc_softc = type { i32, i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.info_str = type { i8*, i32, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Adaptec AIC7xxx driver version: %s\0A\00", align 1
@AIC7XXX_DRIVER_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Allocated SCBs: %d, SG List Length: %d\0A\0A\00", align 1
@AHC_NSEG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No Serial EEPROM\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Serial EEPROM:\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0x%.4x \00", align 1
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_TWIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_linux_proc_info(%struct.Scsi_Host* %0, i8* %1, i8** %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ahc_softc*, align 8
  %14 = alloca %struct.info_str, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ahc_softc**
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %25, align 8
  store %struct.ahc_softc* %26, %struct.ahc_softc** %13, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @TRUE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @ahc_proc_write_seeprom(%struct.ahc_softc* %31, i8* %32, i32 %33)
  store i32 %34, i32* %18, align 4
  br label %164

35:                                               ; preds = %6
  %36 = load i8**, i8*** %9, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8**, i8*** %9, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @AIC7XXX_DRIVER_VERSION, align 4
  %50 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %52 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %57 = call i32 @ahc_controller_info(%struct.ahc_softc* %55, i8* %56)
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %59 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %61 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AHC_NSEG, align 4
  %66 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %68 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %41
  %72 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %102

73:                                               ; preds = %41
  %74 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %97, %73
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 2
  br i1 %78, label %79, label %100

79:                                               ; preds = %75
  %80 = load i32, i32* %17, align 4
  %81 = srem i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %83, %79
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %90 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %75

100:                                              ; preds = %75
  %101 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %71
  %103 = call i32 (%struct.info_str*, i8*, ...) @copy_info(%struct.info_str* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 16, i32* %16, align 4
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %105 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @AHC_WIDE, align 4
  %108 = load i32, i32* @AHC_TWIN, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  store i32 8, i32* %16, align 4
  br label %113

113:                                              ; preds = %112, %102
  store i32 0, i32* %17, align 4
  br label %114

114:                                              ; preds = %145, %113
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %148

118:                                              ; preds = %114
  store i8 65, i8* %21, align 1
  %119 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %120 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %20, align 4
  %123 = load i32, i32* %17, align 4
  %124 = icmp sgt i32 %123, 7
  br i1 %124, label %125, label %138

125:                                              ; preds = %118
  %126 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %127 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AHC_TWIN, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  store i8 66, i8* %21, align 1
  %133 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %134 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %17, align 4
  %137 = srem i32 %136, 8
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %132, %125, %118
  %139 = load %struct.ahc_softc*, %struct.ahc_softc** %13, align 8
  %140 = load i32, i32* %19, align 4
  %141 = load i8, i8* %21, align 1
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @ahc_dump_target_state(%struct.ahc_softc* %139, %struct.info_str* %14, i32 %140, i8 signext %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %114

148:                                              ; preds = %114
  %149 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.info_str, %struct.info_str* %14, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %156, %158
  br label %161

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %154
  %162 = phi i64 [ %159, %154 ], [ 0, %160 ]
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %161, %30
  %165 = load i32, i32* %18, align 4
  ret i32 %165
}

declare dso_local i32 @ahc_proc_write_seeprom(%struct.ahc_softc*, i8*, i32) #1

declare dso_local i32 @copy_info(%struct.info_str*, i8*, ...) #1

declare dso_local i32 @ahc_controller_info(%struct.ahc_softc*, i8*) #1

declare dso_local i32 @ahc_dump_target_state(%struct.ahc_softc*, %struct.info_str*, i32, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-driver.c_cx18_process_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-driver.c_cx18_process_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.tveeprom = type { i32, i64, i64, i32 }

@CX18_CARD_HVR_1600_S5H1411 = common dso_local global i32 0, align 4
@CX18_CARD_HVR_1600_ESMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unknown EEPROM encoding\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Invalid EEPROM\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Unknown model %d, defaulting to original HVR-1600 (cardtype=1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Autodetected %s\0A\00", align 1
@TUNER_ABSENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"tveeprom cannot autodetect tuner!\0A\00", align 1
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"PAL tuner detected\0A\00", align 1
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_H = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"NTSC tuner detected\0A\00", align 1
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"SECAM tuner detected\0A\00", align 1
@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"No tuner detected, default to NTSC-M\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*)* @cx18_process_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_process_eeprom(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca %struct.tveeprom, align 8
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %4 = load %struct.cx18*, %struct.cx18** %2, align 8
  %5 = call i32 @cx18_read_eeprom(%struct.cx18* %4, %struct.tveeprom* %3)
  %6 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %25 [
    i32 74301, label %8
    i32 74321, label %8
    i32 74351, label %8
    i32 74361, label %8
    i32 74021, label %14
    i32 74031, label %14
    i32 74041, label %14
    i32 74141, label %14
    i32 74541, label %14
    i32 74551, label %14
    i32 74591, label %14
    i32 74651, label %14
    i32 74691, label %14
    i32 74751, label %14
    i32 74891, label %14
    i32 1816, label %20
    i32 -1, label %21
    i32 0, label %23
  ]

8:                                                ; preds = %1, %1, %1, %1
  %9 = load i32, i32* @CX18_CARD_HVR_1600_S5H1411, align 4
  %10 = call i8* @cx18_get_card(i32 %9)
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  %12 = load %struct.cx18*, %struct.cx18** %2, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 3
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %13, align 8
  br label %34

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %15 = load i32, i32* @CX18_CARD_HVR_1600_ESMT, align 4
  %16 = call i8* @cx18_get_card(i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_3__*
  %18 = load %struct.cx18*, %struct.cx18** %2, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 3
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %19, align 8
  br label %34

20:                                               ; preds = %1
  br label %149

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %149

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %149

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @CX18_CARD_HVR_1600_ESMT, align 4
  %30 = call i8* @cx18_get_card(i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_3__*
  %32 = load %struct.cx18*, %struct.cx18** %2, align 8
  %33 = getelementptr inbounds %struct.cx18, %struct.cx18* %32, i32 0, i32 3
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %33, align 8
  br label %34

34:                                               ; preds = %25, %14, %8
  %35 = load %struct.cx18*, %struct.cx18** %2, align 8
  %36 = getelementptr inbounds %struct.cx18, %struct.cx18* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cx18*, %struct.cx18** %2, align 8
  %41 = getelementptr inbounds %struct.cx18, %struct.cx18* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cx18*, %struct.cx18** %2, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.cx18*, %struct.cx18** %2, align 8
  %48 = getelementptr inbounds %struct.cx18, %struct.cx18* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.cx18*, %struct.cx18** %2, align 8
  %50 = getelementptr inbounds %struct.cx18, %struct.cx18* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cx18*, %struct.cx18** %2, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cx18*, %struct.cx18** %2, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TUNER_ABSENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %34
  %65 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %34
  %67 = load %struct.cx18*, %struct.cx18** %2, align 8
  %68 = getelementptr inbounds %struct.cx18, %struct.cx18* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.cx18*, %struct.cx18** %2, align 8
  %77 = getelementptr inbounds %struct.cx18, %struct.cx18* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load %struct.cx18*, %struct.cx18** %2, align 8
  %81 = getelementptr inbounds %struct.cx18, %struct.cx18* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load %struct.cx18*, %struct.cx18** %2, align 8
  %91 = getelementptr inbounds %struct.cx18, %struct.cx18* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %85, %79
  %94 = load %struct.cx18*, %struct.cx18** %2, align 8
  %95 = getelementptr inbounds %struct.cx18, %struct.cx18* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %149

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @V4L2_STD_PAL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %107 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %108 = load i32, i32* @V4L2_STD_PAL_H, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.cx18*, %struct.cx18** %2, align 8
  %111 = getelementptr inbounds %struct.cx18, %struct.cx18* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %149

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @V4L2_STD_NTSC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %123 = load %struct.cx18*, %struct.cx18** %2, align 8
  %124 = getelementptr inbounds %struct.cx18, %struct.cx18* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %148

127:                                              ; preds = %114
  %128 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %3, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @V4L2_STD_SECAM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = call i32 @CX18_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %136 = load %struct.cx18*, %struct.cx18** %2, align 8
  %137 = getelementptr inbounds %struct.cx18, %struct.cx18* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %147

140:                                              ; preds = %127
  %141 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %142 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %143 = load %struct.cx18*, %struct.cx18** %2, align 8
  %144 = getelementptr inbounds %struct.cx18, %struct.cx18* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %140, %133
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %20, %21, %23, %98, %148, %105
  ret void
}

declare dso_local i32 @cx18_read_eeprom(%struct.cx18*, %struct.tveeprom*) #1

declare dso_local i8* @cx18_get_card(i32) #1

declare dso_local i32 @CX18_INFO(i8*, ...) #1

declare dso_local i32 @CX18_ERR(i8*, ...) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

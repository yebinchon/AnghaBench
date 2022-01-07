; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-eeprom.c_pvr2_eeprom_analyze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-eeprom.c_pvr2_eeprom_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32, i32, i32 }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"eeprom assumed v4l tveeprom module\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"eeprom direct call results:\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"has_radio=%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tuner_type=%d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"tuner_formats=0x%x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"audio_processor=%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"model=%d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"revision=%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"serial_number=%d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"rev_str=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_eeprom_analyze(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tveeprom, align 4
  %6 = alloca %struct.i2c_client, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %7 = call i32 @memset(%struct.tveeprom* %5, i32 0, i32 32)
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %9 = call i32* @pvr2_eeprom_fetch(%struct.pvr2_hdw* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %17 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 8
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %21 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @tveeprom_hauppauge_analog(%struct.i2c_client* %6, %struct.tveeprom* %5, i32* %23)
  %25 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %37)
  %39 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %60 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %64 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @kfree(i32* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %15, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.tveeprom*, i32, i32) #1

declare dso_local i32* @pvr2_eeprom_fetch(%struct.pvr2_hdw*) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.i2c_client*, %struct.tveeprom*, i32*) #1

declare dso_local i32 @trace_eeprom(i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

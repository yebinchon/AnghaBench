; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-ioctl.c_cx18_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18 = type { i8*, i32, i8*, i64, i64, %struct.cx18_stream*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx18_stream = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_input = type { i8* }
%struct.v4l2_audio = type { i8* }
%struct.tveeprom = type { i32 }
%struct.cx18_open_id = type { %struct.cx18* }

@.str = private unnamed_addr constant [61 x i8] c"=================  START STATUS CARD #%d  =================\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Version: %s  Card: %s\0A\00", align 1
@CX18_VERSION = common dso_local global i32 0, align 4
@CX18_HW_TVEEPROM = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Video Input: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Audio Input: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"GPIO:  direction 0x%08x, value 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Tuner: %s\0A\00", align 1
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"TV\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Status flags: 0x%08lx\0A\00", align 1
@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [63 x i8] c"Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Read MPEG/VBI: %lld/%lld bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"==================  END STATUS CARD #%d  ==================\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @cx18_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.v4l2_input, align 8
  %7 = alloca %struct.v4l2_audio, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tveeprom, align 4
  %10 = alloca %struct.cx18_stream*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.cx18_open_id*
  %13 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %12, i32 0, i32 0
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %5, align 8
  %15 = load %struct.cx18*, %struct.cx18** %5, align 8
  %16 = getelementptr inbounds %struct.cx18, %struct.cx18* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @CX18_VERSION, align 4
  %20 = load %struct.cx18*, %struct.cx18** %5, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.cx18*, %struct.cx18** %5, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CX18_HW_TVEEPROM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.cx18*, %struct.cx18** %5, align 8
  %32 = call i32 @cx18_read_eeprom(%struct.cx18* %31, %struct.tveeprom* %9)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.cx18*, %struct.cx18** %5, align 8
  %35 = load i32, i32* @core, align 4
  %36 = load i32, i32* @log_status, align 4
  %37 = call i32 @cx18_call_all(%struct.cx18* %34, i32 %35, i32 %36)
  %38 = load %struct.cx18*, %struct.cx18** %5, align 8
  %39 = load %struct.cx18*, %struct.cx18** %5, align 8
  %40 = getelementptr inbounds %struct.cx18, %struct.cx18* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cx18_get_input(%struct.cx18* %38, i32 %41, %struct.v4l2_input* %6)
  %43 = load %struct.cx18*, %struct.cx18** %5, align 8
  %44 = load %struct.cx18*, %struct.cx18** %5, align 8
  %45 = getelementptr inbounds %struct.cx18, %struct.cx18* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @cx18_get_audio_input(%struct.cx18* %43, i32 %46, %struct.v4l2_audio* %7)
  %48 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %6, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %7, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load %struct.cx18*, %struct.cx18** %5, align 8
  %55 = getelementptr inbounds %struct.cx18, %struct.cx18* %54, i32 0, i32 8
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.cx18*, %struct.cx18** %5, align 8
  %58 = getelementptr inbounds %struct.cx18, %struct.cx18* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cx18*, %struct.cx18** %5, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %62)
  %64 = load %struct.cx18*, %struct.cx18** %5, align 8
  %65 = getelementptr inbounds %struct.cx18, %struct.cx18* %64, i32 0, i32 8
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %68 = load %struct.cx18*, %struct.cx18** %5, align 8
  %69 = getelementptr inbounds %struct.cx18, %struct.cx18* %68, i32 0, i32 2
  %70 = call i64 @test_bit(i32 %67, i8** %69)
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %74 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load %struct.cx18*, %struct.cx18** %5, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 7
  %77 = load %struct.cx18*, %struct.cx18** %5, align 8
  %78 = getelementptr inbounds %struct.cx18, %struct.cx18* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cx2341x_log_status(i32* %76, i32 %80)
  %82 = load %struct.cx18*, %struct.cx18** %5, align 8
  %83 = getelementptr inbounds %struct.cx18, %struct.cx18* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %84)
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %139, %33
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %142

90:                                               ; preds = %86
  %91 = load %struct.cx18*, %struct.cx18** %5, align 8
  %92 = getelementptr inbounds %struct.cx18, %struct.cx18* %91, i32 0, i32 5
  %93 = load %struct.cx18_stream*, %struct.cx18_stream** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %93, i64 %95
  store %struct.cx18_stream* %96, %struct.cx18_stream** %10, align 8
  %97 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %98 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %90
  %102 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %103 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %90
  br label %139

107:                                              ; preds = %101
  %108 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %109 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %112 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %115 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @atomic_read(i32* %116)
  %118 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %119 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = mul nsw i32 %121, 100
  %123 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %124 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 %122, %125
  %127 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %128 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %131 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %129, %132
  %134 = sdiv i32 %133, 1024
  %135 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %136 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %110, i32 %113, i32 %126, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %107, %106
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %8, align 4
  br label %86

142:                                              ; preds = %86
  %143 = load %struct.cx18*, %struct.cx18** %5, align 8
  %144 = getelementptr inbounds %struct.cx18, %struct.cx18* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.cx18*, %struct.cx18** %5, align 8
  %147 = getelementptr inbounds %struct.cx18, %struct.cx18* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i64 %145, i64 %148)
  %150 = load %struct.cx18*, %struct.cx18** %5, align 8
  %151 = getelementptr inbounds %struct.cx18, %struct.cx18* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i8* %152)
  ret i32 0
}

declare dso_local i32 @CX18_INFO(i8*, ...) #1

declare dso_local i32 @cx18_read_eeprom(%struct.cx18*, %struct.tveeprom*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_get_input(%struct.cx18*, i32, %struct.v4l2_input*) #1

declare dso_local i32 @cx18_get_audio_input(%struct.cx18*, i32, %struct.v4l2_audio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i8**) #1

declare dso_local i32 @cx2341x_log_status(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

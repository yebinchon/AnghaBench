; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_serialized_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-fileops.c_cx18_serialized_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i64, i32, %struct.cx18* }
%struct.cx18 = type { i32, i32, i32, i32 }
%struct.file = type { %struct.cx18_open_id* }
%struct.cx18_open_id = type { i64, i64, i32, %struct.cx18* }

@.str = private unnamed_addr constant [9 x i8] c"open %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"nomem on v4l2 open\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_stream*, %struct.file*)* @cx18_serialized_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_serialized_open(%struct.cx18_stream* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_stream*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.cx18_open_id*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i32 0, i32 2
  %10 = load %struct.cx18*, %struct.cx18** %9, align 8
  store %struct.cx18* %10, %struct.cx18** %6, align 8
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %12 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @CX18_DEBUG_FILE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cx18_open_id* @kmalloc(i32 32, i32 %15)
  store %struct.cx18_open_id* %16, %struct.cx18_open_id** %7, align 8
  %17 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %18 = icmp eq %struct.cx18_open_id* null, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i32 @CX18_DEBUG_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.cx18*, %struct.cx18** %6, align 8
  %25 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %26 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %25, i32 0, i32 3
  store %struct.cx18* %24, %struct.cx18** %26, align 8
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %31 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.cx18*, %struct.cx18** %6, align 8
  %33 = getelementptr inbounds %struct.cx18, %struct.cx18* %32, i32 0, i32 3
  %34 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %35 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %34, i32 0, i32 2
  %36 = call i32 @v4l2_prio_open(i32* %33, i32* %35)
  %37 = load %struct.cx18*, %struct.cx18** %6, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = sext i32 %39 to i64
  %42 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %43 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  store %struct.cx18_open_id* %44, %struct.cx18_open_id** %46, align 8
  %47 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %48 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %23
  %53 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %54 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %55 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @cx18_claim_stream(%struct.cx18_open_id* %53, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %61 = call i32 @kfree(%struct.cx18_open_id* %60)
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %52
  %65 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %66 = load %struct.cx18*, %struct.cx18** %6, align 8
  %67 = getelementptr inbounds %struct.cx18, %struct.cx18* %66, i32 0, i32 0
  %68 = call i32 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %64
  %71 = load %struct.cx18*, %struct.cx18** %6, align 8
  %72 = getelementptr inbounds %struct.cx18, %struct.cx18* %71, i32 0, i32 1
  %73 = call i64 @atomic_read(i32* %72)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %77 = call i32 @cx18_release_stream(%struct.cx18_stream* %76)
  %78 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %79 = call i32 @kfree(%struct.cx18_open_id* %78)
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %99

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %85 = load %struct.cx18*, %struct.cx18** %6, align 8
  %86 = getelementptr inbounds %struct.cx18, %struct.cx18* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  %88 = load %struct.cx18*, %struct.cx18** %6, align 8
  %89 = call i32 @cx18_mute(%struct.cx18* %88)
  %90 = load %struct.cx18*, %struct.cx18** %6, align 8
  %91 = load i32, i32* @tuner, align 4
  %92 = load i32, i32* @s_radio, align 4
  %93 = call i32 @cx18_call_all(%struct.cx18* %90, i32 %91, i32 %92)
  %94 = load %struct.cx18*, %struct.cx18** %6, align 8
  %95 = call i32 @cx18_audio_set_io(%struct.cx18* %94)
  %96 = load %struct.cx18*, %struct.cx18** %6, align 8
  %97 = call i32 @cx18_unmute(%struct.cx18* %96)
  br label %98

98:                                               ; preds = %83, %23
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %75, %59, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @CX18_DEBUG_FILE(i8*, i32) #1

declare dso_local %struct.cx18_open_id* @kmalloc(i32, i32) #1

declare dso_local i32 @CX18_DEBUG_WARN(i8*) #1

declare dso_local i32 @v4l2_prio_open(i32*, i32*) #1

declare dso_local i64 @cx18_claim_stream(%struct.cx18_open_id*, i64) #1

declare dso_local i32 @kfree(%struct.cx18_open_id*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @cx18_release_stream(%struct.cx18_stream*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_audio_set_io(%struct.cx18*) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

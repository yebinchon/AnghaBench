; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-firmware.c_ivtv_firmware_versions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-firmware.c_ivtv_firmware_versions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@CX2341X_ENC_GET_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Encoder revision: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Recommended firmware version is 0x02060039.\0A\00", align 1
@CX2341X_DEC_GET_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Decoder revision: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_firmware_versions(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %3, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %4, align 8
  %9 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %10 = load i32, i32* @CX2341X_ENC_GET_VERSION, align 4
  %11 = call i32 @ivtv_vapi_result(%struct.ivtv* %9, i32* %8, i32 %10, i32 0)
  %12 = getelementptr inbounds i32, i32* %8, i64 0
  %13 = load i32, i32* %12, align 16
  %14 = call i32 @IVTV_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds i32, i32* %8, i64 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ne i32 %16, 33947705
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %1
  %21 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %22 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %27 = load i32, i32* @CX2341X_DEC_GET_VERSION, align 4
  %28 = call i32 @ivtv_vapi_result(%struct.ivtv* %26, i32* %8, i32 %27, i32 0)
  %29 = getelementptr inbounds i32, i32* %8, i64 0
  %30 = load i32, i32* %29, align 16
  %31 = call i32 @IVTV_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %33)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i32*, i32, i32) #2

declare dso_local i32 @IVTV_INFO(i8*, i32) #2

declare dso_local i32 @IVTV_WARN(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

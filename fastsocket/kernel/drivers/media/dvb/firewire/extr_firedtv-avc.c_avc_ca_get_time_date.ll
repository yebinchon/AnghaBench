; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_ca_get_time_date.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_ca_get_time_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i64*, i32, i32 }
%struct.avc_response_frame = type { i32* }

@AVC_CTYPE_STATUS = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i64 0, align 8
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i64 0, align 8
@SFE_VENDOR_OPCODE_CA2HOST = common dso_local global i64 0, align 8
@SFE_VENDOR_TAG_CA_DATE_TIME = common dso_local global i64 0, align 8
@LAST_OPERAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_ca_get_time_date(%struct.firedtv* %0, i32* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.avc_command_frame*, align 8
  %6 = alloca %struct.avc_response_frame*, align 8
  %7 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %9 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %12, %struct.avc_command_frame** %5, align 8
  %13 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %14 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %17, %struct.avc_response_frame** %6, align 8
  %18 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %19 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i32, i32* @AVC_CTYPE_STATUS, align 4
  %22 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %23 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %25 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %26 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  %29 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %30 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %32 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %33 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_0, align 8
  %35 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %36 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %34, i64* %38, align 8
  %39 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_1, align 8
  %40 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %41 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_2, align 8
  %45 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %46 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  store i64 %44, i64* %48, align 8
  %49 = load i64, i64* @SFE_VENDOR_OPCODE_CA2HOST, align 8
  %50 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %51 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 3
  store i64 %49, i64* %53, align 8
  %54 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %55 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 4
  store i64 0, i64* %57, align 8
  %58 = load i64, i64* @SFE_VENDOR_TAG_CA_DATE_TIME, align 8
  %59 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %60 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 5
  store i64 %58, i64* %62, align 8
  %63 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %64 = load i32, i32* @LAST_OPERAND, align 4
  %65 = call i32 @clear_operands(%struct.avc_command_frame* %63, i32 6, i32 %64)
  %66 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %67 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %66, i32 0, i32 1
  store i32 12, i32* %67, align 4
  %68 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %69 = call i32 @avc_write(%struct.firedtv* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %2
  br label %82

73:                                               ; preds = %2
  %74 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %75 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.avc_response_frame*, %struct.avc_response_frame** %6, align 8
  %78 = call i64 @get_ca_object_pos(%struct.avc_response_frame* %77)
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %4, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %72
  %83 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %84 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_operands(%struct.avc_command_frame*, i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i64 @get_ca_object_pos(%struct.avc_response_frame*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

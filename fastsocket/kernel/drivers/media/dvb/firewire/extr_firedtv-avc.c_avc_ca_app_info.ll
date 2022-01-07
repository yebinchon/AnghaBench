; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_ca_app_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_ca_app_info.c"
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
@SFE_VENDOR_TAG_CA_APPLICATION_INFO = common dso_local global i64 0, align 8
@LAST_OPERAND = common dso_local global i32 0, align 4
@EN50221_TAG_APP_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_ca_app_info(%struct.firedtv* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.avc_command_frame*, align 8
  %8 = alloca %struct.avc_response_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %12 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %15, %struct.avc_command_frame** %7, align 8
  %16 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %17 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %20, %struct.avc_response_frame** %8, align 8
  %21 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %22 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %21, i32 0, i32 2
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* @AVC_CTYPE_STATUS, align 4
  %25 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %26 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %28 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %29 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %27, %30
  %32 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %33 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %35 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %36 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_0, align 8
  %38 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %39 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_1, align 8
  %43 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %44 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 %42, i64* %46, align 8
  %47 = load i64, i64* @SFE_VENDOR_DE_COMPANYID_2, align 8
  %48 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %49 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  store i64 %47, i64* %51, align 8
  %52 = load i64, i64* @SFE_VENDOR_OPCODE_CA2HOST, align 8
  %53 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %54 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 3
  store i64 %52, i64* %56, align 8
  %57 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %58 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 4
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* @SFE_VENDOR_TAG_CA_APPLICATION_INFO, align 8
  %62 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %63 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 5
  store i64 %61, i64* %65, align 8
  %66 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %67 = load i32, i32* @LAST_OPERAND, align 4
  %68 = call i32 @clear_operands(%struct.avc_command_frame* %66, i32 6, i32 %67)
  %69 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %70 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %69, i32 0, i32 1
  store i32 12, i32* %70, align 4
  %71 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %72 = call i32 @avc_write(%struct.firedtv* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %3
  br label %135

76:                                               ; preds = %3
  %77 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %78 = call i32 @get_ca_object_pos(%struct.avc_response_frame* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @EN50221_TAG_APP_INFO, align 4
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 %82, i8* %84, align 1
  %85 = load i32, i32* @EN50221_TAG_APP_INFO, align 4
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* @EN50221_TAG_APP_INFO, align 4
  %92 = ashr i32 %91, 0
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 %94, i8* %96, align 1
  %97 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %98 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 6, %104
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 3
  store i8 %106, i8* %108, align 1
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 4
  store i8 1, i8* %110, align 1
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  %113 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %114 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %120 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 5, %126
  %128 = call i32 @memcpy(i8* %112, i32* %118, i32 %127)
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %132, 4
  %134 = load i32*, i32** %6, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %76, %75
  %136 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %137 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %136, i32 0, i32 2
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %10, align 4
  ret i32 %139
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_operands(%struct.avc_command_frame*, i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @get_ca_object_pos(%struct.avc_response_frame*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

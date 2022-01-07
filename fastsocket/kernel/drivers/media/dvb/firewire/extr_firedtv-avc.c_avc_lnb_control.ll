; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_lnb_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_lnb_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i64 }
%struct.dvb_diseqc_master_cmd = type { i32, i32* }
%struct.avc_command_frame = type { i32, i8*, i32, i32 }
%struct.avc_response_frame = type { i64 }

@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i8 0, align 1
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i8 0, align 1
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i8 0, align 1
@SFE_VENDOR_OPCODE_LNB_CONTROL = common dso_local global i8 0, align 1
@AVC_RESPONSE_ACCEPTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"LNB control failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_lnb_control(%struct.firedtv* %0, i8 signext %1, i8 signext %2, i8 signext %3, i8 signext %4, %struct.dvb_diseqc_master_cmd* %5) #0 {
  %7 = alloca %struct.firedtv*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %13 = alloca %struct.avc_command_frame*, align 8
  %14 = alloca %struct.avc_response_frame*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store %struct.dvb_diseqc_master_cmd* %5, %struct.dvb_diseqc_master_cmd** %12, align 8
  %19 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %20 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = bitcast i8* %22 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %23, %struct.avc_command_frame** %13, align 8
  %24 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %25 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %28, %struct.avc_response_frame** %14, align 8
  %29 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %30 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %33 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %34 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %36 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %37 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %35, %38
  %40 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %41 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %43 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %44 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i8, i8* @SFE_VENDOR_DE_COMPANYID_0, align 1
  %46 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %47 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 %45, i8* %49, align 1
  %50 = load i8, i8* @SFE_VENDOR_DE_COMPANYID_1, align 1
  %51 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %52 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8 %50, i8* %54, align 1
  %55 = load i8, i8* @SFE_VENDOR_DE_COMPANYID_2, align 1
  %56 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %57 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  store i8 %55, i8* %59, align 1
  %60 = load i8, i8* @SFE_VENDOR_OPCODE_LNB_CONTROL, align 1
  %61 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %62 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 %60, i8* %64, align 1
  %65 = load i8, i8* %8, align 1
  %66 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %67 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  store i8 %65, i8* %69, align 1
  %70 = load i8, i8* %11, align 1
  %71 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %72 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 5
  store i8 %70, i8* %74, align 1
  store i32 6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %127, %6
  %76 = load i32, i32* %16, align 4
  %77 = load i8, i8* %11, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %130

80:                                               ; preds = %75
  %81 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %12, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %81, i64 %83
  %85 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = trunc i32 %86 to i8
  %88 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %89 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %15, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %90, i64 %93
  store i8 %87, i8* %94, align 1
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %123, %80
  %96 = load i32, i32* %17, align 4
  %97 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %12, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %97, i64 %99
  %101 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %96, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %95
  %105 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %105, i64 %107
  %109 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = trunc i32 %114 to i8
  %116 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %117 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  store i8 %115, i8* %122, align 1
  br label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %95

126:                                              ; preds = %95
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %75

130:                                              ; preds = %75
  %131 = load i8, i8* %9, align 1
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8 %131, i8* %138, align 1
  %139 = load i8, i8* %10, align 1
  %140 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %141 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8 %139, i8* %146, align 1
  %147 = load %struct.avc_command_frame*, %struct.avc_command_frame** %13, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @pad_operands(%struct.avc_command_frame* %147, i32 %148)
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 3, %150
  %152 = call i32 @ALIGN(i32 %151, i32 4)
  %153 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %154 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 4
  %155 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %156 = call i32 @avc_write(%struct.firedtv* %155)
  store i32 %156, i32* %18, align 4
  %157 = load i32, i32* %18, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %130
  br label %174

160:                                              ; preds = %130
  %161 = load %struct.avc_response_frame*, %struct.avc_response_frame** %14, align 8
  %162 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @AVC_RESPONSE_ACCEPTED, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %168 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %166, %160
  br label %174

174:                                              ; preds = %173, %159
  %175 = load %struct.firedtv*, %struct.firedtv** %7, align 8
  %176 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %175, i32 0, i32 1
  %177 = call i32 @mutex_unlock(i32* %176)
  %178 = load i32, i32* %18, align 4
  ret i32 %178
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pad_operands(%struct.avc_command_frame*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

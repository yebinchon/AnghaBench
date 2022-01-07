; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_scsi_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_scsi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvfc_event = type { i64, %struct.scsi_cmnd*, %struct.TYPE_3__* }
%struct.scsi_cmnd = type { i32, i64, i32 (%struct.scsi_cmnd*)*, i32, i32 }
%struct.TYPE_3__ = type { %struct.ibmvfc_cmd }
%struct.ibmvfc_cmd = type { i32, i32, i64, i32, %struct.ibmvfc_fcp_rsp }
%struct.ibmvfc_fcp_rsp = type { i64, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@IBMVFC_ADAPTER_RESID_VALID = common dso_local global i32 0, align 4
@FCP_RESID_UNDER = common dso_local global i32 0, align 4
@FCP_RSP_LEN_VALID = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@FCP_SNS_LEN_VALID = common dso_local global i32 0, align 4
@IBMVFC_VIOS_FAILURE = common dso_local global i32 0, align 4
@IBMVFC_PLOGI_REQUIRED = common dso_local global i64 0, align 8
@FCP_RESID_OVER = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_scsi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_scsi_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_cmd*, align 8
  %4 = alloca %struct.ibmvfc_fcp_rsp*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %8 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.ibmvfc_cmd* %11, %struct.ibmvfc_cmd** %3, align 8
  %12 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %12, i32 0, i32 4
  store %struct.ibmvfc_fcp_rsp* %13, %struct.ibmvfc_fcp_rsp** %4, align 8
  %14 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %14, i32 0, i32 1
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %5, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = icmp ne %struct.scsi_cmnd* %20, null
  br i1 %21, label %22, label %179

22:                                               ; preds = %1
  %23 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IBMVFC_ADAPTER_RESID_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %30, i32 %33)
  br label %52

35:                                               ; preds = %22
  %36 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %37 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FCP_RESID_UNDER, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %44 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %43, i32 %46)
  br label %51

48:                                               ; preds = %35
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %151

57:                                               ; preds = %52
  %58 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %59 = call i32 @ibmvfc_get_err_result(%struct.ibmvfc_cmd* %58)
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %63 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @FCP_RSP_LEN_VALID, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %70 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %68, %57
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %80 = load i64, i64* %6, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %78, %72
  %83 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %84 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FCP_SNS_LEN_VALID, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %82
  %90 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %91 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = icmp sle i64 %95, 8
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %102 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i64, i64* %7, align 8
  %108 = call i32 @memcpy(i32 %100, i64 %106, i64 %107)
  br label %109

109:                                              ; preds = %97, %94, %89, %82
  %110 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %111 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IBMVFC_VIOS_FAILURE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.ibmvfc_cmd*, %struct.ibmvfc_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.ibmvfc_cmd, %struct.ibmvfc_cmd* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IBMVFC_PLOGI_REQUIRED, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ibmvfc_relogin(i32 %125)
  br label %127

127:                                              ; preds = %122, %116, %109
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %127
  %133 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %134 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load %struct.ibmvfc_fcp_rsp*, %struct.ibmvfc_fcp_rsp** %4, align 8
  %138 = getelementptr inbounds %struct.ibmvfc_fcp_rsp, %struct.ibmvfc_fcp_rsp* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @FCP_RESID_OVER, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %136, %132
  %144 = load i32, i32* @DID_ERROR, align 4
  %145 = shl i32 %144, 16
  %146 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %143, %136, %127
  %149 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %150 = call i32 @ibmvfc_log_error(%struct.ibmvfc_event* %149)
  br label %151

151:                                              ; preds = %148, %52
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %151
  %157 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %158 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %157)
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %160 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %159)
  %161 = sub nsw i64 %158, %160
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %163 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %156
  %167 = load i32, i32* @DID_ERROR, align 4
  %168 = shl i32 %167, 16
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %156, %151
  %172 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %173 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %172)
  %174 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %175 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %174, i32 0, i32 2
  %176 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %175, align 8
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %178 = call i32 %176(%struct.scsi_cmnd* %177)
  br label %179

179:                                              ; preds = %171, %1
  %180 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %181 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %186 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i32 @complete(i64 %187)
  br label %189

189:                                              ; preds = %184, %179
  %190 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %191 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %190)
  ret void
}

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @ibmvfc_get_err_result(%struct.ibmvfc_cmd*) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @ibmvfc_relogin(i32) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @ibmvfc_log_error(%struct.ibmvfc_event*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

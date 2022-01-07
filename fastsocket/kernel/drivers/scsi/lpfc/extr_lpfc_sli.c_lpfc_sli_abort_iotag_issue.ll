; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iotag_issue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_abort_iotag_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i64 }
%struct.lpfc_sli_ring = type { i32, i32 }
%struct.lpfc_iocbq = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.lpfc_vport* }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.lpfc_vport = type { i32 }

@CMD_ABORT_XRI_CN = common dso_local global i64 0, align 8
@CMD_CLOSE_XRI_CN = common dso_local global i64 0, align 8
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@ABORT_TYPE_ABTS = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@lpfc_sli_abort_els_cmpl = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"0339 Abort xri x%x, original iotag x%x, abort cmd iotag x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_sli_ring*, %struct.lpfc_iocbq*)* @lpfc_sli_abort_iotag_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli_abort_iotag_issue(%struct.lpfc_hba* %0, %struct.lpfc_sli_ring* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_sli_ring*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_vport*, align 8
  %9 = alloca %struct.lpfc_iocbq*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.lpfc_sli_ring* %1, %struct.lpfc_sli_ring** %6, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %7, align 8
  %14 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %15 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %14, i32 0, i32 6
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %15, align 8
  store %struct.lpfc_vport* %16, %struct.lpfc_vport** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 5
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %10, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %32 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %24, %3
  store i32 0, i32* %4, align 4
  br label %188

38:                                               ; preds = %30
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %40 = call %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba* %39)
  store %struct.lpfc_iocbq* %40, %struct.lpfc_iocbq** %9, align 8
  %41 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %42 = icmp eq %struct.lpfc_iocbq* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %188

44:                                               ; preds = %38
  %45 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %46 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %47 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %51 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %50, i32 0, i32 5
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %11, align 8
  %52 = load i32, i32* @ABORT_TYPE_ABTS, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @LPFC_SLI_REV4, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %44
  %70 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %71 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %78 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  br label %92

84:                                               ; preds = %44
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %69
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %101 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %106 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @LPFC_IO_FCP, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %92
  %112 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %114 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %92
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @LPFC_LINK_UP, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load i64, i64* @CMD_ABORT_XRI_CN, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  br label %131

127:                                              ; preds = %117
  %128 = load i64, i64* @CMD_CLOSE_XRI_CN, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %123
  %132 = load i32, i32* @lpfc_sli_abort_els_cmpl, align 4
  %133 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %134 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %8, align 8
  %136 = load i32, i32* @KERN_INFO, align 4
  %137 = load i32, i32* @LOG_SLI, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %142, i32 %147, i32 %150)
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %153 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @LPFC_SLI_REV4, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %131
  %158 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %159 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %158, i32 0, i32 1
  %160 = load i64, i64* %13, align 8
  %161 = call i32 @spin_lock_irqsave(i32* %159, i64 %160)
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %163 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %164 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %167 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %162, i32 %165, %struct.lpfc_iocbq* %166, i32 0)
  store i32 %167, i32* %12, align 4
  %168 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %169 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %168, i32 0, i32 1
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32* %169, i64 %170)
  br label %179

172:                                              ; preds = %131
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %174 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %6, align 8
  %175 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %178 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %173, i32 %176, %struct.lpfc_iocbq* %177, i32 0)
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %172, %157
  %180 = load i32, i32* %12, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %184 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %9, align 8
  %185 = call i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba* %183, %struct.lpfc_iocbq* %184)
  br label %186

186:                                              ; preds = %182, %179
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %43, %37
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_iocb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_issue_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32 }
%struct.TYPE_3__ = type { %struct.lpfc_queue**, %struct.lpfc_fcp_eq_hdl*, i32 }
%struct.lpfc_queue = type { i32 }
%struct.lpfc_fcp_eq_hdl = type { i32 }
%struct.lpfc_iocbq = type { i32, i32 }
%struct.lpfc_eqe = type { i32 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_FCP = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4
@MAX_SLI3_CONFIGURED_RINGS = common dso_local global i64 0, align 8
@lpfc_fcp_look_ahead = common dso_local global i64 0, align 8
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %0, i64 %1, %struct.lpfc_iocbq* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lpfc_fcp_eq_hdl*, align 8
  %11 = alloca %struct.lpfc_sli_ring*, align 8
  %12 = alloca %struct.lpfc_queue*, align 8
  %13 = alloca %struct.lpfc_eqe*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LPFC_SLI_REV4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %138

22:                                               ; preds = %4
  %23 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %24 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LPFC_IO_FCP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %117

29:                                               ; preds = %22
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @IOCB_ERROR, align 4
  store i32 %40, i32* %5, align 4
  br label %154

41:                                               ; preds = %29
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %43 = call i32 @lpfc_sli4_scmd_to_wqidx_distr(%struct.lpfc_hba* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %46 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i64, i64* @MAX_SLI3_CONFIGURED_RINGS, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %47, %49
  store i64 %50, i64* %7, align 8
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %54, i64 %55
  store %struct.lpfc_sli_ring* %56, %struct.lpfc_sli_ring** %11, align 8
  %57 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %11, align 8
  %58 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %57, i32 0, i32 0
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %61, i64 %62, %struct.lpfc_iocbq* %63, i64 %64)
  store i32 %65, i32* %15, align 4
  %66 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %11, align 8
  %67 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %66, i32 0, i32 0
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i64, i64* @lpfc_fcp_look_ahead, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %116

72:                                               ; preds = %41
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %74 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %76, i64 %78
  store %struct.lpfc_fcp_eq_hdl* %79, %struct.lpfc_fcp_eq_hdl** %10, align 8
  %80 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %10, align 8
  %81 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %80, i32 0, i32 0
  %82 = call i64 @atomic_dec_and_test(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %72
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load %struct.lpfc_queue**, %struct.lpfc_queue*** %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.lpfc_queue*, %struct.lpfc_queue** %88, i64 %90
  %92 = load %struct.lpfc_queue*, %struct.lpfc_queue** %91, align 8
  store %struct.lpfc_queue* %92, %struct.lpfc_queue** %12, align 8
  %93 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %94 = call i32 @lpfc_sli4_eq_clr_intr(%struct.lpfc_queue* %93)
  br label %95

95:                                               ; preds = %99, %84
  %96 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %97 = call %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %96)
  store %struct.lpfc_eqe* %97, %struct.lpfc_eqe** %13, align 8
  %98 = icmp ne %struct.lpfc_eqe* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %101 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %13, align 8
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba* %100, %struct.lpfc_eqe* %101, i32 %102)
  %104 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %95

108:                                              ; preds = %95
  %109 = load %struct.lpfc_queue*, %struct.lpfc_queue** %12, align 8
  %110 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %111 = call i32 @lpfc_sli4_eq_release(%struct.lpfc_queue* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %72
  %113 = load %struct.lpfc_fcp_eq_hdl*, %struct.lpfc_fcp_eq_hdl** %10, align 8
  %114 = getelementptr inbounds %struct.lpfc_fcp_eq_hdl, %struct.lpfc_fcp_eq_hdl* %113, i32 0, i32 0
  %115 = call i32 @atomic_inc(i32* %114)
  br label %116

116:                                              ; preds = %112, %41
  br label %137

117:                                              ; preds = %22
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %121, i64 %122
  store %struct.lpfc_sli_ring* %123, %struct.lpfc_sli_ring** %11, align 8
  %124 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %11, align 8
  %125 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %124, i32 0, i32 0
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @spin_lock_irqsave(i32* %125, i64 %126)
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %128, i64 %129, %struct.lpfc_iocbq* %130, i64 %131)
  store i32 %132, i32* %15, align 4
  %133 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %11, align 8
  %134 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %133, i32 0, i32 0
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %117, %116
  br label %152

138:                                              ; preds = %4
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 1
  %141 = load i64, i64* %14, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %143, i64 %144, %struct.lpfc_iocbq* %145, i64 %146)
  store i32 %147, i32* %15, align 4
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 1
  %150 = load i64, i64* %14, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %138, %137
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %152, %39
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli4_scmd_to_wqidx_distr(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba*, i64, %struct.lpfc_iocbq*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @lpfc_sli4_eq_clr_intr(%struct.lpfc_queue*) #1

declare dso_local %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue*) #1

declare dso_local i32 @lpfc_sli4_hba_handle_eqe(%struct.lpfc_hba*, %struct.lpfc_eqe*, i32) #1

declare dso_local i32 @lpfc_sli4_eq_release(%struct.lpfc_queue*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

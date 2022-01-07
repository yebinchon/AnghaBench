; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_fp_handle_fcp_wcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_fp_handle_fcp_wcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 (%struct.lpfc_hba*)* }
%struct.lpfc_queue = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lpfc_wcqe_complete = type { i32, i32, i32 }
%struct.lpfc_iocbq = type { i32, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* }
%struct.lpfc_hba.0 = type opaque

@lpfc_wcqe_c_status = common dso_local global i32 0, align 4
@IOSTAT_LOCAL_REJECT = common dso_local global i64 0, align 8
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@IOERR_NO_RESOURCES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [103 x i8] c"0373 FCP complete error: status=x%x, hw_status=x%x, total_data_specified=%d, parameter=x%x, word3=x%x\0A\00", align 1
@lpfc_wcqe_c_hw_status = common dso_local global i32 0, align 4
@lpfc_wcqe_c_request_tag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"0374 FCP complete with no corresponding cmdiocb: iotag (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"0375 FCP cmdiocb not callback function iotag: (%d)\0A\00", align 1
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_queue*, %struct.lpfc_wcqe_complete*)* @lpfc_sli4_fp_handle_fcp_wcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sli4_fp_handle_fcp_wcqe(%struct.lpfc_hba* %0, %struct.lpfc_queue* %1, %struct.lpfc_wcqe_complete* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  %6 = alloca %struct.lpfc_wcqe_complete*, align 8
  %7 = alloca %struct.lpfc_sli_ring*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_iocbq, align 8
  %10 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  store %struct.lpfc_wcqe_complete* %2, %struct.lpfc_wcqe_complete** %6, align 8
  %11 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %11, i32 0, i32 0
  %13 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %12, align 8
  store %struct.lpfc_sli_ring* %13, %struct.lpfc_sli_ring** %7, align 8
  %14 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %15 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %16 = call i64 @bf_get(i32 %14, %struct.lpfc_wcqe_complete* %15)
  %17 = trunc i64 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %3
  %21 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %22 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %23 = call i64 @bf_get(i32 %21, %struct.lpfc_wcqe_complete* %22)
  %24 = load i64, i64* @IOSTAT_LOCAL_REJECT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %28 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @IOERR_NO_RESOURCES, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 1
  %37 = load i32 (%struct.lpfc_hba*)*, i32 (%struct.lpfc_hba*)** %36, align 8
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = call i32 %37(%struct.lpfc_hba* %38)
  br label %40

40:                                               ; preds = %34, %26, %20
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = load i32, i32* @KERN_WARNING, align 4
  %43 = load i32, i32* @LOG_SLI, align 4
  %44 = load i32, i32* @lpfc_wcqe_c_status, align 4
  %45 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %46 = call i64 @bf_get(i32 %44, %struct.lpfc_wcqe_complete* %45)
  %47 = load i32, i32* @lpfc_wcqe_c_hw_status, align 4
  %48 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %49 = call i64 @bf_get(i32 %47, %struct.lpfc_wcqe_complete* %48)
  %50 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_wcqe_complete, %struct.lpfc_wcqe_complete* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %49, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %40, %3
  %61 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %62 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %61, i32 0, i32 0
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %71 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %72 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %73 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %74 = call i64 @bf_get(i32 %72, %struct.lpfc_wcqe_complete* %73)
  %75 = call %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba* %70, %struct.lpfc_sli_ring* %71, i64 %74)
  store %struct.lpfc_iocbq* %75, %struct.lpfc_iocbq** %8, align 8
  %76 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %7, align 8
  %77 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %76, i32 0, i32 0
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %81 = icmp ne %struct.lpfc_iocbq* %80, null
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %60
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %88 = load i32, i32* @KERN_WARNING, align 4
  %89 = load i32, i32* @LOG_SLI, align 4
  %90 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %91 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %92 = call i64 @bf_get(i32 %90, %struct.lpfc_wcqe_complete* %91)
  %93 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  br label %145

94:                                               ; preds = %60
  %95 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %95, i32 0, i32 1
  %97 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %96, align 8
  %98 = icmp ne i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* %97, null
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %94
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = load i32, i32* @KERN_WARNING, align 4
  %106 = load i32, i32* @LOG_SLI, align 4
  %107 = load i32, i32* @lpfc_wcqe_c_request_tag, align 4
  %108 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %109 = call i64 @bf_get(i32 %107, %struct.lpfc_wcqe_complete* %108)
  %110 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i64, ...) @lpfc_printf_log(%struct.lpfc_hba* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %109)
  br label %145

111:                                              ; preds = %94
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %113 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %114 = load %struct.lpfc_wcqe_complete*, %struct.lpfc_wcqe_complete** %6, align 8
  %115 = call i32 @lpfc_sli4_iocb_param_transfer(%struct.lpfc_hba* %112, %struct.lpfc_iocbq* %9, %struct.lpfc_iocbq* %113, %struct.lpfc_wcqe_complete* %114)
  %116 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %117 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %111
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 0
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %128 = xor i32 %127, -1
  %129 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %130 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 0
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %122, %111
  %138 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %139 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %138, i32 0, i32 1
  %140 = load i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)*, i32 (%struct.lpfc_hba.0*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)** %139, align 8
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = bitcast %struct.lpfc_hba* %141 to %struct.lpfc_hba.0*
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %144 = call i32 %140(%struct.lpfc_hba.0* %142, %struct.lpfc_iocbq* %143, %struct.lpfc_iocbq* %9)
  br label %145

145:                                              ; preds = %137, %103, %86
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_wcqe_complete*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_iocbq_lookup_by_tag(%struct.lpfc_hba*, %struct.lpfc_sli_ring*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_sli4_iocb_param_transfer(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*, %struct.lpfc_wcqe_complete*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

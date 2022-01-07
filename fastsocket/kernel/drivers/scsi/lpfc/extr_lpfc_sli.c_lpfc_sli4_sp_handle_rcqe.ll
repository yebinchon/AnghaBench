; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_rcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_sp_handle_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.lpfc_queue*, %struct.lpfc_queue* }
%struct.lpfc_queue = type { i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_rcqe = type { i32 }
%struct.hbq_dmabuf = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@lpfc_cqe_code = common dso_local global i32 0, align 4
@CQE_CODE_RECEIVE_V1 = common dso_local global i64 0, align 8
@lpfc_rcqe_rq_id_v1 = common dso_local global i32 0, align 4
@lpfc_rcqe_rq_id = common dso_local global i32 0, align 4
@lpfc_rcqe_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"2537 Receive Frame Truncated!!\0A\00", align 1
@HBA_SP_QUEUE_EVT = common dso_local global i32 0, align 4
@HBA_POST_RECEIVE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_rcqe*)* @lpfc_sli4_sp_handle_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_sp_handle_rcqe(%struct.lpfc_hba* %0, %struct.lpfc_rcqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_rcqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_queue*, align 8
  %8 = alloca %struct.lpfc_queue*, align 8
  %9 = alloca %struct.hbq_dmabuf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_rcqe* %1, %struct.lpfc_rcqe** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.lpfc_queue*, %struct.lpfc_queue** %15, align 8
  store %struct.lpfc_queue* %16, %struct.lpfc_queue** %7, align 8
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %18 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.lpfc_queue*, %struct.lpfc_queue** %19, align 8
  store %struct.lpfc_queue* %20, %struct.lpfc_queue** %8, align 8
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %22 = icmp ne %struct.lpfc_queue* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %2
  %28 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %29 = icmp ne %struct.lpfc_queue* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %2
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %144

36:                                               ; preds = %27
  %37 = load i32, i32* @lpfc_cqe_code, align 4
  %38 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %39 = call i64 @bf_get(i32 %37, %struct.lpfc_rcqe* %38)
  %40 = load i64, i64* @CQE_CODE_RECEIVE_V1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @lpfc_rcqe_rq_id_v1, align 4
  %44 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %45 = call i64 @bf_get(i32 %43, %struct.lpfc_rcqe* %44)
  store i64 %45, i64* %11, align 8
  br label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @lpfc_rcqe_rq_id, align 4
  %48 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %49 = call i64 @bf_get(i32 %47, %struct.lpfc_rcqe* %48)
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %53 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %142

57:                                               ; preds = %50
  %58 = load i32, i32* @lpfc_rcqe_status, align 4
  %59 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %60 = call i64 @bf_get(i32 %58, %struct.lpfc_rcqe* %59)
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  switch i64 %61, label %141 [
    i64 129, label %62
    i64 128, label %71
    i64 130, label %123
    i64 131, label %123
  ]

62:                                               ; preds = %57
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* @LOG_SLI, align 4
  %66 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %68 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %57, %62
  %72 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %73 = load %struct.lpfc_queue*, %struct.lpfc_queue** %8, align 8
  %74 = call i32 @lpfc_sli4_rq_release(%struct.lpfc_queue* %72, %struct.lpfc_queue* %73)
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i64, i64* %12, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 3
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = call %struct.hbq_dmabuf* @lpfc_sli_hbqbuf_get(i32* %83)
  store %struct.hbq_dmabuf* %84, %struct.hbq_dmabuf** %9, align 8
  %85 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %9, align 8
  %86 = icmp ne %struct.hbq_dmabuf* %85, null
  br i1 %86, label %96, label %87

87:                                               ; preds = %71
  %88 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 0
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %142

96:                                               ; preds = %71
  %97 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %98 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %9, align 8
  %102 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.lpfc_rcqe*, %struct.lpfc_rcqe** %5, align 8
  %106 = call i32 @memcpy(i32* %104, %struct.lpfc_rcqe* %105, i32 4)
  %107 = load %struct.hbq_dmabuf*, %struct.hbq_dmabuf** %9, align 8
  %108 = getelementptr inbounds %struct.hbq_dmabuf, %struct.hbq_dmabuf* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = call i32 @list_add_tail(i32* %109, i32* %112)
  %114 = load i32, i32* @HBA_SP_QUEUE_EVT, align 4
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 0
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  store i32 1, i32* %6, align 4
  br label %141

123:                                              ; preds = %57, %57
  %124 = load %struct.lpfc_queue*, %struct.lpfc_queue** %7, align 8
  %125 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 0
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @spin_lock_irqsave(i32* %129, i64 %130)
  %132 = load i32, i32* @HBA_POST_RECEIVE_BUFFER, align 4
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %134 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 0
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  store i32 1, i32* %6, align 4
  br label %141

141:                                              ; preds = %57, %123, %96
  br label %142

142:                                              ; preds = %141, %87, %56
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %34
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bf_get(i32, %struct.lpfc_rcqe*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_sli4_rq_release(%struct.lpfc_queue*, %struct.lpfc_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.hbq_dmabuf* @lpfc_sli_hbqbuf_get(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.lpfc_rcqe*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

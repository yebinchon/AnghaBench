; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eq_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.lpfc_eqe* }
%struct.lpfc_eqe = type { i32 }
%struct.lpfc_register = type { i64 }

@lpfc_eqe_valid = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_arm = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_eqci = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_num_released = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_qt = common dso_local global i32 0, align 4
@LPFC_QUEUE_TYPE_EVENT = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_eqid_hi = common dso_local global i32 0, align 4
@LPFC_EQID_HI_FIELD_SHIFT = common dso_local global i32 0, align 4
@lpfc_eqcq_doorbell_eqid_lo = common dso_local global i32 0, align 4
@INTx = common dso_local global i64 0, align 8
@LPFC_QUEUE_REARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_eq_release(%struct.lpfc_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_eqe*, align 8
  %8 = alloca %struct.lpfc_register, align 8
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %10 = icmp ne %struct.lpfc_queue* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %25, %16
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %30 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %33, align 8
  store %struct.lpfc_eqe* %34, %struct.lpfc_eqe** %7, align 8
  %35 = load i32, i32* @lpfc_eqe_valid, align 4
  %36 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %7, align 8
  %37 = call i32 @bf_set_le32(i32 %35, %struct.lpfc_eqe* %36, i32 0)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = urem i64 %43, %47
  %49 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %50 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %17

51:                                               ; preds = %17
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %122

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %8, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* @lpfc_eqcq_doorbell_arm, align 4
  %70 = call i32 @bf_set(i32 %69, %struct.lpfc_register* %8, i32 1)
  %71 = load i32, i32* @lpfc_eqcq_doorbell_eqci, align 4
  %72 = call i32 @bf_set(i32 %71, %struct.lpfc_register* %8, i32 1)
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* @lpfc_eqcq_doorbell_num_released, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @bf_set(i32 %74, %struct.lpfc_register* %8, i32 %75)
  %77 = load i32, i32* @lpfc_eqcq_doorbell_qt, align 4
  %78 = load i32, i32* @LPFC_QUEUE_TYPE_EVENT, align 4
  %79 = call i32 @bf_set(i32 %77, %struct.lpfc_register* %8, i32 %78)
  %80 = load i32, i32* @lpfc_eqcq_doorbell_eqid_hi, align 4
  %81 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %82 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @LPFC_EQID_HI_FIELD_SHIFT, align 4
  %85 = ashr i32 %83, %84
  %86 = call i32 @bf_set(i32 %80, %struct.lpfc_register* %8, i32 %85)
  %87 = load i32, i32* @lpfc_eqcq_doorbell_eqid_lo, align 4
  %88 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %89 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bf_set(i32 %87, %struct.lpfc_register* %8, i32 %90)
  %92 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %8, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %95 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @writel(i64 %93, i32 %99)
  %101 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %102 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %101, i32 0, i32 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @INTx, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %73
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @LPFC_QUEUE_REARM, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %114 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %113, i32 0, i32 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @readl(i32 %118)
  br label %120

120:                                              ; preds = %112, %108, %73
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %63, %15
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_set_le32(i32, %struct.lpfc_eqe*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

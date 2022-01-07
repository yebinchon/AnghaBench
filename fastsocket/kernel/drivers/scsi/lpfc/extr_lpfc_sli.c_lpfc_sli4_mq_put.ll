; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mq_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_mq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i64, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.lpfc_mqe* }
%struct.lpfc_mqe = type { i32 }
%struct.lpfc_register = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@lpfc_mq_doorbell_num_posted = common dso_local global i32 0, align 4
@lpfc_mq_doorbell_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*, %struct.lpfc_mqe*)* @lpfc_sli4_mq_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_mq_put(%struct.lpfc_queue* %0, %struct.lpfc_mqe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %struct.lpfc_mqe*, align 8
  %6 = alloca %struct.lpfc_mqe*, align 8
  %7 = alloca %struct.lpfc_register, align 8
  %8 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %4, align 8
  store %struct.lpfc_mqe* %1, %struct.lpfc_mqe** %5, align 8
  %9 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %10 = icmp ne %struct.lpfc_queue* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %90

18:                                               ; preds = %2
  %19 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %20 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %19, i32 0, i32 6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %26, align 8
  store %struct.lpfc_mqe* %27, %struct.lpfc_mqe** %6, align 8
  %28 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %33 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = urem i64 %31, %35
  %37 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %38 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %18
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %90

45:                                               ; preds = %18
  %46 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %5, align 8
  %47 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %48 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %49 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_mqe* %46, %struct.lpfc_mqe* %47, i32 %50)
  %52 = load %struct.lpfc_mqe*, %struct.lpfc_mqe** %6, align 8
  %53 = bitcast %struct.lpfc_mqe* %52 to i32*
  %54 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %55 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32* %53, i32** %57, align 8
  %58 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %59 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %63 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  %66 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %67 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = urem i64 %65, %69
  %71 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %72 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @lpfc_mq_doorbell_num_posted, align 4
  %75 = call i32 @bf_set(i32 %74, %struct.lpfc_register* %7, i32 1)
  %76 = load i32, i32* @lpfc_mq_doorbell_id, align 4
  %77 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %78 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bf_set(i32 %76, %struct.lpfc_register* %7, i32 %79)
  %81 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %84 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %83, i32 0, i32 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @writel(i64 %82, i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %45, %42, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli_pcimem_bcopy(%struct.lpfc_mqe*, %struct.lpfc_mqe*, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_register*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

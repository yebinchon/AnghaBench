; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_cq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_cq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_cqe = type { i32 }
%struct.lpfc_queue = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lpfc_cqe* }

@lpfc_cqe_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_cqe* (%struct.lpfc_queue*)* @lpfc_sli4_cq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_cqe* @lpfc_sli4_cq_get(%struct.lpfc_queue* %0) #0 {
  %2 = alloca %struct.lpfc_cqe*, align 8
  %3 = alloca %struct.lpfc_queue*, align 8
  %4 = alloca %struct.lpfc_cqe*, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %3, align 8
  %6 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %7 = icmp ne %struct.lpfc_queue* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.lpfc_cqe* null, %struct.lpfc_cqe** %2, align 8
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* @lpfc_cqe_valid, align 4
  %15 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %16 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %22, align 8
  %24 = call i32 @bf_get_le32(i32 %14, %struct.lpfc_cqe* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  store %struct.lpfc_cqe* null, %struct.lpfc_cqe** %2, align 8
  br label %59

27:                                               ; preds = %13
  %28 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %29 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  %32 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %33 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = urem i64 %31, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %40 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store %struct.lpfc_cqe* null, %struct.lpfc_cqe** %2, align 8
  br label %59

44:                                               ; preds = %27
  %45 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %46 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %52, align 8
  store %struct.lpfc_cqe* %53, %struct.lpfc_cqe** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %57 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %4, align 8
  store %struct.lpfc_cqe* %58, %struct.lpfc_cqe** %2, align 8
  br label %59

59:                                               ; preds = %44, %43, %26, %12
  %60 = load %struct.lpfc_cqe*, %struct.lpfc_cqe** %2, align 8
  ret %struct.lpfc_cqe* %60
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_get_le32(i32, %struct.lpfc_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

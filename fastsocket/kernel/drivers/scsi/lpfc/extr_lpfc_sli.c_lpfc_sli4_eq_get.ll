; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eq_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_eq_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_eqe = type { i32 }
%struct.lpfc_queue = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.lpfc_eqe* }

@lpfc_eqe_valid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lpfc_eqe* (%struct.lpfc_queue*)* @lpfc_sli4_eq_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lpfc_eqe* @lpfc_sli4_eq_get(%struct.lpfc_queue* %0) #0 {
  %2 = alloca %struct.lpfc_eqe*, align 8
  %3 = alloca %struct.lpfc_queue*, align 8
  %4 = alloca %struct.lpfc_eqe*, align 8
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
  store %struct.lpfc_eqe* null, %struct.lpfc_eqe** %2, align 8
  br label %51

13:                                               ; preds = %1
  %14 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %15 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %18 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %21, align 8
  store %struct.lpfc_eqe* %22, %struct.lpfc_eqe** %4, align 8
  %23 = load i32, i32* @lpfc_eqe_valid, align 4
  %24 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %4, align 8
  %25 = call i32 @bf_get_le32(i32 %23, %struct.lpfc_eqe* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  store %struct.lpfc_eqe* null, %struct.lpfc_eqe** %2, align 8
  br label %51

28:                                               ; preds = %13
  %29 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %30 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = urem i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %41 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store %struct.lpfc_eqe* null, %struct.lpfc_eqe** %2, align 8
  br label %51

45:                                               ; preds = %28
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.lpfc_queue*, %struct.lpfc_queue** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %4, align 8
  store %struct.lpfc_eqe* %50, %struct.lpfc_eqe** %2, align 8
  br label %51

51:                                               ; preds = %45, %44, %27, %12
  %52 = load %struct.lpfc_eqe*, %struct.lpfc_eqe** %2, align 8
  ret %struct.lpfc_eqe* %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bf_get_le32(i32, %struct.lpfc_eqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rq_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli4_rq_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_queue = type { i64, i32, i32 }

@LPFC_HRQ = common dso_local global i64 0, align 8
@LPFC_DRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_queue*, %struct.lpfc_queue*)* @lpfc_sli4_rq_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_rq_release(%struct.lpfc_queue* %0, %struct.lpfc_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_queue*, align 8
  %5 = alloca %struct.lpfc_queue*, align 8
  store %struct.lpfc_queue* %0, %struct.lpfc_queue** %4, align 8
  store %struct.lpfc_queue* %1, %struct.lpfc_queue** %5, align 8
  %6 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %7 = icmp ne %struct.lpfc_queue* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %14 = icmp ne %struct.lpfc_queue* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %54

20:                                               ; preds = %12
  %21 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LPFC_HRQ, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LPFC_DRQ, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  store i32 0, i32* %3, align 4
  br label %54

33:                                               ; preds = %26
  %34 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %39 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = srem i32 %37, %40
  %42 = load %struct.lpfc_queue*, %struct.lpfc_queue** %4, align 8
  %43 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %45 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  %48 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %49 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = srem i32 %47, %50
  %52 = load %struct.lpfc_queue*, %struct.lpfc_queue** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_queue, %struct.lpfc_queue* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %33, %32, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

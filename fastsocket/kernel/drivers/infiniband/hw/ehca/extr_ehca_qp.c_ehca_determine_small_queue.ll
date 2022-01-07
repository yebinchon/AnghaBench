; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ehca_determine_small_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_qp.c_ehca_determine_small_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_alloc_queue_parms = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_alloc_queue_parms*, i32, i32)* @ehca_determine_small_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehca_determine_small_queue(%struct.ehca_alloc_queue_parms* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ehca_alloc_queue_parms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ehca_alloc_queue_parms* %0, %struct.ehca_alloc_queue_parms** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %14

14:                                               ; preds = %23, %13
  %15 = load i32, i32* %9, align 4
  %16 = icmp sle i32 %15, 252
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %27

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 4, %25
  store i32 %26, i32* %9, align 4
  br label %14

27:                                               ; preds = %21, %14
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ehca_calc_wqe_size(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %4, align 8
  %34 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = mul nsw i32 %32, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 512
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %4, align 8
  %42 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %41, i32 0, i32 1
  store i32 2, i32* %42, align 4
  br label %53

43:                                               ; preds = %28
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 1024
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %4, align 8
  %48 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %47, i32 0, i32 1
  store i32 3, i32* %48, align 4
  br label %52

49:                                               ; preds = %43
  %50 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %4, align 8
  %51 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %40
  %54 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %4, align 8
  %55 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = load %struct.ehca_alloc_queue_parms*, %struct.ehca_alloc_queue_parms** %4, align 8
  %60 = getelementptr inbounds %struct.ehca_alloc_queue_parms, %struct.ehca_alloc_queue_parms* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @ehca_calc_wqe_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

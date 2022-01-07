; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_qeit_eq_get_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ipz_pt_fn.c_ipz_qeit_eq_get_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipz_queue = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ipz_qeit_eq_get_inc(%struct.ipz_queue* %0) #0 {
  %2 = alloca %struct.ipz_queue*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.ipz_queue* %0, %struct.ipz_queue** %2, align 8
  %5 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %6 = call i8* @ipz_qeit_get(%struct.ipz_queue* %5)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  store i64 %13, i64* %4, align 8
  %14 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %15 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %18 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %22 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %28 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %30 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, -1
  %33 = and i32 %32, 1
  %34 = load %struct.ipz_queue*, %struct.ipz_queue** %2, align 8
  %35 = getelementptr inbounds %struct.ipz_queue, %struct.ipz_queue* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %26, %1
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i8* @ipz_qeit_get(%struct.ipz_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_queue_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/pcie/extr_tx.c_iwl_queue_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_queue = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_queue*)* @iwl_queue_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_queue_space(%struct.iwl_queue* %0) #0 {
  %2 = alloca %struct.iwl_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.iwl_queue* %0, %struct.iwl_queue** %2, align 8
  %4 = load %struct.iwl_queue*, %struct.iwl_queue** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.iwl_queue*, %struct.iwl_queue** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.iwl_queue*, %struct.iwl_queue** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.iwl_queue*, %struct.iwl_queue** %2, align 8
  %15 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.iwl_queue*, %struct.iwl_queue** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.iwl_queue*, %struct.iwl_queue** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_queue, %struct.iwl_queue* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %26
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, 2
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

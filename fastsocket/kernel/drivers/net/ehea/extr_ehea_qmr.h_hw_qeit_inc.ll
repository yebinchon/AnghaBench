; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.h_hw_qeit_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.h_hw_qeit_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_queue = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_queue*)* @hw_qeit_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_qeit_inc(%struct.hw_queue* %0) #0 {
  %2 = alloca %struct.hw_queue*, align 8
  store %struct.hw_queue* %0, %struct.hw_queue** %2, align 8
  %3 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %4 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %7 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, %5
  store i64 %9, i64* %7, align 8
  %10 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %11 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %14 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %19 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %21 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = xor i32 %22, -1
  %24 = and i32 %23, 1
  %25 = load %struct.hw_queue*, %struct.hw_queue** %2, align 8
  %26 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %17, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

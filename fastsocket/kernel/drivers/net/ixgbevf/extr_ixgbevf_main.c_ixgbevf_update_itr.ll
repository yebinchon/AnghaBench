; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_update_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_q_vector = type { i32 }
%struct.ixgbevf_ring_container = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_q_vector*, %struct.ixgbevf_ring_container*)* @ixgbevf_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_update_itr(%struct.ixgbevf_q_vector* %0, %struct.ixgbevf_ring_container* %1) #0 {
  %3 = alloca %struct.ixgbevf_q_vector*, align 8
  %4 = alloca %struct.ixgbevf_ring_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbevf_q_vector* %0, %struct.ixgbevf_q_vector** %3, align 8
  store %struct.ixgbevf_ring_container* %1, %struct.ixgbevf_ring_container** %4, align 8
  %10 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %51 [
    i32 128, label %31
    i32 129, label %36
    i32 130, label %46
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 129, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %31
  br label %51

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 20
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 130, i32* %9, align 4
  br label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = icmp sle i32 %41, 10
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 128, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %40
  br label %45

45:                                               ; preds = %44, %39
  br label %51

46:                                               ; preds = %22
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 %47, 20
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 129, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %22, %50, %45, %35
  %52 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %55 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ixgbevf_ring_container*, %struct.ixgbevf_ring_container** %4, align 8
  %58 = getelementptr inbounds %struct.ixgbevf_ring_container, %struct.ixgbevf_ring_container* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %51, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

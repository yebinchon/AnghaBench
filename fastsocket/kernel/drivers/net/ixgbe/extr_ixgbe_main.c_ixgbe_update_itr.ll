; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_update_itr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_update_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { i32 }
%struct.ixgbe_ring_container = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_q_vector*, %struct.ixgbe_ring_container*)* @ixgbe_update_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_update_itr(%struct.ixgbe_q_vector* %0, %struct.ixgbe_ring_container* %1) #0 {
  %3 = alloca %struct.ixgbe_q_vector*, align 8
  %4 = alloca %struct.ixgbe_ring_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %3, align 8
  store %struct.ixgbe_ring_container* %1, %struct.ixgbe_ring_container** %4, align 8
  %10 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %14 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %3, align 8
  %24 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 2
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %63

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  switch i32 %34, label %55 [
    i32 128, label %35
    i32 129, label %40
    i32 130, label %50
  ]

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 129, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %55

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 20
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 130, i32* %9, align 4
  br label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp sle i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 128, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %48, %43
  br label %55

50:                                               ; preds = %30
  %51 = load i32, i32* %8, align 4
  %52 = icmp sle i32 %51, 20
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 129, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %50
  br label %55

55:                                               ; preds = %30, %54, %49, %39
  %56 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ixgbe_ring_container*, %struct.ixgbe_ring_container** %4, align 8
  %62 = getelementptr inbounds %struct.ixgbe_ring_container, %struct.ixgbe_ring_container* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %29, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

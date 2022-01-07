; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_reset_q_vectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_reset_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.ixgbevf_q_vector** }
%struct.ixgbevf_q_vector = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64, i32* }
%struct.TYPE_4__ = type { i64, i32* }

@NON_Q_VECTORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_reset_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_reset_q_vectors(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_q_vector*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %6 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @NON_Q_VECTORS, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %16, i32 0, i32 1
  %18 = load %struct.ixgbevf_q_vector**, %struct.ixgbevf_q_vector*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %18, i64 %20
  %22 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %21, align 8
  store %struct.ixgbevf_q_vector* %22, %struct.ixgbevf_q_vector** %5, align 8
  %23 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.ixgbevf_q_vector*, %struct.ixgbevf_q_vector** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_q_vector, %struct.ixgbevf_q_vector* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %11

38:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

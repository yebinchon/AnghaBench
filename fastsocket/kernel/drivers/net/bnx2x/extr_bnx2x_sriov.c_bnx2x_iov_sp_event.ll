; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_sp_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_iov_sp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32 }

@bnx2x_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_iov_sp_event(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_virtf*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = call i32 @IS_SRIOV(%struct.bnx2x* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @bnx2x_iov_is_vf_cid(%struct.bnx2x* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %3
  br label %35

17:                                               ; preds = %11
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.bnx2x_virtf* @bnx2x_vf_by_cid(%struct.bnx2x* %18, i32 %19)
  store %struct.bnx2x_virtf* %20, %struct.bnx2x_virtf** %7, align 8
  %21 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %22 = icmp ne %struct.bnx2x_virtf* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %24, i32 0, i32 0
  %26 = call i32 @atomic_set(i32* %25, i32 1)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @bnx2x_wq, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 0
  %33 = call i32 @queue_delayed_work(i32 %30, i32* %32, i32 0)
  br label %34

34:                                               ; preds = %29, %23
  br label %35

35:                                               ; preds = %16, %34, %17
  ret void
}

declare dso_local i32 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_iov_is_vf_cid(%struct.bnx2x*, i32) #1

declare dso_local %struct.bnx2x_virtf* @bnx2x_vf_by_cid(%struct.bnx2x*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_clear_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_fplustm.c_mac_clear_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.s_fpmc* }
%struct.s_fpmc = type { i64, i32 }

@FPMAX_MULTICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_clear_multicast(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_fpmc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.s_fpmc*, %struct.s_fpmc** %13, align 8
  store %struct.s_fpmc* %14, %struct.s_fpmc** %3, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @FPMAX_MULTICAST, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %21 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %26 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load %struct.s_fpmc*, %struct.s_fpmc** %3, align 8
  %32 = getelementptr inbounds %struct.s_fpmc, %struct.s_fpmc* %31, i32 1
  store %struct.s_fpmc* %32, %struct.s_fpmc** %3, align 8
  br label %15

33:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

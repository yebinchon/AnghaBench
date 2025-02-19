; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_categorize_rx_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_ql_categorize_rx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.nic_stats }
%struct.nic_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rx_ring = type { i32 }

@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, i32, %struct.rx_ring*)* @ql_categorize_rx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_categorize_rx_err(%struct.ql_adapter* %0, i32 %1, %struct.rx_ring* %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.nic_stats*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rx_ring* %2, %struct.rx_ring** %6, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %8, i32 0, i32 0
  store %struct.nic_stats* %9, %struct.nic_stats** %7, align 8
  %10 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %11 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %15 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %51 [
    i32 133, label %21
    i32 130, label %26
    i32 128, label %31
    i32 129, label %36
    i32 131, label %41
    i32 132, label %46
  ]

21:                                               ; preds = %3
  %22 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %23 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %28 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %52

31:                                               ; preds = %3
  %32 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %33 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %52

36:                                               ; preds = %3
  %37 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %38 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %52

41:                                               ; preds = %3
  %42 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %43 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %52

46:                                               ; preds = %3
  %47 = load %struct.nic_stats*, %struct.nic_stats** %7, align 8
  %48 = getelementptr inbounds %struct.nic_stats, %struct.nic_stats* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %3, %46
  br label %52

52:                                               ; preds = %51, %41, %36, %31, %26, %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

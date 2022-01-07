; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_tlb_init_table_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_tlb_init_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlb_client_info = type { i32, i32, i8*, i8*, i32* }

@BOND_TLB_REBALANCE_INTERVAL = common dso_local global i32 0, align 4
@TLB_NULL_INDEX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tlb_client_info*, i32)* @tlb_init_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlb_init_table_entry(%struct.tlb_client_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tlb_client_info*, align 8
  %4 = alloca i32, align 4
  store %struct.tlb_client_info* %0, %struct.tlb_client_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.tlb_client_info*, %struct.tlb_client_info** %3, align 8
  %9 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BOND_TLB_REBALANCE_INTERVAL, align 4
  %12 = sdiv i32 %10, %11
  %13 = add nsw i32 1, %12
  %14 = load %struct.tlb_client_info*, %struct.tlb_client_info** %3, align 8
  %15 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.tlb_client_info*, %struct.tlb_client_info** %3, align 8
  %17 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %7, %2
  %19 = load %struct.tlb_client_info*, %struct.tlb_client_info** %3, align 8
  %20 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load i8*, i8** @TLB_NULL_INDEX, align 8
  %22 = load %struct.tlb_client_info*, %struct.tlb_client_info** %3, align 8
  %23 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** @TLB_NULL_INDEX, align 8
  %25 = load %struct.tlb_client_info*, %struct.tlb_client_info** %3, align 8
  %26 = getelementptr inbounds %struct.tlb_client_info, %struct.tlb_client_info* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

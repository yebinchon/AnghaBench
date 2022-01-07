; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_bond_alb_deinit_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_bond_alb_deinit_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.slave = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bond_alb_deinit_slave(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.slave* %1, %struct.slave** %4, align 8
  %5 = load %struct.bonding*, %struct.bonding** %3, align 8
  %6 = getelementptr inbounds %struct.bonding, %struct.bonding* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.bonding*, %struct.bonding** %3, align 8
  %11 = load %struct.slave*, %struct.slave** %4, align 8
  %12 = call i32 @alb_change_hw_addr_on_detach(%struct.bonding* %10, %struct.slave* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.bonding*, %struct.bonding** %3, align 8
  %15 = load %struct.slave*, %struct.slave** %4, align 8
  %16 = call i32 @tlb_clear_slave(%struct.bonding* %14, %struct.slave* %15, i32 0)
  %17 = load %struct.bonding*, %struct.bonding** %3, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.bonding*, %struct.bonding** %3, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.bonding*, %struct.bonding** %3, align 8
  %27 = load %struct.slave*, %struct.slave** %4, align 8
  %28 = call i32 @rlb_clear_slave(%struct.bonding* %26, %struct.slave* %27)
  br label %29

29:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @alb_change_hw_addr_on_detach(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @tlb_clear_slave(%struct.bonding*, %struct.slave*, i32) #1

declare dso_local i32 @rlb_clear_slave(%struct.bonding*, %struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

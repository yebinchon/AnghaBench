; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_bond_alb_init_slave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_bond_alb_init_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.slave = type { i32 }

@BOND_TLB_REBALANCE_TICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_alb_init_slave(%struct.bonding* %0, %struct.slave* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.slave* %1, %struct.slave** %5, align 8
  %7 = load %struct.slave*, %struct.slave** %5, align 8
  %8 = load %struct.slave*, %struct.slave** %5, align 8
  %9 = getelementptr inbounds %struct.slave, %struct.slave* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @alb_set_slave_mac_addr(%struct.slave* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.bonding*, %struct.bonding** %4, align 8
  %18 = getelementptr inbounds %struct.bonding, %struct.bonding* %17, i32 0, i32 1
  %19 = call i32 @read_lock(i32* %18)
  %20 = load %struct.bonding*, %struct.bonding** %4, align 8
  %21 = load %struct.slave*, %struct.slave** %5, align 8
  %22 = call i32 @alb_handle_addr_collision_on_attach(%struct.bonding* %20, %struct.slave* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.bonding*, %struct.bonding** %4, align 8
  %24 = getelementptr inbounds %struct.bonding, %struct.bonding* %23, i32 0, i32 1
  %25 = call i32 @read_unlock(i32* %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %16
  %31 = load %struct.slave*, %struct.slave** %5, align 8
  %32 = call i32 @tlb_init_slave(%struct.slave* %31)
  %33 = load i32, i32* @BOND_TLB_REBALANCE_TICKS, align 4
  %34 = load %struct.bonding*, %struct.bonding** %4, align 8
  %35 = getelementptr inbounds %struct.bonding, %struct.bonding* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load %struct.bonding*, %struct.bonding** %4, align 8
  %38 = getelementptr inbounds %struct.bonding, %struct.bonding* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.bonding*, %struct.bonding** %4, align 8
  %44 = getelementptr inbounds %struct.bonding, %struct.bonding* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %30
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %28, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @alb_set_slave_mac_addr(%struct.slave*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @alb_handle_addr_collision_on_attach(%struct.bonding*, %struct.slave*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @tlb_init_slave(%struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

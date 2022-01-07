; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bonding.h_bond_set_slave_inactive_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bonding.h_bond_set_slave_inactive_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.bonding = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BOND_STATE_BACKUP = common dso_local global i32 0, align 4
@IFF_SLAVE_INACTIVE = common dso_local global i32 0, align 4
@IFF_SLAVE_NEEDARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slave*)* @bond_set_slave_inactive_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_set_slave_inactive_flags(%struct.slave* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  %3 = alloca %struct.bonding*, align 8
  store %struct.slave* %0, %struct.slave** %2, align 8
  %4 = load %struct.slave*, %struct.slave** %2, align 8
  %5 = getelementptr inbounds %struct.slave, %struct.slave* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.bonding* @netdev_priv(i32 %8)
  store %struct.bonding* %9, %struct.bonding** %3, align 8
  %10 = load %struct.bonding*, %struct.bonding** %3, align 8
  %11 = call i32 @bond_is_lb(%struct.bonding* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @BOND_STATE_BACKUP, align 4
  %15 = load %struct.slave*, %struct.slave** %2, align 8
  %16 = getelementptr inbounds %struct.slave, %struct.slave* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.bonding*, %struct.bonding** %3, align 8
  %19 = getelementptr inbounds %struct.bonding, %struct.bonding* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @IFF_SLAVE_INACTIVE, align 4
  %25 = load %struct.slave*, %struct.slave** %2, align 8
  %26 = getelementptr inbounds %struct.slave, %struct.slave* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %17
  %32 = load %struct.bonding*, %struct.bonding** %3, align 8
  %33 = load %struct.slave*, %struct.slave** %2, align 8
  %34 = call i64 @slave_do_arp_validate(%struct.bonding* %32, %struct.slave* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* @IFF_SLAVE_NEEDARP, align 4
  %38 = load %struct.slave*, %struct.slave** %2, align 8
  %39 = getelementptr inbounds %struct.slave, %struct.slave* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %31
  ret void
}

declare dso_local %struct.bonding* @netdev_priv(i32) #1

declare dso_local i32 @bond_is_lb(%struct.bonding*) #1

declare dso_local i64 @slave_do_arp_validate(%struct.bonding*, %struct.slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bonding.h_bond_set_slave_active_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bonding.h_bond_set_slave_active_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BOND_STATE_ACTIVE = common dso_local global i32 0, align 4
@IFF_SLAVE_INACTIVE = common dso_local global i32 0, align 4
@IFF_SLAVE_NEEDARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slave*)* @bond_set_slave_active_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_set_slave_active_flags(%struct.slave* %0) #0 {
  %2 = alloca %struct.slave*, align 8
  store %struct.slave* %0, %struct.slave** %2, align 8
  %3 = load i32, i32* @BOND_STATE_ACTIVE, align 4
  %4 = load %struct.slave*, %struct.slave** %2, align 8
  %5 = getelementptr inbounds %struct.slave, %struct.slave* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @IFF_SLAVE_INACTIVE, align 4
  %7 = load i32, i32* @IFF_SLAVE_NEEDARP, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.slave*, %struct.slave** %2, align 8
  %11 = getelementptr inbounds %struct.slave, %struct.slave* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %9
  store i32 %15, i32* %13, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

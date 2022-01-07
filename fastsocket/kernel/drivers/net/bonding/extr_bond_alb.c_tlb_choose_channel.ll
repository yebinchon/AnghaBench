; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_tlb_choose_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_alb.c_tlb_choose_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32 }
%struct.bonding = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slave* (%struct.bonding*, i32, i32)* @tlb_choose_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slave* @tlb_choose_channel(%struct.bonding* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.slave*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = call i32 @_lock_tx_hashtbl(%struct.bonding* %8)
  %10 = load %struct.bonding*, %struct.bonding** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.slave* @__tlb_choose_channel(%struct.bonding* %10, i32 %11, i32 %12)
  store %struct.slave* %13, %struct.slave** %7, align 8
  %14 = load %struct.bonding*, %struct.bonding** %4, align 8
  %15 = call i32 @_unlock_tx_hashtbl(%struct.bonding* %14)
  %16 = load %struct.slave*, %struct.slave** %7, align 8
  ret %struct.slave* %16
}

declare dso_local i32 @_lock_tx_hashtbl(%struct.bonding*) #1

declare dso_local %struct.slave* @__tlb_choose_channel(%struct.bonding*, i32, i32) #1

declare dso_local i32 @_unlock_tx_hashtbl(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

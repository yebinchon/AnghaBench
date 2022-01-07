; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_agg_selection_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_agg_selection_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.bonding = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BOND_AD_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @__get_agg_selection_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_agg_selection_mode(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.TYPE_2__, align 4
  store %struct.port* %0, %struct.port** %3, align 8
  %6 = load %struct.port*, %struct.port** %3, align 8
  %7 = call %struct.bonding* @__get_bond_by_port(%struct.port* %6)
  store %struct.bonding* %7, %struct.bonding** %4, align 8
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = icmp eq %struct.bonding* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BOND_AD_STABLE, align 4
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.bonding*, %struct.bonding** %4, align 8
  %14 = call i32 @BOND_AD_INFO(%struct.bonding* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.bonding* @__get_bond_by_port(%struct.port*) #1

declare dso_local i32 @BOND_AD_INFO(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

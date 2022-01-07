; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___check_agg_selection_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___check_agg_selection_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.bonding = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @__check_agg_selection_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_agg_selection_timer(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  %6 = load %struct.port*, %struct.port** %3, align 8
  %7 = call %struct.bonding* @__get_bond_by_port(%struct.port* %6)
  store %struct.bonding* %7, %struct.bonding** %4, align 8
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = icmp eq %struct.bonding* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.bonding*, %struct.bonding** %4, align 8
  %13 = call i64 @BOND_AD_INFO(%struct.bonding* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %11, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.bonding* @__get_bond_by_port(%struct.port*) #1

declare dso_local i64 @BOND_AD_INFO(%struct.bonding*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

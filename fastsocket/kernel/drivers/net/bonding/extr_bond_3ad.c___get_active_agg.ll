; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_active_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c___get_active_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aggregator* (%struct.aggregator*)* @__get_active_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aggregator* @__get_active_agg(%struct.aggregator* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  %3 = alloca %struct.aggregator*, align 8
  store %struct.aggregator* %0, %struct.aggregator** %2, align 8
  store %struct.aggregator* null, %struct.aggregator** %3, align 8
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %6 = icmp ne %struct.aggregator* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %9 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  store %struct.aggregator* %13, %struct.aggregator** %3, align 8
  br label %18

14:                                               ; preds = %7
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %17 = call %struct.aggregator* @__get_next_agg(%struct.aggregator* %16)
  store %struct.aggregator* %17, %struct.aggregator** %2, align 8
  br label %4

18:                                               ; preds = %12, %4
  %19 = load %struct.aggregator*, %struct.aggregator** %3, align 8
  ret %struct.aggregator* %19
}

declare dso_local %struct.aggregator* @__get_next_agg(%struct.aggregator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

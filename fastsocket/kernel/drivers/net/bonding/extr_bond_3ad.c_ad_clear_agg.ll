; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_clear_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_ad_clear_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32, i32, i64, i64, i32*, i64, i64, i64, i64, i32, i64, i64 }

@null_mac_addr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"LAG %d was cleared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aggregator*)* @ad_clear_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_clear_agg(%struct.aggregator* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  store %struct.aggregator* %0, %struct.aggregator** %2, align 8
  %3 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %4 = icmp ne %struct.aggregator* %3, null
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %7 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %9 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %8, i32 0, i32 11
  store i64 0, i64* %9, align 8
  %10 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %11 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %10, i32 0, i32 10
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @null_mac_addr, align 4
  %13 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %14 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %16 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %15, i32 0, i32 8
  store i64 0, i64* %16, align 8
  %17 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %18 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %20 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %22 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %24 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %26 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %28 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %30 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

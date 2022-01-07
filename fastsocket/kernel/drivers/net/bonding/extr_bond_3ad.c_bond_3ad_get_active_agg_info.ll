; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_get_active_agg_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_get_active_agg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.ad_info = type { i32, i32, i32, i32, i32 }
%struct.aggregator = type { %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.port = type { %struct.aggregator* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_3ad_get_active_agg_info(%struct.bonding* %0, %struct.ad_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bonding*, align 8
  %5 = alloca %struct.ad_info*, align 8
  %6 = alloca %struct.aggregator*, align 8
  %7 = alloca %struct.port*, align 8
  store %struct.bonding* %0, %struct.bonding** %4, align 8
  store %struct.ad_info* %1, %struct.ad_info** %5, align 8
  store %struct.aggregator* null, %struct.aggregator** %6, align 8
  %8 = load %struct.bonding*, %struct.bonding** %4, align 8
  %9 = call %struct.port* @__get_first_port(%struct.bonding* %8)
  store %struct.port* %9, %struct.port** %7, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load %struct.port*, %struct.port** %7, align 8
  %12 = icmp ne %struct.port* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.port*, %struct.port** %7, align 8
  %15 = getelementptr inbounds %struct.port, %struct.port* %14, i32 0, i32 0
  %16 = load %struct.aggregator*, %struct.aggregator** %15, align 8
  %17 = icmp ne %struct.aggregator* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.port*, %struct.port** %7, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = load %struct.aggregator*, %struct.aggregator** %20, align 8
  %22 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.port*, %struct.port** %7, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 0
  %28 = load %struct.aggregator*, %struct.aggregator** %27, align 8
  store %struct.aggregator* %28, %struct.aggregator** %6, align 8
  br label %33

29:                                               ; preds = %18, %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.port*, %struct.port** %7, align 8
  %32 = call %struct.port* @__get_next_port(%struct.port* %31)
  store %struct.port* %32, %struct.port** %7, align 8
  br label %10

33:                                               ; preds = %25, %10
  %34 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  %35 = icmp ne %struct.aggregator* %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  %38 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ad_info*, %struct.ad_info** %5, align 8
  %41 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  %43 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ad_info*, %struct.ad_info** %5, align 8
  %46 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  %48 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ad_info*, %struct.ad_info** %5, align 8
  %51 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  %53 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ad_info*, %struct.ad_info** %5, align 8
  %56 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ad_info*, %struct.ad_info** %5, align 8
  %58 = getelementptr inbounds %struct.ad_info, %struct.ad_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.aggregator*, %struct.aggregator** %6, align 8
  %61 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = call i32 @memcpy(i32 %59, i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %67

66:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.port* @__get_first_port(%struct.bonding*) #1

declare dso_local %struct.port* @__get_next_port(%struct.port*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

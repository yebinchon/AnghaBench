; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fe_priv = type { i32 }

@DEV_HAS_TEST_EXTENDED = common dso_local global i32 0, align 4
@NV_TEST_COUNT_EXTENDED = common dso_local global i32 0, align 4
@NV_TEST_COUNT_BASE = common dso_local global i32 0, align 4
@DEV_HAS_STATISTICS_V3 = common dso_local global i32 0, align 4
@NV_DEV_STATISTICS_V3_COUNT = common dso_local global i32 0, align 4
@DEV_HAS_STATISTICS_V2 = common dso_local global i32 0, align 4
@NV_DEV_STATISTICS_V2_COUNT = common dso_local global i32 0, align 4
@DEV_HAS_STATISTICS_V1 = common dso_local global i32 0, align 4
@NV_DEV_STATISTICS_V1_COUNT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nv_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fe_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %49 [
    i32 128, label %10
    i32 129, label %21
  ]

10:                                               ; preds = %2
  %11 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %12 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DEV_HAS_TEST_EXTENDED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @NV_TEST_COUNT_EXTENDED, align 4
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %10
  %20 = load i32, i32* @NV_TEST_COUNT_BASE, align 4
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %23 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DEV_HAS_STATISTICS_V3, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @NV_DEV_STATISTICS_V3_COUNT, align 4
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %21
  %31 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %32 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DEV_HAS_STATISTICS_V2, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @NV_DEV_STATISTICS_V2_COUNT, align 4
  store i32 %38, i32* %3, align 4
  br label %52

39:                                               ; preds = %30
  %40 = load %struct.fe_priv*, %struct.fe_priv** %6, align 8
  %41 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DEV_HAS_STATISTICS_V1, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @NV_DEV_STATISTICS_V1_COUNT, align 4
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %48, %46, %37, %28, %19, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

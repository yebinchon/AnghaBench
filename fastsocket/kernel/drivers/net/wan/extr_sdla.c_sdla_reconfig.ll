; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_reconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sdla.c_sdla_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.frad_local = type { i32, i64* }
%struct.conf_data = type { i64* }

@CONFIG_DLCI_MAX = common dso_local global i32 0, align 4
@SDLA_DISABLE_COMMUNICATIONS = common dso_local global i32 0, align 4
@SDLA_SET_DLCI_CONFIGURATION = common dso_local global i32 0, align 4
@SDLA_ENABLE_COMMUNICATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sdla_reconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_reconfig(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.frad_local*, align 8
  %4 = alloca %struct.conf_data, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.frad_local* @netdev_priv(%struct.net_device* %7)
  store %struct.frad_local* %8, %struct.frad_local** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CONFIG_DLCI_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  %14 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %15 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %24 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.conf_data, %struct.conf_data* %4, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  store i64 %29, i64* %35, align 8
  br label %36

36:                                               ; preds = %22, %13
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %6, align 4
  %43 = load %struct.frad_local*, %struct.frad_local** %3, align 8
  %44 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %43, i32 0, i32 0
  %45 = call i32 @memcpy(%struct.conf_data* %4, i32* %44, i32 4)
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i32, i32* @SDLA_DISABLE_COMMUNICATIONS, align 4
  %52 = call i32 @sdla_cmd(%struct.net_device* %50, i32 %51, i32 0, i32 0, %struct.conf_data* null, i32 0, i32* null, i32* null)
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = load i32, i32* @SDLA_SET_DLCI_CONFIGURATION, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sdla_cmd(%struct.net_device* %53, i32 %54, i32 0, i32 0, %struct.conf_data* %4, i32 %55, i32* null, i32* null)
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = load i32, i32* @SDLA_ENABLE_COMMUNICATIONS, align 4
  %59 = call i32 @sdla_cmd(%struct.net_device* %57, i32 %58, i32 0, i32 0, %struct.conf_data* null, i32 0, i32* null, i32* null)
  ret i32 0
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(%struct.conf_data*, i32*, i32) #1

declare dso_local i32 @sdla_cmd(%struct.net_device*, i32, i32, i32, %struct.conf_data*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

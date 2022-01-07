; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32 }
%struct.igbvf_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.e1000_hw }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_hw = type { i64 }

@IGBVF_MIN_ITR_USECS = common dso_local global i32 0, align 4
@IGBVF_MAX_ITR_USECS = common dso_local global i32 0, align 4
@IGBVF_START_ITR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @igbvf_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.igbvf_adapter* %9, %struct.igbvf_adapter** %6, align 8
  %10 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %10, i32 0, i32 3
  store %struct.e1000_hw* %11, %struct.e1000_hw** %7, align 8
  %12 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IGBVF_MIN_ITR_USECS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %2
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IGBVF_MAX_ITR_USECS, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  %28 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 256
  %34 = sdiv i32 1000000000, %33
  %35 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %76

37:                                               ; preds = %17, %2
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @IGBVF_START_ITR, align 4
  %49 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %55 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %75

56:                                               ; preds = %42
  %57 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %62, i32 0, i32 0
  store i32 4, i32* %63, align 8
  %64 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 256
  %68 = sdiv i32 1000000000, %67
  %69 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %74

71:                                               ; preds = %56
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %90

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %84 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %82, %87
  %89 = call i32 @writel(i32 %79, i64 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %76, %71
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

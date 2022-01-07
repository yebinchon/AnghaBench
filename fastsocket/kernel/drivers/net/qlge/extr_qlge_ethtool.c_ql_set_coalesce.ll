; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_ethtool.c_ql_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i64, i32, i64 }
%struct.ql_adapter = type { i32, i32, i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_INTER_FRAME_WAIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ql_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ql_adapter* %8, %struct.ql_adapter** %6, align 8
  %9 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sdiv i32 %14, 2
  %16 = icmp sgt i32 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAX_INTER_FRAME_WAIT, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %20
  %30 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 2
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %106

41:                                               ; preds = %29
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MAX_INTER_FRAME_WAIT, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %106

50:                                               ; preds = %41
  %51 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %50
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %106

83:                                               ; preds = %74, %66, %58, %50
  %84 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %98 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %100 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 5
  store i64 %101, i64* %103, align 8
  %104 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %105 = call i32 @ql_update_ring_coalescing(%struct.ql_adapter* %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %83, %82, %47, %38, %26, %17
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_update_ring_coalescing(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

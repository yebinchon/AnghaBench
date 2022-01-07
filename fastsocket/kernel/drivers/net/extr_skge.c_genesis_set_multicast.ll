; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_genesis_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_genesis_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.skge_port = type { i32, i64, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@XM_MODE = common dso_local global i32 0, align 4
@XM_MD_ENA_HASH = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@XM_MD_ENA_PROM = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FLOW_STAT_REM_SEND = common dso_local global i64 0, align 8
@FLOW_STAT_SYMMETRIC = common dso_local global i64 0, align 8
@pause_mc_addr = common dso_local global i32 0, align 4
@XM_HSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @genesis_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.skge_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_mc_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.skge_port* @netdev_priv(%struct.net_device* %11)
  store %struct.skge_port* %12, %struct.skge_port** %3, align 8
  %13 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 2
  %15 = load %struct.skge_hw*, %struct.skge_hw** %14, align 8
  store %struct.skge_hw* %15, %struct.skge_hw** %4, align 8
  %16 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %17 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  %24 = load %struct.dev_mc_list*, %struct.dev_mc_list** %23, align 8
  store %struct.dev_mc_list* %24, %struct.dev_mc_list** %8, align 8
  %25 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @XM_MODE, align 4
  %28 = call i32 @xm_read32(%struct.skge_hw* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @XM_MD_ENA_HASH, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_PROMISC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load i32, i32* @XM_MD_ENA_PROM, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %47

42:                                               ; preds = %1
  %43 = load i32, i32* @XM_MD_ENA_PROM, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFF_ALLMULTI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %56 = call i32 @memset(i32* %55, i32 255, i32 32)
  br label %98

57:                                               ; preds = %47
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %59 = call i32 @memset(i32* %58, i32 0, i32 32)
  %60 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %61 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @FLOW_STAT_REM_SEND, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %57
  %66 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %67 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @FLOW_STAT_SYMMETRIC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65, %57
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %73 = load i32, i32* @pause_mc_addr, align 4
  %74 = call i32 @genesis_add_filter(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %65
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %78 = icmp ne %struct.dev_mc_list* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %85, label %97

85:                                               ; preds = %83
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %87 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %88 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @genesis_add_filter(i32* %86, i32 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = load %struct.dev_mc_list*, %struct.dev_mc_list** %8, align 8
  %95 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %94, i32 0, i32 1
  %96 = load %struct.dev_mc_list*, %struct.dev_mc_list** %95, align 8
  store %struct.dev_mc_list* %96, %struct.dev_mc_list** %8, align 8
  br label %76

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %97, %54
  %99 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @XM_MODE, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @xm_write32(%struct.skge_hw* %99, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @XM_HSM, align 4
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %108 = call i32 @xm_outhash(%struct.skge_hw* %104, i32 %105, i32 %106, i32* %107)
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xm_read32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @genesis_add_filter(i32*, i32) #1

declare dso_local i32 @xm_write32(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @xm_outhash(%struct.skge_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

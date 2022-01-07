; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_setup_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_mcast_setup_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_ramrod_params = type { i64, i32, %struct.bnx2x_mcast_obj* }
%struct.bnx2x_mcast_obj = type { i64, i32, i32 (%struct.bnx2x_mcast_obj*)*, i32, %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i32 (%struct.bnx2x_raw_obj*)*, i64 }
%struct.eth_multicast_rules_ramrod_data = type { i32 }

@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_MULTICAST_RULES = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32)* @bnx2x_mcast_setup_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_mcast_setup_e2(%struct.bnx2x* %0, %struct.bnx2x_mcast_ramrod_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_mcast_ramrod_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_raw_obj*, align 8
  %9 = alloca %struct.bnx2x_mcast_obj*, align 8
  %10 = alloca %struct.eth_multicast_rules_ramrod_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_mcast_ramrod_params* %1, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %14 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %13, i32 0, i32 2
  %15 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %14, align 8
  %16 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %15, i32 0, i32 4
  store %struct.bnx2x_raw_obj* %16, %struct.bnx2x_raw_obj** %8, align 8
  %17 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %17, i32 0, i32 2
  %19 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %18, align 8
  store %struct.bnx2x_mcast_obj* %19, %struct.bnx2x_mcast_obj** %9, align 8
  %20 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.eth_multicast_rules_ramrod_data*
  store %struct.eth_multicast_rules_ramrod_data* %23, %struct.eth_multicast_rules_ramrod_data** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load %struct.eth_multicast_rules_ramrod_data*, %struct.eth_multicast_rules_ramrod_data** %10, align 8
  %25 = call i32 @memset(%struct.eth_multicast_rules_ramrod_data* %24, i32 0, i32 4)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %28 = call i32 @bnx2x_mcast_handle_pending_cmds_e2(%struct.bnx2x* %26, %struct.bnx2x_mcast_ramrod_params* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %30 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %29, i32 0, i32 3
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %35 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %34, i32 0, i32 2
  %36 = load i32 (%struct.bnx2x_mcast_obj*)*, i32 (%struct.bnx2x_mcast_obj*)** %35, align 8
  %37 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %38 = call i32 %36(%struct.bnx2x_mcast_obj* %37)
  br label %39

39:                                               ; preds = %33, %3
  %40 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %46 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @bnx2x_mcast_handle_current_cmd(%struct.bnx2x* %45, %struct.bnx2x_mcast_ramrod_params* %46, i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %54 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %58 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %65 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %71 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @bnx2x_mcast_set_rdata_hdr_e2(%struct.bnx2x* %70, %struct.bnx2x_mcast_ramrod_params* %71, i32 %72)
  %74 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %75 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %50
  %79 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %80 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %9, align 8
  %81 = call i32 @bnx2x_mcast_refresh_registry_e2(%struct.bnx2x* %79, %struct.bnx2x_mcast_obj* %80)
  br label %82

82:                                               ; preds = %78, %50
  %83 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %84 = load %struct.bnx2x_mcast_ramrod_params*, %struct.bnx2x_mcast_ramrod_params** %6, align 8
  %85 = getelementptr inbounds %struct.bnx2x_mcast_ramrod_params, %struct.bnx2x_mcast_ramrod_params* %84, i32 0, i32 1
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %90 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %89, i32 0, i32 2
  %91 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %90, align 8
  %92 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %93 = call i32 %91(%struct.bnx2x_raw_obj* %92)
  store i32 0, i32* %4, align 4
  br label %115

94:                                               ; preds = %82
  %95 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %96 = load i32, i32* @RAMROD_CMD_ID_ETH_MULTICAST_RULES, align 4
  %97 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %98 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %101 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @U64_HI(i32 %102)
  %104 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %105 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @U64_LO(i32 %106)
  %108 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %109 = call i32 @bnx2x_sp_post(%struct.bnx2x* %95, i32 %96, i32 %99, i32 %103, i32 %107, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %94
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %115

114:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %112, %88
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.eth_multicast_rules_ramrod_data*, i32, i32) #1

declare dso_local i32 @bnx2x_mcast_handle_pending_cmds_e2(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @bnx2x_mcast_handle_current_cmd(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bnx2x_mcast_set_rdata_hdr_e2(%struct.bnx2x*, %struct.bnx2x_mcast_ramrod_params*, i32) #1

declare dso_local i32 @bnx2x_mcast_refresh_registry_e2(%struct.bnx2x*, %struct.bnx2x_mcast_obj*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

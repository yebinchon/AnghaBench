; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32 }
%struct.bnx2x_virtf = type { i32, i32, i32, i32 }
%struct.bnx2x_vf_queue = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BNX2X_Q_TYPE_HAS_TX = common dso_local global i32 0, align 4
@BNX2X_Q_TYPE_HAS_RX = common dso_local global i32 0, align 4
@q_data = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"initialized vf %d's queue object. func id set to %d\0A\00", align 1
@mac_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_MAC_PENDING = common dso_local global i32 0, align 4
@BNX2X_OBJ_TYPE_RX_TX = common dso_local global i32 0, align 4
@vlan_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_VLAN_PENDING = common dso_local global i32 0, align 4
@mcast_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_MCAST_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*)* @bnx2x_vfq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfq_init(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_queue* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vf_queue** %6, align 8
  %10 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %11 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %12 = call i32 @vfq_cl_id(%struct.bnx2x_virtf* %10, %struct.bnx2x_vf_queue* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FW_VF_HANDLE(i32 %15)
  store i32 %16, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %17 = load i32, i32* @BNX2X_Q_TYPE_HAS_TX, align 4
  %18 = call i32 @set_bit(i32 %17, i64* %9)
  %19 = load i32, i32* @BNX2X_Q_TYPE_HAS_RX, align 4
  %20 = call i32 @set_bit(i32 %19, i64* %9)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %22 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %23 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %22, i32 0, i32 3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %30 = load i32, i32* @q_data, align 4
  %31 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %28, %struct.bnx2x_virtf* %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %34 = load i32, i32* @q_data, align 4
  %35 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %32, %struct.bnx2x_virtf* %33, i32 %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @bnx2x_init_queue_obj(%struct.bnx2x* %21, %struct.TYPE_2__* %23, i32 %24, i32* %26, i32 1, i32 %27, i32 %31, i32 %35, i64 %36)
  %38 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %39 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %43 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %45)
  %47 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %48 = call i64 @vfq_is_leading(%struct.bnx2x_vf_queue* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %122

50:                                               ; preds = %3
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %53 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %52, i32 0, i32 2
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %60 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %61 = load i32, i32* @mac_rdata, align 4
  %62 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %59, %struct.bnx2x_virtf* %60, i32 %61)
  %63 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %64 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %65 = load i32, i32* @mac_rdata, align 4
  %66 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %63, %struct.bnx2x_virtf* %64, i32 %65)
  %67 = load i32, i32* @BNX2X_FILTER_MAC_PENDING, align 4
  %68 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %69 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %68, i32 0, i32 1
  %70 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %71 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %72 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %71, i32 0, i32 1
  %73 = call i32 @bnx2x_init_mac_obj(%struct.bnx2x* %51, i32* %53, i32 %54, i32 %57, i32 %58, i32 %62, i32 %66, i32 %67, i32* %69, i32 %70, i32* %72)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %75 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %76 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %75, i32 0, i32 1
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %83 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %84 = load i32, i32* @vlan_rdata, align 4
  %85 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %82, %struct.bnx2x_virtf* %83, i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %87 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %88 = load i32, i32* @vlan_rdata, align 4
  %89 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %86, %struct.bnx2x_virtf* %87, i32 %88)
  %90 = load i32, i32* @BNX2X_FILTER_VLAN_PENDING, align 4
  %91 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %92 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %91, i32 0, i32 1
  %93 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %94 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 0
  %96 = call i32 @bnx2x_init_vlan_obj(%struct.bnx2x* %74, i32* %76, i32 %77, i32 %80, i32 %81, i32 %85, i32 %89, i32 %90, i32* %92, i32 %93, i32* %95)
  %97 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %98 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %99 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %98, i32 0, i32 2
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %102 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %107 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %108 = load i32, i32* @mcast_rdata, align 4
  %109 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %106, %struct.bnx2x_virtf* %107, i32 %108)
  %110 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %111 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %112 = load i32, i32* @mcast_rdata, align 4
  %113 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %110, %struct.bnx2x_virtf* %111, i32 %112)
  %114 = load i32, i32* @BNX2X_FILTER_MCAST_PENDING, align 4
  %115 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %116 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %115, i32 0, i32 1
  %117 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %118 = call i32 @bnx2x_init_mcast_obj(%struct.bnx2x* %97, i32* %99, i32 %100, i32 %103, i32 %104, i32 %105, i32 %109, i32 %113, i32 %114, i32* %116, i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %121 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %50, %3
  ret void
}

declare dso_local i32 @vfq_cl_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_init_queue_obj(%struct.bnx2x*, %struct.TYPE_2__*, i32, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @bnx2x_vf_sp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_sp_map(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

declare dso_local i64 @vfq_is_leading(%struct.bnx2x_vf_queue*) #1

declare dso_local i32 @bnx2x_init_mac_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bnx2x_init_vlan_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bnx2x_init_mcast_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

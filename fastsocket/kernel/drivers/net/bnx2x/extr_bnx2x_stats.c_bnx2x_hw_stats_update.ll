; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_hw_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_hw_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bnx2x = type { %struct.TYPE_5__, %struct.bnx2x_eth_stats, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.bnx2x_eth_stats = type { i64, i32, i32, i32, %struct.nig_stats, i32, i32 }
%struct.nig_stats = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.nig_stats }
%struct.host_port_stats = type { i32, i32, i32, %struct.nig_stats* }
%struct.anon = type { i64, i64 }

@nig_stats = common dso_local global i32 0, align 4
@port_stats = common dso_local global i32 0, align 4
@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"stats updated by DMAE but no MAC active\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown MAC type\0A\00", align 1
@egress_mac_pkt0 = common dso_local global i32 0, align 4
@etherstatspkts1024octetsto1522octets = common dso_local global i32 0, align 4
@egress_mac_pkt1 = common dso_local global i32 0, align 4
@etherstatspktsover1522octets = common dso_local global i32 0, align 4
@MISC_REG_CPMU_LP_SM_ENT_CNT_P1 = common dso_local global i64 0, align 8
@MISC_REG_CPMU_LP_SM_ENT_CNT_P0 = common dso_local global i64 0, align 8
@port_mb = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"NIG timer max (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_hw_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_hw_stats_update(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.nig_stats*, align 8
  %5 = alloca %struct.nig_stats*, align 8
  %6 = alloca %struct.host_port_stats*, align 8
  %7 = alloca %struct.bnx2x_eth_stats*, align 8
  %8 = alloca %struct.anon, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load i32, i32* @nig_stats, align 4
  %13 = call i8* @bnx2x_sp(%struct.bnx2x* %11, i32 %12)
  %14 = bitcast i8* %13 to %struct.nig_stats*
  store %struct.nig_stats* %14, %struct.nig_stats** %4, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.nig_stats* %17, %struct.nig_stats** %5, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load i32, i32* @port_stats, align 4
  %20 = call i8* @bnx2x_sp(%struct.bnx2x* %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.host_port_stats*
  store %struct.host_port_stats* %21, %struct.host_port_stats** %6, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 1
  store %struct.bnx2x_eth_stats* %23, %struct.bnx2x_eth_stats** %7, align 8
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %40 [
    i32 132, label %28
    i32 131, label %31
    i32 129, label %34
    i32 128, label %34
    i32 130, label %37
  ]

28:                                               ; preds = %1
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = call i32 @bnx2x_bmac_stats_update(%struct.bnx2x* %29)
  br label %42

31:                                               ; preds = %1
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = call i32 @bnx2x_emac_stats_update(%struct.bnx2x* %32)
  br label %42

34:                                               ; preds = %1, %1
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = call i32 @bnx2x_mstat_stats_update(%struct.bnx2x* %35)
  br label %42

37:                                               ; preds = %1
  %38 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %39 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %156

40:                                               ; preds = %1
  %41 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34, %31, %28
  %43 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %44 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %47 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nig_stats*, %struct.nig_stats** %4, align 8
  %50 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.nig_stats*, %struct.nig_stats** %5, align 8
  %53 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = call i32 @ADD_EXTEND_64(i32 %45, i32 %48, i64 %55)
  %57 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %58 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %61 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.nig_stats*, %struct.nig_stats** %4, align 8
  %64 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nig_stats*, %struct.nig_stats** %5, align 8
  %67 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call i32 @ADD_EXTEND_64(i32 %59, i32 %62, i64 %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = call i64 @CHIP_IS_E3(%struct.bnx2x* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %42
  %75 = load i32, i32* @egress_mac_pkt0, align 4
  %76 = load i32, i32* @etherstatspkts1024octetsto1522octets, align 4
  %77 = call i32 @UPDATE_STAT64_NIG(i32 %75, i32 %76)
  %78 = load i32, i32* @egress_mac_pkt1, align 4
  %79 = load i32, i32* @etherstatspktsover1522octets, align 4
  %80 = call i32 @UPDATE_STAT64_NIG(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %42
  %82 = load %struct.nig_stats*, %struct.nig_stats** %5, align 8
  %83 = load %struct.nig_stats*, %struct.nig_stats** %4, align 8
  %84 = call i32 @memcpy(%struct.nig_stats* %82, %struct.nig_stats* %83, i32 16)
  %85 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %86 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %85, i32 0, i32 4
  %87 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %88 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %87, i32 0, i32 3
  %89 = load %struct.nig_stats*, %struct.nig_stats** %88, align 8
  %90 = getelementptr inbounds %struct.nig_stats, %struct.nig_stats* %89, i64 1
  %91 = call i32 @memcpy(%struct.nig_stats* %86, %struct.nig_stats* %90, i32 4)
  %92 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %93 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %96 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %98 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %101 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = load %struct.host_port_stats*, %struct.host_port_stats** %6, align 8
  %103 = getelementptr inbounds %struct.host_port_stats, %struct.host_port_stats* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = call i64 @CHIP_IS_E3(%struct.bnx2x* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %81
  %110 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %111 = call i64 @BP_PORT(%struct.bnx2x* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* @MISC_REG_CPMU_LP_SM_ENT_CNT_P1, align 8
  br label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @MISC_REG_CPMU_LP_SM_ENT_CNT_P0, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  store i64 %118, i64* %9, align 8
  %119 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i64 @REG_RD(%struct.bnx2x* %119, i64 %120)
  %122 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %123 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 8
  br label %128

128:                                              ; preds = %117, %81
  %129 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %130 = call i32 @BP_NOMCP(%struct.bnx2x* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %155, label %132

132:                                              ; preds = %128
  %133 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @port_mb, align 8
  %135 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %136 = call i64 @BP_PORT(%struct.bnx2x* %135)
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @SHMEM_RD(%struct.bnx2x* %133, i32 %139)
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %143 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %141, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %132
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %149 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.bnx2x_eth_stats*, %struct.bnx2x_eth_stats** %7, align 8
  %151 = getelementptr inbounds %struct.bnx2x_eth_stats, %struct.bnx2x_eth_stats* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i32 (i8*, ...) @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %146, %132
  br label %155

155:                                              ; preds = %154, %128
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %37
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i8* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_bmac_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_emac_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_mstat_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*, ...) #1

declare dso_local i32 @ADD_EXTEND_64(i32, i32, i64) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @UPDATE_STAT64_NIG(i32, i32) #1

declare dso_local i32 @memcpy(%struct.nig_stats*, %struct.nig_stats*, i32) #1

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i64 @SHMEM_RD(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

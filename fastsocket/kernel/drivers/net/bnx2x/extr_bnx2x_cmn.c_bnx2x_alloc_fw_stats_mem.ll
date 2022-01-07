; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_fw_stats_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_cmn.c_bnx2x_alloc_fw_stats_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i64, i64, i64, i64, %struct.bnx2x_fw_stats_data*, %struct.bnx2x_fw_stats_req* }
%struct.bnx2x_fw_stats_data = type { i32 }
%struct.bnx2x_fw_stats_req = type { i32 }

@STATS_QUERY_CMD_COUNT = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"stats fw_stats_num %d, vf headroom %d, num_groups %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"statistics request base address set to %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"statistics data base address set to %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Can't allocate FW stats memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_alloc_fw_stats_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_alloc_fw_stats_mem(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i64 @NO_FCOE(%struct.bnx2x* %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %13)
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 2, %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = call i64 @IS_SRIOV(%struct.bnx2x* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i32 @bnx2x_vf_headroom(%struct.bnx2x* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @STATS_QUERY_CMD_COUNT, align 4
  %36 = sdiv i32 %34, %35
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* @STATS_QUERY_CMD_COUNT, align 4
  %43 = srem i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = add nsw i32 %36, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @BNX2X_MSG_SP, align 4
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %48, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = add i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %61 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = add i64 12, %64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 5
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %79 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = call i32 @BNX2X_PCI_ALLOC(i64 %72, i64* %74, i32 %81)
  %83 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %84 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.bnx2x_fw_stats_req*
  %87 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 8
  store %struct.bnx2x_fw_stats_req* %86, %struct.bnx2x_fw_stats_req** %88, align 8
  %89 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 4
  store i64 %91, i64* %93, align 8
  %94 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %99 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = bitcast i32* %102 to %struct.bnx2x_fw_stats_data*
  %104 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 7
  store %struct.bnx2x_fw_stats_data* %103, %struct.bnx2x_fw_stats_data** %105, align 8
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %110 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  %114 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %115 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @BNX2X_MSG_SP, align 4
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @U64_HI(i64 %119)
  %121 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %122 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @U64_LO(i64 %123)
  %125 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %116, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %124)
  %126 = load i32, i32* @BNX2X_MSG_SP, align 4
  %127 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @U64_HI(i64 %129)
  %131 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %132 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @U64_LO(i64 %133)
  %135 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %134)
  store i32 0, i32* %2, align 4
  br label %142

136:                                              ; No predecessors!
  %137 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %138 = call i32 @bnx2x_free_fw_stats_mem(%struct.bnx2x* %137)
  %139 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %136, %29
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i64 @NO_FCOE(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

declare dso_local i64 @IS_SRIOV(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_vf_headroom(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @BNX2X_PCI_ALLOC(i64, i64*, i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @bnx2x_free_fw_stats_mem(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

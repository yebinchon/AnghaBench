; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bnx2x = type { i8*, i64, %struct.TYPE_6__, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, i8*, i64 }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }

@port_mb = common dso_local global %struct.TYPE_7__* null, align 8
@func_mb = common dso_local global %struct.TYPE_9__* null, align 8
@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"port_stx 0x%x  func_stx 0x%x\0A\00", align 1
@STATS_EVENT_PMF = common dso_local global i32 0, align 4
@NIG_REG_STAT0_BRB_DISCARD = common dso_local global i64 0, align 8
@NIG_REG_STAT0_BRB_TRUNCATE = common dso_local global i64 0, align 8
@NIG_REG_STAT0_EGRESS_MAC_PKT0 = common dso_local global i64 0, align 8
@NIG_REG_STAT0_EGRESS_MAC_PKT1 = common dso_local global i64 0, align 8
@func_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_stats_init(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %6 = call i32 @BP_PORT(%struct.bnx2x* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @BP_FW_MB_IDX(%struct.bnx2x* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = call i32 @BP_NOMCP(%struct.bnx2x* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %1
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @port_mb, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @SHMEM_RD(%struct.bnx2x* %19, i32 %25)
  %27 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @func_mb, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @SHMEM_RD(%struct.bnx2x* %30, i32 %36)
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %46

40:                                               ; preds = %1
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* null, i8** %43, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 0
  store i8* null, i8** %45, align 8
  br label %46

46:                                               ; preds = %40, %18
  %47 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @DP(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %46
  %61 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %62 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %68 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = load i32, i32* @STATS_EVENT_PMF, align 4
  %75 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %66, %60, %46
  %77 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %78 = call i32 @BP_PORT(%struct.bnx2x* %77)
  store i32 %78, i32* %3, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = call i32 @memset(%struct.TYPE_8__* %81, i32 0, i32 4)
  %83 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %84 = load i64, i64* @NIG_REG_STAT0_BRB_DISCARD, align 8
  %85 = load i32, i32* %3, align 4
  %86 = mul nsw i32 %85, 56
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i8* @REG_RD(%struct.bnx2x* %83, i64 %88)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %91 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 3
  store i8* %89, i8** %93, align 8
  %94 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %95 = load i64, i64* @NIG_REG_STAT0_BRB_TRUNCATE, align 8
  %96 = load i32, i32* %3, align 4
  %97 = mul nsw i32 %96, 56
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %95, %98
  %100 = call i8* @REG_RD(%struct.bnx2x* %94, i64 %99)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i8* %100, i8** %104, align 8
  %105 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %106 = call i32 @CHIP_IS_E3(%struct.bnx2x* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %131, label %108

108:                                              ; preds = %76
  %109 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %110 = load i64, i64* @NIG_REG_STAT0_EGRESS_MAC_PKT0, align 8
  %111 = load i32, i32* %3, align 4
  %112 = mul nsw i32 %111, 80
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %110, %113
  %115 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %116 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = call i32 @REG_RD_DMAE(%struct.bnx2x* %109, i64 %114, i32* %118, i32 2)
  %120 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %121 = load i64, i64* @NIG_REG_STAT0_EGRESS_MAC_PKT1, align 8
  %122 = load i32, i32* %3, align 4
  %123 = mul nsw i32 %122, 80
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %127 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = call i32 @REG_RD_DMAE(%struct.bnx2x* %120, i64 %125, i32* %129, i32 2)
  br label %131

131:                                              ; preds = %108, %76
  %132 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %133 = call i32 @bnx2x_prep_fw_stats_req(%struct.bnx2x* %132)
  %134 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %135 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %155

138:                                              ; preds = %131
  %139 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %140 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %138
  %144 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %145 = load i32, i32* @func_stats, align 4
  %146 = call %struct.TYPE_8__* @bnx2x_sp(%struct.bnx2x* %144, i32 %145)
  %147 = call i32 @memset(%struct.TYPE_8__* %146, i32 0, i32 4)
  %148 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %149 = call i32 @bnx2x_func_stats_init(%struct.bnx2x* %148)
  %150 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %151 = call i32 @bnx2x_hw_stats_post(%struct.bnx2x* %150)
  %152 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %153 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %152)
  br label %154

154:                                              ; preds = %143, %138
  br label %155

155:                                              ; preds = %154, %131
  %156 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %157 = call i32 @bnx2x_memset_stats(%struct.bnx2x* %156)
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i8* @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i8*, i8*) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD_DMAE(%struct.bnx2x*, i64, i32*, i32) #1

declare dso_local i32 @bnx2x_prep_fw_stats_req(%struct.bnx2x*) #1

declare dso_local %struct.TYPE_8__* @bnx2x_sp(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_func_stats_init(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_hw_stats_post(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_stats_comp(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_memset_stats(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

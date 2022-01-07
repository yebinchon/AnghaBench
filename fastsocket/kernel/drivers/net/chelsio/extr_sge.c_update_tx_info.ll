; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_update_tx_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_update_tx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.sge* }
%struct.sge = type { i64, %struct.TYPE_2__*, %struct.cmdQ* }
%struct.TYPE_2__ = type { i32 }
%struct.cmdQ = type { i64, i64, i64, i32 }

@F_FL0_ENABLE = common dso_local global i32 0, align 4
@F_FL1_ENABLE = common dso_local global i32 0, align 4
@F_CMDQ0_ENABLE = common dso_local global i32 0, align 4
@CMDQ_STAT_RUNNING = common dso_local global i32 0, align 4
@CMDQ_STAT_LAST_PKT_DB = common dso_local global i32 0, align 4
@A_SG_DOORBELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @update_tx_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tx_info(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sge*, align 8
  %8 = alloca %struct.cmdQ*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  %11 = load %struct.sge*, %struct.sge** %10, align 8
  store %struct.sge* %11, %struct.sge** %7, align 8
  %12 = load %struct.sge*, %struct.sge** %7, align 8
  %13 = getelementptr inbounds %struct.sge, %struct.sge* %12, i32 0, i32 2
  %14 = load %struct.cmdQ*, %struct.cmdQ** %13, align 8
  %15 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %14, i64 0
  store %struct.cmdQ* %15, %struct.cmdQ** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %19 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @F_FL0_ENABLE, align 4
  %24 = load i32, i32* @F_FL1_ENABLE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load %struct.sge*, %struct.sge** %7, align 8
  %30 = call i32 @freelQs_empty(%struct.sge* %29)
  %31 = load i32, i32* @F_FL0_ENABLE, align 4
  %32 = load i32, i32* @F_FL1_ENABLE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %3
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %37
  %43 = load i32, i32* @CMDQ_STAT_RUNNING, align 4
  %44 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %45 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %44, i32 0, i32 3
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %48 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %51 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %55 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %42
  %59 = load i32, i32* @CMDQ_STAT_LAST_PKT_DB, align 4
  %60 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %61 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %60, i32 0, i32 3
  %62 = call i32 @test_and_set_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @CMDQ_STAT_RUNNING, align 4
  %66 = load %struct.cmdQ*, %struct.cmdQ** %8, align 8
  %67 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %66, i32 0, i32 3
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %70 = load %struct.adapter*, %struct.adapter** %4, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @A_SG_DOORBELL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %64, %58, %42
  %77 = load %struct.sge*, %struct.sge** %7, align 8
  %78 = getelementptr inbounds %struct.sge, %struct.sge* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = icmp ne %struct.TYPE_2__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.sge*, %struct.sge** %7, align 8
  %83 = getelementptr inbounds %struct.sge, %struct.sge* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 @tasklet_hi_schedule(i32* %85)
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* @F_CMDQ0_ENABLE, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %37
  %93 = load %struct.sge*, %struct.sge** %7, align 8
  %94 = getelementptr inbounds %struct.sge, %struct.sge* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.sge*, %struct.sge** %7, align 8
  %102 = call i32 @restart_tx_queues(%struct.sge* %101)
  br label %103

103:                                              ; preds = %100, %92
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @freelQs_empty(%struct.sge*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @restart_tx_queues(%struct.sge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

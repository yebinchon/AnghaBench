; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_tp_get_mib_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_tp_get_mib_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.tp_mib_stats = type { i32 }

@A_TP_MIB_INDEX = common dso_local global i32 0, align 4
@A_TP_MIB_RDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_tp_get_mib_stats(%struct.adapter* %0, %struct.tp_mib_stats* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.tp_mib_stats*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.tp_mib_stats* %1, %struct.tp_mib_stats** %4, align 8
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = load i32, i32* @A_TP_MIB_INDEX, align 4
  %7 = load i32, i32* @A_TP_MIB_RDATA, align 4
  %8 = load %struct.tp_mib_stats*, %struct.tp_mib_stats** %4, align 8
  %9 = bitcast %struct.tp_mib_stats* %8 to i32*
  %10 = call i32 @t3_read_indirect(%struct.adapter* %5, i32 %6, i32 %7, i32* %9, i32 1, i32 0)
  ret void
}

declare dso_local i32 @t3_read_indirect(%struct.adapter*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

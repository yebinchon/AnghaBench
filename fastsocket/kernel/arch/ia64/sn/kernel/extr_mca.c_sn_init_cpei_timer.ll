; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_mca.c_sn_init_cpei_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_mca.c_sn_init_cpei_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@sn_cpei_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@CPEI_INTERVAL = common dso_local global i64 0, align 8
@sn_cpei_timer_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_init_cpei_timer() #0 {
  %1 = call i32 @init_timer(%struct.TYPE_4__* @sn_cpei_timer)
  %2 = load i64, i64* @jiffies, align 8
  %3 = load i64, i64* @CPEI_INTERVAL, align 8
  %4 = add nsw i64 %2, %3
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sn_cpei_timer, i32 0, i32 1), align 8
  %5 = load i32, i32* @sn_cpei_timer_handler, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sn_cpei_timer, i32 0, i32 0), align 8
  %6 = call i32 @add_timer(%struct.TYPE_4__* @sn_cpei_timer)
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

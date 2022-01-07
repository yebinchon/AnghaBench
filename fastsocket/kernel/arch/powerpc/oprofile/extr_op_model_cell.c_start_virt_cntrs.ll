; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_start_virt_cntrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_start_virt_cntrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32 }

@timer_virt_cntr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cell_virtual_cntr = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_virt_cntrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_virt_cntrs() #0 {
  %1 = call i32 @init_timer(%struct.TYPE_4__* @timer_virt_cntr)
  %2 = load i32, i32* @cell_virtual_cntr, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @timer_virt_cntr, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @timer_virt_cntr, i32 0, i32 0), align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i32, i32* @HZ, align 4
  %5 = sdiv i32 %4, 10
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %3, %6
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @timer_virt_cntr, i32 0, i32 1), align 8
  %8 = call i32 @add_timer(%struct.TYPE_4__* @timer_virt_cntr)
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

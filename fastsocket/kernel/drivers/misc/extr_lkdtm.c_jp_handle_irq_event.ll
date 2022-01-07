; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_lkdtm.c_jp_handle_irq_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_lkdtm.c_jp_handle_irq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.irqaction*)* @jp_handle_irq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jp_handle_irq_event(i32 %0, %struct.irqaction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irqaction*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %5 = call i32 (...) @lkdtm_handler()
  %6 = call i32 (...) @jprobe_return()
  ret i32 0
}

declare dso_local i32 @lkdtm_handler(...) #1

declare dso_local i32 @jprobe_return(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_ack_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_ipipe.c___ipipe_ack_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 (i32, %struct.irq_desc*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.irq_desc*)* @__ipipe_ack_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ipipe_ack_irq(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 0
  %7 = load i32 (i32, %struct.irq_desc*)*, i32 (i32, %struct.irq_desc*)** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %10 = call i32 %7(i32 %8, %struct.irq_desc* %9)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

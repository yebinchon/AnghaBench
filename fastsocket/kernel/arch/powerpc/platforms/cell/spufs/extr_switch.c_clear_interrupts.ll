; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_clear_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_clear_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { i32 }
%struct.spu = type { i32 }

@CLASS0_INTR_MASK = common dso_local global i32 0, align 4
@CLASS1_INTR_MASK = common dso_local global i32 0, align 4
@CLASS2_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @clear_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_interrupts(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %5 = load %struct.spu*, %struct.spu** %4, align 8
  %6 = getelementptr inbounds %struct.spu, %struct.spu* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.spu*, %struct.spu** %4, align 8
  %9 = call i32 @spu_int_mask_set(%struct.spu* %8, i32 0, i64 0)
  %10 = load %struct.spu*, %struct.spu** %4, align 8
  %11 = call i32 @spu_int_mask_set(%struct.spu* %10, i32 1, i64 0)
  %12 = load %struct.spu*, %struct.spu** %4, align 8
  %13 = call i32 @spu_int_mask_set(%struct.spu* %12, i32 2, i64 0)
  %14 = load %struct.spu*, %struct.spu** %4, align 8
  %15 = load i32, i32* @CLASS0_INTR_MASK, align 4
  %16 = call i32 @spu_int_stat_clear(%struct.spu* %14, i32 0, i32 %15)
  %17 = load %struct.spu*, %struct.spu** %4, align 8
  %18 = load i32, i32* @CLASS1_INTR_MASK, align 4
  %19 = call i32 @spu_int_stat_clear(%struct.spu* %17, i32 1, i32 %18)
  %20 = load %struct.spu*, %struct.spu** %4, align 8
  %21 = load i32, i32* @CLASS2_INTR_MASK, align 4
  %22 = call i32 @spu_int_stat_clear(%struct.spu* %20, i32 2, i32 %21)
  %23 = load %struct.spu*, %struct.spu** %4, align 8
  %24 = getelementptr inbounds %struct.spu, %struct.spu* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_irq(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spu_int_mask_set(%struct.spu*, i32, i64) #1

declare dso_local i32 @spu_int_stat_clear(%struct.spu*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

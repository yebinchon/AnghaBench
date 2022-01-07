; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_penguin_jailcell.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_smp_64.c_smp_penguin_jailcell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@smp_capture_registry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"#StoreLoad\00", align 1
@penguins_are_doing_time = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_penguin_jailcell(i32 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 1, %5
  %7 = call i32 @clear_softint(i32 %6)
  %8 = call i32 (...) @preempt_disable()
  call void asm sideeffect "flushw", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %9 = call i32 @prom_world(i32 1)
  %10 = call i32 @atomic_inc(i32* @smp_capture_registry)
  %11 = call i32 @membar_safe(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %15, %2
  %13 = load i64, i64* @penguins_are_doing_time, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @rmb()
  br label %12

17:                                               ; preds = %12
  %18 = call i32 @atomic_dec(i32* @smp_capture_registry)
  %19 = call i32 @prom_world(i32 0)
  %20 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @clear_softint(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @prom_world(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @membar_safe(i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 563}

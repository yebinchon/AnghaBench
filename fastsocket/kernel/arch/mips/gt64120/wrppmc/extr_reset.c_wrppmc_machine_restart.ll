; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/gt64120/wrppmc/extr_reset.c_wrppmc_machine_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/gt64120/wrppmc/extr_reset.c_wrppmc_machine_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ST0_BEV = common dso_local global i32 0, align 4
@ST0_ERL = common dso_local global i32 0, align 4
@CONF_CM_CMASK = common dso_local global i32 0, align 4
@CONF_CM_UNCACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wrppmc_machine_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @local_irq_disable()
  %4 = load i32, i32* @ST0_BEV, align 4
  %5 = load i32, i32* @ST0_ERL, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @set_c0_status(i32 %6)
  %8 = load i32, i32* @CONF_CM_CMASK, align 4
  %9 = load i32, i32* @CONF_CM_UNCACHED, align 4
  %10 = call i32 @change_c0_config(i32 %8, i32 %9)
  %11 = call i32 (...) @flush_cache_all()
  %12 = call i32 @write_c0_wired(i32 0)
  call void asm sideeffect "jr\09$0", "r,~{dirflag},~{fpsr},~{flags}"(i32 -1077936128) #2, !srcloc !2
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @set_c0_status(i32) #1

declare dso_local i32 @change_c0_config(i32, i32) #1

declare dso_local i32 @flush_cache_all(...) #1

declare dso_local i32 @write_c0_wired(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 577}

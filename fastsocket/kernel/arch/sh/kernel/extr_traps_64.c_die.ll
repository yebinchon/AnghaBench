; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_die.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/extr_traps_64.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %lx\0A\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (...) @console_verbose()
  %8 = call i32 @spin_lock_irq(i32* @die_lock)
  %9 = load i8*, i8** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = and i64 %10, 16777215
  %12 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %11)
  %13 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %14 = call i32 @show_regs(%struct.pt_regs* %13)
  %15 = call i32 @spin_unlock_irq(i32* @die_lock)
  %16 = load i32, i32* @SIGSEGV, align 4
  %17 = call i32 @do_exit(i32 %16)
  ret void
}

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @printk(i8*, i8*, i64) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

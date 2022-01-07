; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_traps.c_die.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_traps.c_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@die.die_counter = internal global i32 0, align 4
@die_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: %04lx [#%d] \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DIE_OOPS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@TAINT_DIE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Fatal exception in interrupt\00", align 1
@panic_on_oops = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Fatal exception: panic_on_oops\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die(i8* %0, %struct.pt_regs* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (...) @oops_enter()
  %8 = call i32 (...) @lgr_info_log()
  %9 = call i32 (...) @debug_stop_all()
  %10 = call i32 (...) @console_verbose()
  %11 = call i32 @spin_lock_irq(i32* @die_lock)
  %12 = call i32 @bust_spinlocks(i32 1)
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, 65535
  %16 = load i32, i32* @die.die_counter, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @die.die_counter, align 4
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %13, i64 %15, i32 %17)
  %19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @DIE_OOPS, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SIGSEGV, align 4
  %29 = call i32 @notify_die(i32 %20, i8* %21, %struct.pt_regs* %22, i64 %23, i32 %27, i32 %28)
  %30 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %31 = call i32 @show_regs(%struct.pt_regs* %30)
  %32 = call i32 @bust_spinlocks(i32 0)
  %33 = load i32, i32* @TAINT_DIE, align 4
  %34 = call i32 @add_taint(i32 %33)
  %35 = call i32 @spin_unlock_irq(i32* @die_lock)
  %36 = call i64 (...) @in_interrupt()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %3
  %41 = load i64, i64* @panic_on_oops, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 (...) @oops_exit()
  %47 = load i32, i32* @SIGSEGV, align 4
  %48 = call i32 @do_exit(i32 %47)
  ret void
}

declare dso_local i32 @oops_enter(...) #1

declare dso_local i32 @lgr_info_log(...) #1

declare dso_local i32 @debug_stop_all(...) #1

declare dso_local i32 @console_verbose(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bust_spinlocks(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @notify_die(i32, i8*, %struct.pt_regs*, i64, i32, i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @add_taint(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @oops_exit(...) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

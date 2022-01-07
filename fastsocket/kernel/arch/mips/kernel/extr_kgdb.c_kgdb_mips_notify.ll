; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_kgdb.c_kgdb_mips_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_kgdb.c_kgdb_mips_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.die_args = type { %struct.pt_regs* }
%struct.pt_regs = type { i32, i64 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@kgdb_active = common dso_local global i32 0, align 4
@kgdb_setting_breakpoint = common dso_local global i32 0, align 4
@breakinst = common dso_local global i64 0, align 8
@NOTIFY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @kgdb_mips_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kgdb_mips_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.die_args*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.die_args*
  store %struct.die_args* %12, %struct.die_args** %8, align 8
  %13 = load %struct.die_args*, %struct.die_args** %8, align 8
  %14 = getelementptr inbounds %struct.die_args, %struct.die_args* %13, i32 0, i32 0
  %15 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  store %struct.pt_regs* %15, %struct.pt_regs** %9, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 124
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %22 = call i64 @user_mode(%struct.pt_regs* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = call i32 @atomic_read(i32* @kgdb_active)
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = call i32 (...) @smp_processor_id()
  %31 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %32 = call i32 @kgdb_nmicallback(i32 %30, %struct.pt_regs* %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @compute_signal(i32 %35)
  %37 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %38 = call i64 @kgdb_handle_exception(i32 %34, i32 %36, i32 0, %struct.pt_regs* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %33
  %43 = call i32 @atomic_read(i32* @kgdb_setting_breakpoint)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 9
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @breakinst, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %56 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %54, %48, %45
  br label %60

60:                                               ; preds = %59, %42
  %61 = call i32 (...) @local_irq_enable()
  %62 = call i32 (...) @__flush_cache_all()
  %63 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %40, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kgdb_nmicallback(i32, %struct.pt_regs*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @kgdb_handle_exception(i32, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @compute_signal(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @__flush_cache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c___kgdb_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kgdb.c___kgdb_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_args = type { i32, i32, i32, %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@kgdb_active = common dso_local global i32 0, align 4
@was_in_debug_nmi = common dso_local global i32* null, align 8
@NOTIFY_STOP = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@kgdb_cpu_doing_single_step = common dso_local global i32 0, align 4
@TIF_SINGLESTEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.die_args*, i64)* @__kgdb_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kgdb_notify(%struct.die_args* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.die_args*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.die_args* %0, %struct.die_args** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.die_args*, %struct.die_args** %4, align 8
  %8 = getelementptr inbounds %struct.die_args, %struct.die_args* %7, i32 0, i32 3
  %9 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  store %struct.pt_regs* %9, %struct.pt_regs** %6, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %73 [
    i64 131, label %11
    i64 128, label %26
    i64 130, label %28
    i64 129, label %43
    i64 132, label %52
  ]

11:                                               ; preds = %2
  %12 = call i32 @atomic_read(i32* @kgdb_active)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = call i32 (...) @raw_smp_processor_id()
  %16 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %17 = call i32 @kgdb_nmicallback(i32 %15, %struct.pt_regs* %16)
  %18 = load i32*, i32** @was_in_debug_nmi, align 8
  %19 = call i32 (...) @raw_smp_processor_id()
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 1, i32* %21, align 4
  %22 = call i32 (...) @touch_nmi_watchdog()
  %23 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %23, i32* %3, align 4
  br label %98

24:                                               ; preds = %11
  %25 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %25, i32* %3, align 4
  br label %98

26:                                               ; preds = %2
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %2
  %29 = load i32*, i32** @was_in_debug_nmi, align 8
  %30 = call i32 (...) @raw_smp_processor_id()
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32*, i32** @was_in_debug_nmi, align 8
  %37 = call i32 (...) @raw_smp_processor_id()
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %40, i32* %3, align 4
  br label %98

41:                                               ; preds = %28
  %42 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %42, i32* %3, align 4
  br label %98

43:                                               ; preds = %2
  %44 = call i32 @atomic_read(i32* @kgdb_active)
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = call i32 (...) @raw_smp_processor_id()
  %48 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %49 = call i32 @kgdb_nmicallback(i32 %47, %struct.pt_regs* %48)
  %50 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %50, i32* %3, align 4
  br label %98

51:                                               ; preds = %43
  br label %80

52:                                               ; preds = %2
  %53 = call i32 @atomic_read(i32* @kgdb_cpu_doing_single_step)
  %54 = call i32 (...) @raw_smp_processor_id()
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %58 = call i32 @user_mode(%struct.pt_regs* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %62 = load %struct.die_args*, %struct.die_args** %4, align 8
  %63 = call i32 @single_step_cont(%struct.pt_regs* %61, %struct.die_args* %62)
  store i32 %63, i32* %3, align 4
  br label %98

64:                                               ; preds = %56
  br label %80

65:                                               ; preds = %52
  %66 = load i32, i32* @TIF_SINGLESTEP, align 4
  %67 = call i32 @test_thread_flag(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %70, i32* %3, align 4
  br label %98

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %2, %72
  %74 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %75 = call i32 @user_mode(%struct.pt_regs* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %78, i32* %3, align 4
  br label %98

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %64, %51
  %81 = load %struct.die_args*, %struct.die_args** %4, align 8
  %82 = getelementptr inbounds %struct.die_args, %struct.die_args* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.die_args*, %struct.die_args** %4, align 8
  %85 = getelementptr inbounds %struct.die_args, %struct.die_args* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.die_args*, %struct.die_args** %4, align 8
  %88 = getelementptr inbounds %struct.die_args, %struct.die_args* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %91 = call i64 @kgdb_handle_exception(i32 %83, i32 %86, i32 %89, %struct.pt_regs* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %80
  %96 = call i32 (...) @touch_nmi_watchdog()
  %97 = load i32, i32* @NOTIFY_STOP, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %93, %77, %69, %60, %46, %41, %35, %26, %24, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kgdb_nmicallback(i32, %struct.pt_regs*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @single_step_cont(%struct.pt_regs*, %struct.die_args*) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i64 @kgdb_handle_exception(i32, i32, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

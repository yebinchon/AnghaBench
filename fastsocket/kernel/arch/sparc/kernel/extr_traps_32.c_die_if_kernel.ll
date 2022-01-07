; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_32.c_die_if_kernel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_traps_32.c_die_if_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32, i64, i64* }
%struct.reg_window32 = type { i64* }

@die_if_kernel.die_counter = internal global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"              \\|/ ____ \\|/\0A              \22@'/ ,. \\`@\22\0A              /_| \\__/ |_\\\0A                 \\__U_/\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s(%d): %s [#%d]\0A\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@TAINT_DIE = common dso_local global i32 0, align 4
@__SAVE = common dso_local global i32 0, align 4
@__RESTORE = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@PAGE_OFFSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"Caller[%08lx]: %pS\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Instruction DUMP:\00", align 1
@PSR_PS = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @die_if_kernel(i8* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.reg_window32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %12 = call i32 @task_pid_nr(%struct.TYPE_3__* %11)
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @die_if_kernel.die_counter, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @die_if_kernel.die_counter, align 4
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %12, i8* %13, i32 %15)
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = call i32 @show_regs(%struct.pt_regs* %17)
  %19 = load i32, i32* @TAINT_DIE, align 4
  %20 = call i32 @add_taint(i32 %19)
  %21 = load i32, i32* @__SAVE, align 4
  %22 = load i32, i32* @__SAVE, align 4
  %23 = load i32, i32* @__SAVE, align 4
  %24 = load i32, i32* @__SAVE, align 4
  %25 = load i32, i32* @__SAVE, align 4
  %26 = load i32, i32* @__SAVE, align 4
  %27 = load i32, i32* @__SAVE, align 4
  %28 = load i32, i32* @__SAVE, align 4
  %29 = load i32, i32* @__RESTORE, align 4
  %30 = load i32, i32* @__RESTORE, align 4
  %31 = load i32, i32* @__RESTORE, align 4
  %32 = load i32, i32* @__RESTORE, align 4
  %33 = load i32, i32* @__RESTORE, align 4
  %34 = load i32, i32* @__RESTORE, align 4
  %35 = load i32, i32* @__RESTORE, align 4
  %36 = load i32, i32* @__RESTORE, align 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @UREG_FP, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.reg_window32*
  store %struct.reg_window32* %43, %struct.reg_window32** %6, align 8
  br label %44

44:                                               ; preds = %64, %2
  %45 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %46 = icmp ne %struct.reg_window32* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = icmp slt i32 %48, 30
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %53 = ptrtoint %struct.reg_window32* %52 to i64
  %54 = load i64, i64* @PAGE_OFFSET, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %58 = ptrtoint %struct.reg_window32* %57 to i64
  %59 = and i64 %58, 7
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %51, %47, %44
  %63 = phi i1 [ false, %51 ], [ false, %47 ], [ false, %44 ], [ %61, %56 ]
  br i1 %63, label %64, label %83

64:                                               ; preds = %62
  %65 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %66 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %71 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 7
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %69, i8* %75)
  %77 = load %struct.reg_window32*, %struct.reg_window32** %6, align 8
  %78 = getelementptr inbounds %struct.reg_window32, %struct.reg_window32* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 6
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.reg_window32*
  store %struct.reg_window32* %82, %struct.reg_window32** %6, align 8
  br label %44

83:                                               ; preds = %62
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %86 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i64*
  %89 = call i32 @instruction_dump(i64* %88)
  %90 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %91 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @PSR_PS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* @SIGKILL, align 4
  %98 = call i32 @do_exit(i32 %97)
  br label %99

99:                                               ; preds = %96, %83
  %100 = load i32, i32* @SIGSEGV, align 4
  %101 = call i32 @do_exit(i32 %100)
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @add_taint(i32) #1

declare dso_local i32 @instruction_dump(i64*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

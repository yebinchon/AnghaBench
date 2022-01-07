; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_traps.c_show_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_traps.c_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"CPU:    %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"SPU: %08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SPI: %08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Process %s (pid: %d, process nr: %d, stackpage=%08lx)\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"\0AStack: \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0ACode: \00", align 1
@PAGE_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c" Bad PC value.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @show_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_registers(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %7 = call i32 (...) @smp_processor_id()
  %8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = call i32 @show_regs(%struct.pt_regs* %9)
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i64 1
  %13 = ptrtoint %struct.pt_regs* %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = call i64 @user_mode(%struct.pt_regs* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %26

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %23, %17
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %31 = call i32 @task_pid_nr(%struct.TYPE_4__* %30)
  %32 = load i32, i32* %3, align 4
  %33 = and i32 65535, %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %35 = ptrtoint %struct.TYPE_4__* %34 to i64
  %36 = add i64 4096, %35
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %31, i32 %33, i64 %36)
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %26
  %41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %43 = load i64, i64* %5, align 8
  %44 = inttoptr i64 %43 to i64*
  %45 = call i32 @show_stack(%struct.TYPE_4__* %42, i64* %44)
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %48 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PAGE_OFFSET, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %69

53:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 20
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i8, i8* %6, align 1
  %59 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %60 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i64 @__get_user(i8 zeroext %58, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %52
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %78

71:                                               ; preds = %57
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %54

78:                                               ; preds = %69, %54
  br label %79

79:                                               ; preds = %78, %26
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @show_stack(%struct.TYPE_4__*, i64*) #1

declare dso_local i64 @__get_user(i8 zeroext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_traps.c_show_backtrace_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_traps.c_show_backtrace_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"<-- %s Frame: @%p -->\0A\00", align 1
@PSR_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Kernel Mode\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"User Mode\00", align 1
@NR_PT_REGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s %08lx\00", align 1
@regnames = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"--------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @show_backtrace_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_backtrace_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PSR_S, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %12, %struct.pt_regs* %13)
  %15 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %16 = bitcast %struct.pt_regs* %15 to i64*
  store i64* %16, i64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %48, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NR_PT_REGS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load i32*, i32** @regnames, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 0
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %27, i64 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NR_PT_REGS, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %40, 5
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %21
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %47

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %17

51:                                               ; preds = %17
  %52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

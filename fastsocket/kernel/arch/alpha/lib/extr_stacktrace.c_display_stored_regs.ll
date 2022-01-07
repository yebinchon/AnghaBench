; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/lib/extr_stacktrace.c_display_stored_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/lib/extr_stacktrace.c_display_stored_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Prologue [<%p>], Frame %p:\0A\00", align 1
@MEM_REG = common dso_local global i32 0, align 4
@MEM_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"\09\09%s / 0x%016lx\0A\00", align 1
@reg_name = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @display_stored_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @display_stored_regs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (i8*, i32*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %8, i8* %9)
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BB_END(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %53

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @STK_PUSH_MATCH(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MEM_REG, align 4
  %26 = and i32 %24, %25
  %27 = ashr i32 %26, 21
  store i32 %27, i32* %6, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MEM_OFF, align 4
  %32 = and i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 26
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i64, i64* %7, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %39, %22
  %43 = load i32*, i32** @reg_name, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  %50 = load i64, i64* %7, align 8
  %51 = call i32 (i8*, i32*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %42, %17
  br label %11

53:                                               ; preds = %11
  %54 = load i32*, i32** %5, align 8
  ret i32* %54
}

declare dso_local i32 @printk(i8*, i32*, ...) #1

declare dso_local i32 @BB_END(i32) #1

declare dso_local i64 @STK_PUSH_MATCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

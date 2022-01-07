; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_traps.c_show_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/kernel/extr_traps.c_show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Call Trace:\00", align 1
@THREAD_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" [<%08lx>] %pS\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_trace(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = load i64*, i64** %2, align 8
  %8 = ptrtoint i64* %7 to i64
  %9 = load i64, i64* @THREAD_SIZE, align 8
  %10 = add i64 %8, %9
  %11 = sub i64 %10, 1
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @THREAD_SIZE, align 8
  %14 = sub i64 0, %13
  %15 = and i64 %12, %14
  %16 = inttoptr i64 %15 to i64*
  store i64* %16, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %42, %1
  %18 = load i64*, i64** %2, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64*, i64** %3, align 8
  %21 = icmp ule i64* %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load i64*, i64** %2, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %2, align 8
  %25 = load i64, i64* %23, align 8
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @__kernel_text_address(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %36, i8* %38)
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %22
  br label %17

43:                                               ; preds = %17
  %44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @__kernel_text_address(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

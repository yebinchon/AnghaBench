; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/kernel/extr_traps.c_show_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/kernel/extr_traps.c_show_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"\0ACall Trace: \00", align 1
@VMALLOC_START = common dso_local global i64 0, align 8
@VMALLOC_END = common dso_local global i64 0, align 8
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failing address 0x%lx\0A\00", align 1
@_stext = external dso_local global i8, align 1
@_etext = external dso_local global i8, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[<%08lx>] \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_trace(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  %7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  %8 = load i64, i64* @VMALLOC_START, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @VMALLOC_END, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %57, %1
  %11 = load i64*, i64** %2, align 8
  %12 = ptrtoint i64* %11 to i64
  %13 = load i32, i32* @THREAD_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = and i64 %12, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = load i64*, i64** %2, align 8
  %21 = call i64 @__get_user(i64 %19, i64* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64*, i64** %2, align 8
  %25 = ptrtoint i64* %24 to i64
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %58

27:                                               ; preds = %18
  %28 = load i64*, i64** %2, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp uge i64 %30, ptrtoint (i8* @_stext to i64)
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = icmp ule i64 %33, ptrtoint (i8* @_etext to i64)
  br i1 %34, label %43, label %35

35:                                               ; preds = %32, %27
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39, %32
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = srem i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46, %43
  %53 = load i64, i64* %3, align 8
  %54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %39, %35
  br label %10

58:                                               ; preds = %23, %10
  ret void
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @__get_user(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

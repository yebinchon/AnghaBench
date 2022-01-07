; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_64.c_in_exception_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_dumpstack_64.c_in_exception_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@N_EXCEPTION_STACKS = common dso_local global i32 0, align 4
@orig_ist = common dso_local global i32 0, align 4
@EXCEPTION_STKSZ = common dso_local global i64 0, align 8
@x86_stack_ids = common dso_local global i8** null, align 8
@DEBUG_STACK = common dso_local global i32 0, align 4
@DEBUG_STKSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32, i64, i32*, i8**)* @in_exception_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @in_exception_stack(i32 %0, i64 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %61, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @N_EXCEPTION_STACKS, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %13
  %18 = load i32, i32* @orig_ist, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64* @per_cpu(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64* %20, i64** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %61

32:                                               ; preds = %17
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @EXCEPTION_STKSZ, align 8
  %36 = sub i64 %34, %35
  %37 = icmp uge i64 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %64

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 1, %47
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i8**, i8*** @x86_stack_ids, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i8**, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i64, i64* %11, align 8
  %59 = inttoptr i64 %58 to i64*
  store i64* %59, i64** %5, align 8
  br label %65

60:                                               ; preds = %32
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %13

64:                                               ; preds = %45, %13
  store i64* null, i64** %5, align 8
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i64*, i64** %5, align 8
  ret i64* %66
}

declare dso_local i64* @per_cpu(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

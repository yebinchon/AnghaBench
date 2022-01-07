; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kstack.h_kstack_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kstack.h_kstack_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i64 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@hardirq_stack = common dso_local global i64* null, align 8
@softirq_stack = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*, i64)* @kstack_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kstack_valid(%struct.thread_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %8 = ptrtoint %struct.thread_info* %7 to i64
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %10, 8
  %12 = icmp uge i64 %9, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @THREAD_SIZE, align 8
  %17 = add i64 %15, %16
  %18 = sub i64 %17, 4
  %19 = icmp ule i64 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %67

21:                                               ; preds = %13, %2
  %22 = load i64*, i64** @hardirq_stack, align 8
  %23 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %24 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %21
  %30 = load i64*, i64** @hardirq_stack, align 8
  %31 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp uge i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @THREAD_SIZE, align 8
  %43 = add i64 %41, %42
  %44 = sub i64 %43, 4
  %45 = icmp ule i64 %40, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %67

47:                                               ; preds = %39, %29
  %48 = load i64*, i64** @softirq_stack, align 8
  %49 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %50 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @THREAD_SIZE, align 8
  %61 = add i64 %59, %60
  %62 = sub i64 %61, 4
  %63 = icmp ule i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %67

65:                                               ; preds = %57, %47
  br label %66

66:                                               ; preds = %65, %21
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %46, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

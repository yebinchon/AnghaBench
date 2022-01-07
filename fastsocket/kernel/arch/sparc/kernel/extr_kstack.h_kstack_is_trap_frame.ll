; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kstack.h_kstack_is_trap_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_kstack.h_kstack_is_trap_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i64 }
%struct.pt_regs = type { i32 }

@THREAD_SIZE = common dso_local global i64 0, align 8
@hardirq_stack = common dso_local global i64* null, align 8
@softirq_stack = common dso_local global i64* null, align 8
@PT_REGS_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread_info*, %struct.pt_regs*)* @kstack_is_trap_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kstack_is_trap_frame(%struct.thread_info* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %9 = ptrtoint %struct.thread_info* %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %11 = ptrtoint %struct.pt_regs* %10 to i64
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @THREAD_SIZE, align 8
  %19 = add i64 %17, %18
  %20 = sub i64 %19, 4
  %21 = icmp ule i64 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %69

23:                                               ; preds = %15, %2
  %24 = load i64*, i64** @hardirq_stack, align 8
  %25 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %26 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %23
  %32 = load i64*, i64** @hardirq_stack, align 8
  %33 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %34 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @THREAD_SIZE, align 8
  %45 = add i64 %43, %44
  %46 = sub i64 %45, 4
  %47 = icmp ule i64 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %69

49:                                               ; preds = %41, %31
  %50 = load i64*, i64** @softirq_stack, align 8
  %51 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %52 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp uge i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %49
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @THREAD_SIZE, align 8
  %63 = add i64 %61, %62
  %64 = sub i64 %63, 4
  %65 = icmp ule i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59, %49
  br label %68

68:                                               ; preds = %67, %23
  store i32 0, i32* %3, align 4
  br label %78

69:                                               ; preds = %66, %48, %22
  %70 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %71 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -512
  %74 = load i32, i32* @PT_REGS_MAGIC, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %68
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_event.c___store_trace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_perf_event.c___store_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_callchain_entry = type { i32 }
%struct.stack_frame = type { i64*, i64 }
%struct.pt_regs = type { i64* }

@PSW_ADDR_INSN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_callchain_entry*, i64, i64, i64)* @__store_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__store_trace(%struct.perf_callchain_entry* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_callchain_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stack_frame*, align 8
  %11 = alloca %struct.pt_regs*, align 8
  store %struct.perf_callchain_entry* %0, %struct.perf_callchain_entry** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  br label %12

12:                                               ; preds = %4, %85
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PSW_ADDR_INSN, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %21, 16
  %23 = icmp ugt i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %12
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %5, align 8
  br label %103

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = inttoptr i64 %27 to %struct.stack_frame*
  store %struct.stack_frame* %28, %struct.stack_frame** %10, align 8
  %29 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %6, align 8
  %30 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %31 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PSW_ADDR_INSN, align 8
  %36 = and i64 %34, %35
  %37 = call i32 @perf_callchain_store(%struct.perf_callchain_entry* %29, i64 %36)
  br label %38

38:                                               ; preds = %26, %59
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %41 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PSW_ADDR_INSN, align 8
  %44 = and i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %71

48:                                               ; preds = %38
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, 16
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %48
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %5, align 8
  br label %103

59:                                               ; preds = %52
  %60 = load i64, i64* %7, align 8
  %61 = inttoptr i64 %60 to %struct.stack_frame*
  store %struct.stack_frame* %61, %struct.stack_frame** %10, align 8
  %62 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %6, align 8
  %63 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %64 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 8
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PSW_ADDR_INSN, align 8
  %69 = and i64 %67, %68
  %70 = call i32 @perf_callchain_store(%struct.perf_callchain_entry* %62, i64 %69)
  br label %38

71:                                               ; preds = %47
  %72 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %73 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %72, i64 1
  %74 = ptrtoint %struct.stack_frame* %73 to i64
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ule i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %80, 8
  %82 = icmp ugt i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %71
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %5, align 8
  br label %103

85:                                               ; preds = %78
  %86 = load i64, i64* %7, align 8
  %87 = inttoptr i64 %86 to %struct.pt_regs*
  store %struct.pt_regs* %87, %struct.pt_regs** %11, align 8
  %88 = load %struct.perf_callchain_entry*, %struct.perf_callchain_entry** %6, align 8
  %89 = load %struct.stack_frame*, %struct.stack_frame** %10, align 8
  %90 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 8
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PSW_ADDR_INSN, align 8
  %95 = and i64 %93, %94
  %96 = call i32 @perf_callchain_store(%struct.perf_callchain_entry* %88, i64 %95)
  %97 = load i64, i64* %7, align 8
  store i64 %97, i64* %8, align 8
  %98 = load %struct.pt_regs*, %struct.pt_regs** %11, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 15
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %7, align 8
  br label %12

103:                                              ; preds = %83, %57, %24
  %104 = load i64, i64* %5, align 8
  ret i64 %104
}

declare dso_local i32 @perf_callchain_store(%struct.perf_callchain_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

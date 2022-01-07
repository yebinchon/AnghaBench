; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c___global_reg_self.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_process_64.c___global_reg_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.thread_info*, i64, i64, i64, i32, i32 }
%struct.thread_info = type { i32 }
%struct.pt_regs = type { i32, i64*, i32, i32 }
%struct.reg_window = type { i64* }

@global_reg_snapshot = common dso_local global %struct.TYPE_2__* null, align 8
@UREG_I7 = common dso_local global i64 0, align 8
@TSTATE_PRIV = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_info*, %struct.pt_regs*, i32)* @__global_reg_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__global_reg_self(%struct.thread_info* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reg_window*, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @flushw_all()
  %9 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %10 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  store i32 %19, i32* %24, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  store i32 %27, i32* %32, align 8
  %33 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @UREG_I7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 4
  store i64 %38, i64* %43, align 8
  %44 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TSTATE_PRIV, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %102

50:                                               ; preds = %3
  %51 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %52 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @UREG_FP, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @STACK_BIAS, align 8
  %58 = add nsw i64 %56, %57
  %59 = inttoptr i64 %58 to %struct.reg_window*
  store %struct.reg_window* %59, %struct.reg_window** %7, align 8
  %60 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %61 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %62 = ptrtoint %struct.reg_window* %61 to i64
  %63 = call i64 @kstack_valid(%struct.thread_info* %60, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %50
  %66 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %67 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 7
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i64 %70, i64* %75, align 8
  %76 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %77 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 6
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @STACK_BIAS, align 8
  %82 = add nsw i64 %80, %81
  %83 = inttoptr i64 %82 to %struct.reg_window*
  store %struct.reg_window* %83, %struct.reg_window** %7, align 8
  %84 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %85 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %86 = ptrtoint %struct.reg_window* %85 to i64
  %87 = call i64 @kstack_valid(%struct.thread_info* %84, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %65
  %90 = load %struct.reg_window*, %struct.reg_window** %7, align 8
  %91 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 7
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  store i64 %94, i64* %99, align 8
  br label %100

100:                                              ; preds = %89, %65
  br label %101

101:                                              ; preds = %100, %50
  br label %113

102:                                              ; preds = %3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %102, %101
  %114 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_reg_snapshot, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store %struct.thread_info* %114, %struct.thread_info** %119, align 8
  ret void
}

declare dso_local i32 @flushw_all(...) #1

declare dso_local i64 @kstack_valid(%struct.thread_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

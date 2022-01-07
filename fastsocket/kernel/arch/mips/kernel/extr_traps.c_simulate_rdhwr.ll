; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_simulate_rdhwr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_traps.c_simulate_rdhwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32* }
%struct.thread_info = type { i32 }

@current = common dso_local global i32 0, align 4
@OPCODE = common dso_local global i32 0, align 4
@SPEC3 = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@RDHWR = common dso_local global i32 0, align 4
@RD = common dso_local global i32 0, align 4
@RT = common dso_local global i32 0, align 4
@current_cpu_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @simulate_rdhwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simulate_rdhwr(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call %struct.thread_info* @task_thread_info(i32 %9)
  store %struct.thread_info* %10, %struct.thread_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @OPCODE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @SPEC3, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %86

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @FUNC, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @RDHWR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RD, align 4
  %25 = and i32 %23, %24
  %26 = lshr i32 %25, 11
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @RT, align 4
  %29 = and i32 %27, %28
  %30 = lshr i32 %29, 16
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %85 [
    i32 0, label %32
    i32 1, label %40
    i32 2, label %50
    i32 3, label %58
    i32 29, label %75
  ]

32:                                               ; preds = %22
  %33 = call i32 (...) @smp_processor_id()
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %87

40:                                               ; preds = %22
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 2, i32 0), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 1, i32 0), align 4
  %43 = call i32 @min(i32 %41, i32 %42)
  %44 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %87

50:                                               ; preds = %22
  %51 = call i32 (...) @read_c0_count()
  %52 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %87

58:                                               ; preds = %22
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_cpu_data, i32 0, i32 0), align 4
  switch i32 %59, label %67 [
    i32 129, label %60
    i32 128, label %60
  ]

60:                                               ; preds = %58, %58
  %61 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 1, i32* %66, align 4
  br label %74

67:                                               ; preds = %58
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 2, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %60
  store i32 0, i32* %3, align 4
  br label %87

75:                                               ; preds = %22
  %76 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %77 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %80 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %87

85:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %87

86:                                               ; preds = %16, %2
  store i32 -1, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %75, %74, %50, %40, %32
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.thread_info* @task_thread_info(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @read_c0_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

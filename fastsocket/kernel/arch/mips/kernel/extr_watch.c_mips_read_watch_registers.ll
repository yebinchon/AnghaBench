; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_watch.c_mips_read_watch_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_watch.c_mips_read_watch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mips3264_watch_reg_state }
%struct.mips3264_watch_reg_state = type { i32*, i32* }
%struct.TYPE_7__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@current_cpu_data = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_read_watch_registers() #0 {
  %1 = alloca %struct.mips3264_watch_reg_state*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store %struct.mips3264_watch_reg_state* %5, %struct.mips3264_watch_reg_state** %1, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_cpu_data, i32 0, i32 0), align 4
  switch i32 %6, label %7 [
    i32 4, label %9
    i32 3, label %16
    i32 2, label %23
    i32 1, label %30
  ]

7:                                                ; preds = %0
  %8 = call i32 (...) @BUG()
  br label %9

9:                                                ; preds = %0, %7
  %10 = call i32 (...) @read_c0_watchhi3()
  %11 = and i32 %10, 4095
  %12 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %13 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 3
  store i32 %11, i32* %15, align 4
  br label %16

16:                                               ; preds = %0, %9
  %17 = call i32 (...) @read_c0_watchhi2()
  %18 = and i32 %17, 4095
  %19 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %20 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %0, %16
  %24 = call i32 (...) @read_c0_watchhi1()
  %25 = and i32 %24, 4095
  %26 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %27 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %0, %23
  %31 = call i32 (...) @read_c0_watchhi0()
  %32 = and i32 %31, 4095
  %33 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %34 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_cpu_data, i32 0, i32 0), align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %42 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %50 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 7
  %55 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %56 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %48, %40, %37
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @read_c0_watchhi3(...) #1

declare dso_local i32 @read_c0_watchhi2(...) #1

declare dso_local i32 @read_c0_watchhi1(...) #1

declare dso_local i32 @read_c0_watchhi0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

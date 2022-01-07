; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_watch.c_mips_install_watch_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_watch.c_mips_install_watch_registers.c"
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
define dso_local void @mips_install_watch_registers() #0 {
  %1 = alloca %struct.mips3264_watch_reg_state*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %3 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store %struct.mips3264_watch_reg_state* %5, %struct.mips3264_watch_reg_state** %1, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @current_cpu_data, i32 0, i32 0), align 4
  switch i32 %6, label %7 [
    i32 4, label %9
    i32 3, label %23
    i32 2, label %37
    i32 1, label %51
  ]

7:                                                ; preds = %0
  %8 = call i32 (...) @BUG()
  br label %9

9:                                                ; preds = %0, %7
  %10 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %11 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @write_c0_watchlo3(i32 %14)
  %16 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %17 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = or i32 1073741831, %20
  %22 = call i32 @write_c0_watchhi3(i32 %21)
  br label %23

23:                                               ; preds = %0, %9
  %24 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %25 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @write_c0_watchlo2(i32 %28)
  %30 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %31 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 1073741831, %34
  %36 = call i32 @write_c0_watchhi2(i32 %35)
  br label %37

37:                                               ; preds = %0, %23
  %38 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %39 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @write_c0_watchlo1(i32 %42)
  %44 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %45 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 1073741831, %48
  %50 = call i32 @write_c0_watchhi1(i32 %49)
  br label %51

51:                                               ; preds = %0, %37
  %52 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %53 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @write_c0_watchlo0(i32 %56)
  %58 = load %struct.mips3264_watch_reg_state*, %struct.mips3264_watch_reg_state** %1, align 8
  %59 = getelementptr inbounds %struct.mips3264_watch_reg_state, %struct.mips3264_watch_reg_state* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 1073741831, %62
  %64 = call i32 @write_c0_watchhi0(i32 %63)
  br label %65

65:                                               ; preds = %51
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @write_c0_watchlo3(i32) #1

declare dso_local i32 @write_c0_watchhi3(i32) #1

declare dso_local i32 @write_c0_watchlo2(i32) #1

declare dso_local i32 @write_c0_watchhi2(i32) #1

declare dso_local i32 @write_c0_watchlo1(i32) #1

declare dso_local i32 @write_c0_watchhi1(i32) #1

declare dso_local i32 @write_c0_watchlo0(i32) #1

declare dso_local i32 @write_c0_watchhi0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

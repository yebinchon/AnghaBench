; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_new_breakpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_new_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpt = type { i64, i32*, i32, i32 }

@bpts = common dso_local global %struct.bpt* null, align 8
@NBPTS = common dso_local global i64 0, align 8
@bpinstr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Sorry, no free breakpoints.  Please clear one first.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpt* (i64)* @new_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpt* @new_breakpoint(i64 %0) #0 {
  %2 = alloca %struct.bpt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bpt*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = and i64 %5, -4
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call %struct.bpt* @at_breakpoint(i64 %7)
  store %struct.bpt* %8, %struct.bpt** %4, align 8
  %9 = load %struct.bpt*, %struct.bpt** %4, align 8
  %10 = icmp ne %struct.bpt* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.bpt*, %struct.bpt** %4, align 8
  store %struct.bpt* %12, %struct.bpt** %2, align 8
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.bpt*, %struct.bpt** @bpts, align 8
  store %struct.bpt* %14, %struct.bpt** %4, align 8
  br label %15

15:                                               ; preds = %47, %13
  %16 = load %struct.bpt*, %struct.bpt** %4, align 8
  %17 = load %struct.bpt*, %struct.bpt** @bpts, align 8
  %18 = load i64, i64* @NBPTS, align 8
  %19 = getelementptr inbounds %struct.bpt, %struct.bpt* %17, i64 %18
  %20 = icmp ult %struct.bpt* %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.bpt*, %struct.bpt** %4, align 8
  %23 = getelementptr inbounds %struct.bpt, %struct.bpt* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = load %struct.bpt*, %struct.bpt** %4, align 8
  %28 = getelementptr inbounds %struct.bpt, %struct.bpt* %27, i32 0, i32 2
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load i64, i64* %3, align 8
  %33 = load %struct.bpt*, %struct.bpt** %4, align 8
  %34 = getelementptr inbounds %struct.bpt, %struct.bpt* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @bpinstr, align 4
  %36 = load %struct.bpt*, %struct.bpt** %4, align 8
  %37 = getelementptr inbounds %struct.bpt, %struct.bpt* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.bpt*, %struct.bpt** %4, align 8
  %41 = getelementptr inbounds %struct.bpt, %struct.bpt* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @store_inst(i32* %43)
  %45 = load %struct.bpt*, %struct.bpt** %4, align 8
  store %struct.bpt* %45, %struct.bpt** %2, align 8
  br label %52

46:                                               ; preds = %26, %21
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.bpt*, %struct.bpt** %4, align 8
  %49 = getelementptr inbounds %struct.bpt, %struct.bpt* %48, i32 1
  store %struct.bpt* %49, %struct.bpt** %4, align 8
  br label %15

50:                                               ; preds = %15
  %51 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store %struct.bpt* null, %struct.bpt** %2, align 8
  br label %52

52:                                               ; preds = %50, %31, %11
  %53 = load %struct.bpt*, %struct.bpt** %2, align 8
  ret %struct.bpt* %53
}

declare dso_local %struct.bpt* @at_breakpoint(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @store_inst(i32*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

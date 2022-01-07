; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/kernel/cpu/extr_clock.c_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_5__ = type { {}* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@clock_list_sem = common dso_local global i32 0, align 4
@root_clks = common dso_local global i32 0, align 4
@clock_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_register(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = icmp eq %struct.clk* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = call i64 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %76

13:                                               ; preds = %6
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.clk*, %struct.clk** %3, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13
  store i32 0, i32* %2, align 4
  br label %76

26:                                               ; preds = %19
  %27 = call i32 @mutex_lock(i32* @clock_list_sem)
  %28 = load %struct.clk*, %struct.clk** %3, align 8
  %29 = getelementptr inbounds %struct.clk, %struct.clk* %28, i32 0, i32 5
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.clk*, %struct.clk** %3, align 8
  %32 = getelementptr inbounds %struct.clk, %struct.clk* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.clk*, %struct.clk** %3, align 8
  %34 = getelementptr inbounds %struct.clk, %struct.clk* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %26
  %38 = load %struct.clk*, %struct.clk** %3, align 8
  %39 = getelementptr inbounds %struct.clk, %struct.clk* %38, i32 0, i32 2
  %40 = load %struct.clk*, %struct.clk** %3, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @list_add(%struct.TYPE_6__* %39, i32* %43)
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.clk*, %struct.clk** %3, align 8
  %47 = getelementptr inbounds %struct.clk, %struct.clk* %46, i32 0, i32 2
  %48 = call i32 @list_add(%struct.TYPE_6__* %47, i32* @root_clks)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.clk*, %struct.clk** %3, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 1
  %52 = call i32 @list_add(%struct.TYPE_6__* %51, i32* @clock_list)
  %53 = load %struct.clk*, %struct.clk** %3, align 8
  %54 = getelementptr inbounds %struct.clk, %struct.clk* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = icmp ne %struct.TYPE_5__* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %49
  %58 = load %struct.clk*, %struct.clk** %3, align 8
  %59 = getelementptr inbounds %struct.clk, %struct.clk* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.clk*)**
  %63 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %62, align 8
  %64 = icmp ne i32 (%struct.clk*)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.clk*, %struct.clk** %3, align 8
  %67 = getelementptr inbounds %struct.clk, %struct.clk* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = bitcast {}** %69 to i32 (%struct.clk*)**
  %71 = load i32 (%struct.clk*)*, i32 (%struct.clk*)** %70, align 8
  %72 = load %struct.clk*, %struct.clk** %3, align 8
  %73 = call i32 %71(%struct.clk* %72)
  br label %74

74:                                               ; preds = %65, %57, %49
  %75 = call i32 @mutex_unlock(i32* @clock_list_sem)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %25, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

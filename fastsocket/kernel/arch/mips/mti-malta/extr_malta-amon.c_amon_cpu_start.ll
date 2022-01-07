; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mti-malta/extr_malta-amon.c_amon_cpu_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/mti-malta/extr_malta-amon.c_amon_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpulaunch = type { i64, i64, i64, i64, i32 }

@CPULAUNCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"launch: I am cpu%d!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"launch: starting cpu%d\0A\00", align 1
@LAUNCH_FGO = common dso_local global i32 0, align 4
@LAUNCH_FGONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"launch: cpu%d gone!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amon_cpu_start(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cpulaunch*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* @CPULAUNCH, align 4
  %13 = call i64 @CKSEG0ADDR(i32 %12)
  %14 = inttoptr i64 %13 to %struct.cpulaunch*
  store %struct.cpulaunch* %14, %struct.cpulaunch** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @amon_cpu_avail(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %64

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (...) @smp_processor_id()
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %64

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %28, i64 %29
  store %struct.cpulaunch* %30, %struct.cpulaunch** %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %35 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %34, i32 0, i32 0
  store volatile i64 %33, i64* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %38 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %37, i32 0, i32 1
  store volatile i64 %36, i64* %38, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %41 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %40, i32 0, i32 2
  store volatile i64 %39, i64* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %44 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %43, i32 0, i32 3
  store volatile i64 %42, i64* %44, align 8
  %45 = call i32 (...) @smp_wmb()
  %46 = load i32, i32* @LAUNCH_FGO, align 4
  %47 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %48 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %47, i32 0, i32 4
  %49 = load volatile i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store volatile i32 %50, i32* %48, align 8
  %51 = call i32 (...) @smp_wmb()
  br label %52

52:                                               ; preds = %59, %26
  %53 = load %struct.cpulaunch*, %struct.cpulaunch** %11, align 8
  %54 = getelementptr inbounds %struct.cpulaunch, %struct.cpulaunch* %53, i32 0, i32 4
  %55 = load volatile i32, i32* %54, align 8
  %56 = load i32, i32* @LAUNCH_FGONE, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %52

60:                                               ; preds = %52
  %61 = call i32 (...) @smp_rmb()
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %23, %18
  ret void
}

declare dso_local i64 @CKSEG0ADDR(i32) #1

declare dso_local i32 @amon_cpu_avail(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

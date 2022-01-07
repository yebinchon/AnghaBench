; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_drain_mcelog_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce.c_drain_mcelog_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mce* }
%struct.mce = type { i32 }

@mcelog = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"MCE: skipping error being logged currently!\0A\00", align 1
@x86_mce_decoder_chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @drain_mcelog_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_mcelog_buffer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcelog, i32 0, i32 0), align 8
  %8 = call i32 @rcu_dereference(i32 %7)
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %73, %0
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %55, %9
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %17 = load %struct.mce*, %struct.mce** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcelog, i32 0, i32 1), align 8
  %18 = load i32, i32* %2, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %17, i64 %19
  store %struct.mce* %20, %struct.mce** %4, align 8
  br label %21

21:                                               ; preds = %50, %15
  %22 = load %struct.mce*, %struct.mce** %4, align 8
  %23 = getelementptr inbounds %struct.mce, %struct.mce* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = mul i32 2, %30
  %32 = zext i32 %31 to i64
  %33 = add i64 %29, %32
  %34 = call i64 @time_after_eq(i64 %28, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = call i32 (...) @cpu_relax()
  %41 = load %struct.mce*, %struct.mce** %4, align 8
  %42 = getelementptr inbounds %struct.mce, %struct.mce* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp uge i32 %46, 4
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %51

50:                                               ; preds = %45, %39
  br label %21

51:                                               ; preds = %48, %21
  %52 = call i32 (...) @smp_rmb()
  %53 = load %struct.mce*, %struct.mce** %4, align 8
  %54 = call i32 @atomic_notifier_call_chain(i32* @x86_mce_decoder_chain, i32 0, %struct.mce* %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %2, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load %struct.mce*, %struct.mce** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcelog, i32 0, i32 1), align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mce, %struct.mce* %59, i64 %61
  %63 = load i32, i32* %1, align 4
  %64 = load i32, i32* %3, align 4
  %65 = sub i32 %63, %64
  %66 = zext i32 %65 to i64
  %67 = mul i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(%struct.mce* %62, i32 0, i32 %68)
  %70 = load i32, i32* %1, align 4
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @cmpxchg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mcelog, i32 0, i32 0), i32 %71, i32 0)
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %9, label %77

77:                                               ; preds = %73
  ret void
}

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.mce*) #1

declare dso_local i32 @memset(%struct.mce*, i32, i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

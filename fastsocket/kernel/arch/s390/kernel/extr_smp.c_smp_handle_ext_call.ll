; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_handle_ext_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_smp.c_smp_handle_ext_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ec_schedule = common dso_local global i32 0, align 4
@ec_stop_cpu = common dso_local global i32 0, align 4
@ec_call_function = common dso_local global i32 0, align 4
@ec_call_function_single = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smp_handle_ext_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_handle_ext_call() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @xchg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), i32 0)
  store i64 %2, i64* %1, align 8
  %3 = load i32, i32* @ec_schedule, align 4
  %4 = call i64 @test_bit(i32 %3, i64* %1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @scheduler_ipi()
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* @ec_stop_cpu, align 4
  %10 = call i64 @test_bit(i32 %9, i64* %1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @smp_stop_cpu()
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i32, i32* @ec_call_function, align 4
  %16 = call i64 @test_bit(i32 %15, i64* %1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @generic_smp_call_function_interrupt()
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, i32* @ec_call_function_single, align 4
  %22 = call i64 @test_bit(i32 %21, i64* %1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @generic_smp_call_function_single_interrupt()
  br label %26

26:                                               ; preds = %24, %20
  ret void
}

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @scheduler_ipi(...) #1

declare dso_local i32 @smp_stop_cpu(...) #1

declare dso_local i32 @generic_smp_call_function_interrupt(...) #1

declare dso_local i32 @generic_smp_call_function_single_interrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

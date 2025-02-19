; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vtime.c_account_system_vtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vtime.c_account_system_vtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.task_struct = type { i32 }
%struct.thread_info = type { i64 }

@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_system_vtime(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %7 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %6)
  store %struct.thread_info* %7, %struct.thread_info** %3, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  store i64 %8, i64* %4, align 8
  %9 = call i64 (...) @get_vtimer()
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  %12 = sub nsw i64 %10, %11
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %16 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %17 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @account_system_time(%struct.task_struct* %28, i32 0, i64 %29, i64 %30)
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @get_vtimer(...) #1

declare dso_local i32 @account_system_time(%struct.task_struct*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

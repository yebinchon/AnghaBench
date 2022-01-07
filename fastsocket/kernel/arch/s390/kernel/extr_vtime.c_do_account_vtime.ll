; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vtime.c_do_account_vtime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_vtime.c_do_account_vtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }
%struct.task_struct = type { i32 }
%struct.thread_info = type { i64, i64 }

@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32)* @do_account_vtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_account_vtime(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = call %struct.thread_info* @task_thread_info(%struct.task_struct* %11)
  store %struct.thread_info* %12, %struct.thread_info** %5, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 4), align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 3), align 8
  store i64 %14, i64* %7, align 8
  call void asm sideeffect "  STPT $0\0A  STCK $1", "=*m,=*m,~{dirflag},~{fpsr},~{flags}"(i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 4), i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 3)) #2, !srcloc !2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 4), align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 3), align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub nsw i64 %20, %21
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 2), align 8
  %34 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %35 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @account_user_time(%struct.task_struct* %36, i64 %37, i64 %38)
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %41 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 1), align 8
  %49 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %50 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @account_system_time(%struct.task_struct* %51, i32 %52, i64 %53, i64 %54)
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %2
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @S390_lowcore, i32 0, i32 0), align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @account_steal_time(i64 %60)
  br label %62

62:                                               ; preds = %59, %2
  ret void
}

declare dso_local %struct.thread_info* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @account_user_time(%struct.task_struct*, i64, i64) #1

declare dso_local i32 @account_system_time(%struct.task_struct*, i32, i64, i64) #1

declare dso_local i32 @account_steal_time(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1046, i32 1069}

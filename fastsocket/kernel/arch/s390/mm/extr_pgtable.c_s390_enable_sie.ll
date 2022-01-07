; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_pgtable.c_s390_enable_sie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/mm/extr_pgtable.c_s390_enable_sie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct*, %struct.mm_struct* }
%struct.mm_struct = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@current = common dso_local global %struct.task_struct* null, align 8
@user_mode = common dso_local global i64 0, align 8
@HOME_SPACE_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_enable_sie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %2, align 8
  %6 = load i64, i64* @user_mode, align 8
  %7 = load i64, i64* @HOME_SPACE_MODE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %119

12:                                               ; preds = %0
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %119

21:                                               ; preds = %12
  %22 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %23 = call i32 @task_lock(%struct.task_struct* %22)
  %24 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 1
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  %27 = icmp ne %struct.mm_struct* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 1
  %31 = load %struct.mm_struct*, %struct.mm_struct** %30, align 8
  %32 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %31, i32 0, i32 1
  %33 = call i32 @atomic_read(i32* %32)
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 1
  %38 = load %struct.mm_struct*, %struct.mm_struct** %37, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load %struct.mm_struct*, %struct.mm_struct** %40, align 8
  %42 = icmp ne %struct.mm_struct* %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35, %28, %21
  %44 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %45 = call i32 @task_unlock(%struct.task_struct* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %1, align 4
  br label %119

48:                                               ; preds = %35
  %49 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %50 = call i32 @task_unlock(%struct.task_struct* %49)
  %51 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %52 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %51, i32 0, i32 1
  %53 = load %struct.mm_struct*, %struct.mm_struct** %52, align 8
  %54 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %57 = call %struct.mm_struct* @dup_mm(%struct.task_struct* %56)
  store %struct.mm_struct* %57, %struct.mm_struct** %3, align 8
  %58 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 1
  %60 = load %struct.mm_struct*, %struct.mm_struct** %59, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %64 = icmp ne %struct.mm_struct* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %48
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %1, align 4
  br label %119

68:                                               ; preds = %48
  %69 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %70 = call i32 @task_lock(%struct.task_struct* %69)
  %71 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %72 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %71, i32 0, i32 1
  %73 = load %struct.mm_struct*, %struct.mm_struct** %72, align 8
  %74 = icmp ne %struct.mm_struct* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 1
  %78 = load %struct.mm_struct*, %struct.mm_struct** %77, align 8
  %79 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %78, i32 0, i32 1
  %80 = call i32 @atomic_read(i32* %79)
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %90, label %82

82:                                               ; preds = %75
  %83 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 1
  %85 = load %struct.mm_struct*, %struct.mm_struct** %84, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 0
  %88 = load %struct.mm_struct*, %struct.mm_struct** %87, align 8
  %89 = icmp ne %struct.mm_struct* %85, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %82, %75, %68
  %91 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %92 = call i32 @mmput(%struct.mm_struct* %91)
  %93 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %94 = call i32 @task_unlock(%struct.task_struct* %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %1, align 4
  br label %119

97:                                               ; preds = %82
  %98 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %99 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %98, i32 0, i32 1
  %100 = load %struct.mm_struct*, %struct.mm_struct** %99, align 8
  store %struct.mm_struct* %100, %struct.mm_struct** %4, align 8
  %101 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %102 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %103 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %102, i32 0, i32 0
  store %struct.mm_struct* %101, %struct.mm_struct** %103, align 8
  %104 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %105 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %104, i32 0, i32 1
  store %struct.mm_struct* %101, %struct.mm_struct** %105, align 8
  %106 = call i32 (...) @preempt_disable()
  %107 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %108 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %109 = call i32 @update_mm(%struct.mm_struct* %107, %struct.task_struct* %108)
  %110 = call i32 (...) @smp_processor_id()
  %111 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %112 = call i32 @mm_cpumask(%struct.mm_struct* %111)
  %113 = call i32 @cpumask_set_cpu(i32 %110, i32 %112)
  %114 = call i32 (...) @preempt_enable()
  %115 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %116 = call i32 @task_unlock(%struct.task_struct* %115)
  %117 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %118 = call i32 @mmput(%struct.mm_struct* %117)
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %97, %90, %65, %43, %20, %9
  %120 = load i32, i32* %1, align 4
  ret i32 %120
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local %struct.mm_struct* @dup_mm(%struct.task_struct*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @update_mm(%struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_ptrace.c_arch_ptrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_ptrace.c_arch_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i64* }

@EIO = common dso_local global i64 0, align 8
@PT_PSW = common dso_local global i64 0, align 8
@USER_PSW_BITS = common dso_local global i64 0, align 8
@PT_GR1 = common dso_local global i64 0, align 8
@PT_GR31 = common dso_local global i64 0, align 8
@PT_IAOQ0 = common dso_local global i64 0, align 8
@PT_IAOQ1 = common dso_local global i64 0, align 8
@PT_FR0 = common dso_local global i64 0, align 8
@PT_FR31 = common dso_local global i32 0, align 4
@PT_SAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_ptrace(%struct.task_struct* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* @EIO, align 8
  %12 = sub nsw i64 0, %11
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  switch i64 %13, label %106 [
    i64 129, label %14
    i64 128, label %34
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = and i64 %15, 7
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %14
  br label %112

22:                                               ; preds = %18
  %23 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %24 = call %struct.TYPE_2__* @task_regs(%struct.task_struct* %23)
  %25 = bitcast %struct.TYPE_2__* %24 to i8*
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = bitcast i8* %27 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = call i64 @put_user(i64 %30, i64* %32)
  store i64 %33, i64* %10, align 8
  br label %112

34:                                               ; preds = %4
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @PT_PSW, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i64, i64* @USER_PSW_BITS, align 8
  %40 = load i64, i64* %8, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* @USER_PSW_BITS, align 8
  %43 = xor i64 %42, -1
  %44 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %45 = call %struct.TYPE_2__* @task_regs(%struct.task_struct* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, %43
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = call %struct.TYPE_2__* @task_regs(%struct.task_struct* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = or i64 %57, %51
  store i64 %58, i64* %56, align 8
  store i64 0, i64* %10, align 8
  br label %112

59:                                               ; preds = %34
  %60 = load i64, i64* %7, align 8
  %61 = and i64 %60, 7
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %7, align 8
  %65 = icmp uge i64 %64, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %59
  br label %112

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @PT_GR1, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @PT_GR31, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %97, label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @PT_IAOQ0, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @PT_IAOQ1, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @PT_FR0, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* @PT_FR31, align 4
  %90 = add nsw i32 %89, 4
  %91 = sext i32 %90 to i64
  %92 = icmp sle i64 %88, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %87, %83
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @PT_SAR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93, %87, %79, %75, %71
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %100 = call %struct.TYPE_2__* @task_regs(%struct.task_struct* %99)
  %101 = bitcast %struct.TYPE_2__* %100 to i8*
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = bitcast i8* %103 to i64*
  store i64 %98, i64* %104, align 8
  store i64 0, i64* %10, align 8
  br label %105

105:                                              ; preds = %97, %93
  br label %112

106:                                              ; preds = %4
  %107 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = call i64 @ptrace_request(%struct.task_struct* %107, i64 %108, i64 %109, i64 %110)
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %106, %105, %66, %38, %22, %21
  %113 = load i64, i64* %10, align 8
  ret i64 %113
}

declare dso_local %struct.TYPE_2__* @task_regs(%struct.task_struct*) #1

declare dso_local i64 @put_user(i64, i64*) #1

declare dso_local i64 @ptrace_request(%struct.task_struct*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

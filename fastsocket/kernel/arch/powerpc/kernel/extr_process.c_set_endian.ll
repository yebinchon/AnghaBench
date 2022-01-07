; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_set_endian.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_process.c_set_endian.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pt_regs* }
%struct.pt_regs = type { i32 }

@PR_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@CPU_FTR_REAL_LE = common dso_local global i32 0, align 4
@PR_ENDIAN_PPC_LITTLE = common dso_local global i32 0, align 4
@CPU_FTR_PPC_LE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PR_ENDIAN_BIG = common dso_local global i32 0, align 4
@MSR_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_endian(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  store %struct.pt_regs* %10, %struct.pt_regs** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PR_ENDIAN_LITTLE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @CPU_FTR_REAL_LE, align 4
  %16 = call i32 @cpu_has_feature(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PR_ENDIAN_PPC_LITTLE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i32, i32* @CPU_FTR_PPC_LE, align 4
  %24 = call i32 @cpu_has_feature(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %22, %18
  %30 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %31 = icmp eq %struct.pt_regs* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %65

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PR_ENDIAN_BIG, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* @MSR_LE, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %64

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PR_ENDIAN_LITTLE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PR_ENDIAN_PPC_LITTLE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50, %46
  %55 = load i32, i32* @MSR_LE, align 4
  %56 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %39
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %60, %32, %26
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @cpu_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_smi.c_smi_check_forward_dr_smp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_smi.c_smi_check_forward_dr_smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i32, i64, i64 }

@IB_SMI_FORWARD = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i64 0, align 8
@IB_SMI_SEND = common dso_local global i32 0, align 4
@IB_SMI_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smi_check_forward_dr_smp(%struct.ib_smp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_smp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %3, align 8
  %6 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %7 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %10 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %13 = call i32 @ib_get_smp_direction(%struct.ib_smp* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @IB_SMI_FORWARD, align 4
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %18, %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %30 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @IB_SMI_SEND, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @IB_SMI_LOCAL, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %2, align 4
  br label %75

40:                                               ; preds = %24
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @IB_SMI_SEND, align 4
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %40
  br label %73

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  %50 = icmp sle i32 2, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @IB_SMI_FORWARD, align 4
  store i32 %56, i32* %2, align 4
  br label %75

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %4, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %62 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_LID_PERMISSIVE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @IB_SMI_SEND, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @IB_SMI_LOCAL, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* @IB_SMI_LOCAL, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %70, %55, %45, %38, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ib_get_smp_direction(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

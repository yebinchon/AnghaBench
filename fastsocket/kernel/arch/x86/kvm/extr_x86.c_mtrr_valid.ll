; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_mtrr_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_mtrr_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@MSR_IA32_CR_PAT = common dso_local global i64 0, align 8
@MSR_MTRRdefType = common dso_local global i64 0, align 8
@MSR_MTRRfix64K_00000 = common dso_local global i64 0, align 8
@MSR_MTRRfix4K_F8000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32)* @mtrr_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtrr_valid(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @msr_mtrr_valid(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MSR_IA32_CR_PAT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 8
  %25 = ashr i32 %22, %24
  %26 = and i32 %25, 255
  %27 = call i32 @valid_pat_type(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %80

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %18

34:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %80

35:                                               ; preds = %13
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @MSR_MTRRdefType, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, -3328
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %80

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @valid_mtrr_type(i32 %46)
  store i32 %47, i32* %4, align 4
  br label %80

48:                                               ; preds = %35
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @MSR_MTRRfix64K_00000, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @MSR_MTRRfix4K_F8000, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %62, 8
  %64 = ashr i32 %61, %63
  %65 = and i32 %64, 255
  %66 = call i32 @valid_mtrr_type(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %80

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %57

73:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %80

74:                                               ; preds = %52, %48
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 255
  %79 = call i32 @valid_mtrr_type(i32 %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %73, %68, %44, %43, %34, %29, %12
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @msr_mtrr_valid(i64) #1

declare dso_local i32 @valid_pat_type(i32) #1

declare dso_local i32 @valid_mtrr_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

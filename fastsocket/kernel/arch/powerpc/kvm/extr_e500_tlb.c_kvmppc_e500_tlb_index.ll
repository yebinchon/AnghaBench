; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_e500_tlb.c_kvmppc_e500_tlb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i32*, %struct.tlbe** }
%struct.tlbe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i64, i32, i32, i32)* @kvmppc_e500_tlb_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_tlb_index(%struct.kvmppc_vcpu_e500* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tlbe*, align 8
  %14 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %73, %5
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %18 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %16, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %15
  %26 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %27 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %26, i32 0, i32 1
  %28 = load %struct.tlbe**, %struct.tlbe*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tlbe*, %struct.tlbe** %28, i64 %30
  %32 = load %struct.tlbe*, %struct.tlbe** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.tlbe, %struct.tlbe* %32, i64 %34
  store %struct.tlbe* %35, %struct.tlbe** %13, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.tlbe*, %struct.tlbe** %13, align 8
  %38 = call i64 @get_tlb_eaddr(%struct.tlbe* %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %73

41:                                               ; preds = %25
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.tlbe*, %struct.tlbe** %13, align 8
  %44 = call i64 @get_tlb_end(%struct.tlbe* %43)
  %45 = icmp sgt i64 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %73

47:                                               ; preds = %41
  %48 = load %struct.tlbe*, %struct.tlbe** %13, align 8
  %49 = call i32 @get_tlb_tid(%struct.tlbe* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %73

57:                                               ; preds = %52, %47
  %58 = load %struct.tlbe*, %struct.tlbe** %13, align 8
  %59 = call i32 @get_tlb_v(%struct.tlbe* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %73

62:                                               ; preds = %57
  %63 = load %struct.tlbe*, %struct.tlbe** %13, align 8
  %64 = call i32 @get_tlb_ts(%struct.tlbe* %63)
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %73

71:                                               ; preds = %67, %62
  %72 = load i32, i32* %12, align 4
  store i32 %72, i32* %6, align 4
  br label %77

73:                                               ; preds = %70, %61, %56, %46, %40
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %15

76:                                               ; preds = %15
  store i32 -1, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @get_tlb_eaddr(%struct.tlbe*) #1

declare dso_local i64 @get_tlb_end(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_tid(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_v(%struct.tlbe*) #1

declare dso_local i32 @get_tlb_ts(%struct.tlbe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

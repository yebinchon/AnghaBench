; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_irq_masked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_irq_masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.ia64_tpr = type { i64 }

@tpr = common dso_local global i32 0, align 4
@NMI_VECTOR = common dso_local global i32 0, align 4
@IRQ_MASKED_BY_INSVC = common dso_local global i32 0, align 4
@IRQ_NO_MASKED = common dso_local global i32 0, align 4
@ExtINT_VECTOR = common dso_local global i32 0, align 4
@IRQ_MASKED_BY_VTPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_masked(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ia64_tpr, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = load i32, i32* @tpr, align 4
  %11 = call i32 @VCPU(%struct.kvm_vcpu* %9, i32 %10)
  %12 = bitcast %union.ia64_tpr* %8 to i32*
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NMI_VECTOR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @IRQ_MASKED_BY_INSVC, align 4
  store i32 %17, i32* %4, align 4
  br label %64

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @NMI_VECTOR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @IRQ_NO_MASKED, align 4
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ExtINT_VECTOR, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @IRQ_MASKED_BY_INSVC, align 4
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ExtINT_VECTOR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = bitcast %union.ia64_tpr* %8 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @IRQ_MASKED_BY_VTPR, align 4
  store i32 %39, i32* %4, align 4
  br label %64

40:                                               ; preds = %34
  %41 = load i32, i32* @IRQ_NO_MASKED, align 4
  store i32 %41, i32* %4, align 4
  br label %64

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @is_higher_irq(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = bitcast %union.ia64_tpr* %8 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = bitcast %union.ia64_tpr* %8 to i32*
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %50, %54
  %56 = call i64 @is_higher_class(i32 %48, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @IRQ_NO_MASKED, align 4
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %47
  %61 = load i32, i32* @IRQ_MASKED_BY_VTPR, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @IRQ_MASKED_BY_INSVC, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60, %58, %40, %38, %28, %22, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @VCPU(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @is_higher_irq(i32, i32) #1

declare dso_local i64 @is_higher_class(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nm_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_nm_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NM_VECTOR = common dso_local global i32 0, align 4
@X86_CR0_TS = common dso_local global i32 0, align 4
@VMCB_INTERCEPTS = common dso_local global i32 0, align 4
@VMCB_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @nm_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %3 = load i32, i32* @NM_VECTOR, align 4
  %4 = shl i32 1, %3
  %5 = xor i32 %4, -1
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %5
  store i32 %12, i32* %10, align 4
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 1
  %15 = load i32, i32* @X86_CR0_TS, align 4
  %16 = call i32 @kvm_read_cr0_bits(%struct.TYPE_8__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @X86_CR0_TS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %22 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %20
  store i32 %27, i32* %25, align 4
  br label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @X86_CR0_TS, align 4
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %29
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %18
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %39 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* @VMCB_INTERCEPTS, align 4
  %45 = call i32 @mark_dirty(%struct.TYPE_7__* %43, i32 %44)
  %46 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %47 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* @VMCB_CR, align 4
  %50 = call i32 @mark_dirty(%struct.TYPE_7__* %48, i32 %49)
  ret i32 1
}

declare dso_local i32 @kvm_read_cr0_bits(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

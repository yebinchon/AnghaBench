; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_vmrun_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_vmrun_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"VMrun\0A\00", align 1
@SVM_EXIT_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @vmrun_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmrun_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %4 = call i32 @nsvm_printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %6 = call i64 @nested_svm_check_permissions(%struct.vcpu_svm* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %53

9:                                                ; preds = %1
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 1
  %12 = call i64 @kvm_rip_read(i32* %11)
  %13 = add nsw i64 %12, 3
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %17 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %16, i32 0, i32 1
  %18 = call i32 @skip_emulated_instruction(i32* %17)
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %20 = call i32 @nested_svm_vmrun(%struct.vcpu_svm* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %53

23:                                               ; preds = %9
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %25 = call i32 @nested_svm_vmrun_msrpm(%struct.vcpu_svm* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %53

29:                                               ; preds = %27
  %30 = load i32, i32* @SVM_EXIT_ERR, align 4
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i32 %30, i32* %35, align 8
  %36 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %47 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %52 = call i32 @nested_svm_vmexit(%struct.vcpu_svm* %51)
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %29, %28, %22, %8
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @nsvm_printk(i8*) #1

declare dso_local i64 @nested_svm_check_permissions(%struct.vcpu_svm*) #1

declare dso_local i64 @kvm_rip_read(i32*) #1

declare dso_local i32 @skip_emulated_instruction(i32*) #1

declare dso_local i32 @nested_svm_vmrun(%struct.vcpu_svm*) #1

declare dso_local i32 @nested_svm_vmrun_msrpm(%struct.vcpu_svm*) #1

declare dso_local i32 @nested_svm_vmexit(%struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

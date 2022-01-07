; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_create_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sn2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm* @kvm_arch_create_vm() #0 {
  %1 = alloca %struct.kvm*, align 8
  %2 = alloca %struct.kvm*, align 8
  %3 = call %struct.kvm* (...) @kvm_alloc_kvm()
  store %struct.kvm* %3, %struct.kvm** %2, align 8
  %4 = load %struct.kvm*, %struct.kvm** %2, align 8
  %5 = call i64 @IS_ERR(%struct.kvm* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.kvm* @ERR_PTR(i32 %9)
  store %struct.kvm* %10, %struct.kvm** %1, align 8
  br label %19

11:                                               ; preds = %0
  %12 = call i32 @ia64_platform_is(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.kvm*, %struct.kvm** %2, align 8
  %14 = getelementptr inbounds %struct.kvm, %struct.kvm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.kvm*, %struct.kvm** %2, align 8
  %17 = call i32 @kvm_init_vm(%struct.kvm* %16)
  %18 = load %struct.kvm*, %struct.kvm** %2, align 8
  store %struct.kvm* %18, %struct.kvm** %1, align 8
  br label %19

19:                                               ; preds = %11, %7
  %20 = load %struct.kvm*, %struct.kvm** %1, align 8
  ret %struct.kvm* %20
}

declare dso_local %struct.kvm* @kvm_alloc_kvm(...) #1

declare dso_local i64 @IS_ERR(%struct.kvm*) #1

declare dso_local %struct.kvm* @ERR_PTR(i32) #1

declare dso_local i32 @ia64_platform_is(i8*) #1

declare dso_local i32 @kvm_init_vm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

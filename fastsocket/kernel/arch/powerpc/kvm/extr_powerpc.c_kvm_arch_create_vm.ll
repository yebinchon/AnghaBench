; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_powerpc.c_kvm_arch_create_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kvm/extr_powerpc.c_kvm_arch_create_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm* @kvm_arch_create_vm() #0 {
  %1 = alloca %struct.kvm*, align 8
  %2 = alloca %struct.kvm*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.kvm* @kzalloc(i32 4, i32 %3)
  store %struct.kvm* %4, %struct.kvm** %2, align 8
  %5 = load %struct.kvm*, %struct.kvm** %2, align 8
  %6 = icmp ne %struct.kvm* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.kvm* @ERR_PTR(i32 %9)
  store %struct.kvm* %10, %struct.kvm** %1, align 8
  br label %13

11:                                               ; preds = %0
  %12 = load %struct.kvm*, %struct.kvm** %2, align 8
  store %struct.kvm* %12, %struct.kvm** %1, align 8
  br label %13

13:                                               ; preds = %11, %7
  %14 = load %struct.kvm*, %struct.kvm** %1, align 8
  ret %struct.kvm* %14
}

declare dso_local %struct.kvm* @kzalloc(i32, i32) #1

declare dso_local %struct.kvm* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

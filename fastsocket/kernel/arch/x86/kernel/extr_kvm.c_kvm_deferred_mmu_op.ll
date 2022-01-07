; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kvm.c_kvm_deferred_mmu_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_kvm.c_kvm_deferred_mmu_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_para_state = type { i32, i32 }

@PARAVIRT_LAZY_MMU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @kvm_deferred_mmu_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_deferred_mmu_op(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_para_state*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.kvm_para_state* (...) @kvm_para_state()
  store %struct.kvm_para_state* %6, %struct.kvm_para_state** %5, align 8
  %7 = call i64 (...) @paravirt_get_lazy_mode()
  %8 = load i64, i64* @PARAVIRT_LAZY_MMU, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @kvm_mmu_op(i8* %11, i32 %12)
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.kvm_para_state*, %struct.kvm_para_state** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_para_state, %struct.kvm_para_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.kvm_para_state*, %struct.kvm_para_state** %5, align 8
  %24 = call i32 @mmu_queue_flush(%struct.kvm_para_state* %23)
  br label %25

25:                                               ; preds = %22, %14
  %26 = load %struct.kvm_para_state*, %struct.kvm_para_state** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_para_state, %struct.kvm_para_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.kvm_para_state*, %struct.kvm_para_state** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_para_state, %struct.kvm_para_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @memcpy(i32 %32, i8* %33, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.kvm_para_state*, %struct.kvm_para_state** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_para_state, %struct.kvm_para_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %25, %10
  ret void
}

declare dso_local %struct.kvm_para_state* @kvm_para_state(...) #1

declare dso_local i64 @paravirt_get_lazy_mode(...) #1

declare dso_local i32 @kvm_mmu_op(i8*, i32) #1

declare dso_local i32 @mmu_queue_flush(%struct.kvm_para_state*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

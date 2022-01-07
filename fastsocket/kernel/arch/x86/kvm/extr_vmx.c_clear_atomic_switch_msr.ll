; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_clear_atomic_switch_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_clear_atomic_switch_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.msr_autoload }
%struct.msr_autoload = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@cpu_has_load_perf_global_ctrl = common dso_local global i32 0, align 4
@VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL = common dso_local global i32 0, align 4
@VM_ENTRY_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@VM_EXIT_MSR_LOAD_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, i32)* @clear_atomic_switch_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_atomic_switch_msr(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.msr_autoload*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 0
  store %struct.msr_autoload* %8, %struct.msr_autoload** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %18 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @cpu_has_load_perf_global_ctrl, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @VM_ENTRY_LOAD_IA32_PERF_GLOBAL_CTRL, align 4
  %15 = load i32, i32* @VM_EXIT_LOAD_IA32_PERF_GLOBAL_CTRL, align 4
  %16 = call i32 @clear_atomic_switch_msr_special(i32 %14, i32 %15)
  br label %96

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %2, %17
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %22 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %27 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %41

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %19

41:                                               ; preds = %36, %19
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %44 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %96

48:                                               ; preds = %41
  %49 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %50 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %54 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %60 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %63 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %65
  %67 = bitcast %struct.TYPE_2__* %58 to i8*
  %68 = bitcast %struct.TYPE_2__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %70 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %73 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %79 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* @VM_ENTRY_MSR_LOAD_COUNT, align 4
  %85 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %86 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = zext i32 %87 to i64
  %89 = call i32 @vmcs_write32(i32 %84, i64 %88)
  %90 = load i32, i32* @VM_EXIT_MSR_LOAD_COUNT, align 4
  %91 = load %struct.msr_autoload*, %struct.msr_autoload** %6, align 8
  %92 = getelementptr inbounds %struct.msr_autoload, %struct.msr_autoload* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = zext i32 %93 to i64
  %95 = call i32 @vmcs_write32(i32 %90, i64 %94)
  br label %96

96:                                               ; preds = %48, %47, %13
  ret void
}

declare dso_local i32 @clear_atomic_switch_msr_special(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vmcs_write32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

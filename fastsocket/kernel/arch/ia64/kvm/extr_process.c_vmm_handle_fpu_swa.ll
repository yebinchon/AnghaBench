; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_vmm_handle_fpu_swa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_vmm_handle_fpu_swa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@current_vcpu = common dso_local global %struct.kvm_vcpu* null, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmm_handle_fpu_swa(i32 %0, %struct.kvm_pt_regs* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_pt_regs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.kvm_pt_regs* %1, %struct.kvm_pt_regs** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** @current_vcpu, align 8
  store %struct.kvm_vcpu* %13, %struct.kvm_vcpu** %8, align 8
  %14 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %15 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %21 = call %struct.TYPE_9__* @ia64_psr(%struct.kvm_pt_regs* %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, 16
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %25, %19, %3
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @fetch_code(%struct.kvm_vcpu* %29, i64 %30, %struct.TYPE_8__* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* @EAGAIN, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %68

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* @EACCES, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %4, align 8
  br label %68

51:                                               ; preds = %42, %36
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %54 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %53, i32 0, i32 4
  %55 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %56 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %55, i32 0, i32 3
  %57 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %58 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %57, i32 0, i32 2
  %59 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %60 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %59, i32 0, i32 1
  %61 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %6, align 8
  %62 = call i64 @vmm_fp_emulate(i32 %52, %struct.TYPE_8__* %9, i32* %54, i32* %56, i64* %7, i32* %58, i32* %60, %struct.kvm_pt_regs* %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = bitcast %struct.TYPE_7__* %11 to i8*
  %65 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 8, i1 false)
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %51, %48, %33
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_9__* @ia64_psr(%struct.kvm_pt_regs*) #1

declare dso_local i64 @fetch_code(%struct.kvm_vcpu*, i64, %struct.TYPE_8__*) #1

declare dso_local i64 @vmm_fp_emulate(i32, %struct.TYPE_8__*, i32*, i32*, i64*, i32*, i32*, %struct.kvm_pt_regs*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

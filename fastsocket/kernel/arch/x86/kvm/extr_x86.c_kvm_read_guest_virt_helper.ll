; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_read_guest_virt_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_read_guest_virt_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.kvm_vcpu.0*, i32, i32, i32*)* }
%struct.kvm_vcpu.0 = type opaque

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i64 0, align 8
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.kvm_vcpu*, i32, i32*)* @kvm_read_guest_virt_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_read_guest_virt_helper(i32 %0, i8* %1, i32 %2, %struct.kvm_vcpu* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %13, align 8
  %20 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %20, i32* %14, align 4
  br label %21

21:                                               ; preds = %62, %6
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %21
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64 (%struct.kvm_vcpu.0*, i32, i32, i32*)*, i64 (%struct.kvm_vcpu.0*, i32, i32, i32*)** %28, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %31 = bitcast %struct.kvm_vcpu* %30 to %struct.kvm_vcpu.0*
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = call i64 %29(%struct.kvm_vcpu.0* %31, i32 %32, i32 %33, i32* %34)
  store i64 %35, i64* %15, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %36, %38
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub i32 %41, %42
  %44 = call i32 @min(i32 %40, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @UNMAPPED_GVA, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %24
  %49 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %49, i32* %14, align 4
  br label %74

50:                                               ; preds = %24
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @kvm_read_guest(i32 %53, i64 %54, i8* %55, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %61, i32* %14, align 4
  br label %74

62:                                               ; preds = %50
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr i8, i8* %67, i64 %68
  store i8* %69, i8** %13, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %21

73:                                               ; preds = %21
  br label %74

74:                                               ; preds = %73, %60, %48
  %75 = load i32, i32* %14, align 4
  ret i32 %75
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kvm_read_guest(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

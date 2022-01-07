; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_write_guest_virt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_write_guest_virt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UNMAPPED_GVA = common dso_local global i64 0, align 8
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@X86EMUL_UNHANDLEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, %struct.kvm_vcpu*, i32*)* @kvm_write_guest_virt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_write_guest_virt(i32 %0, i8* %1, i32 %2, %struct.kvm_vcpu* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i8*, i8** %7, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %18, i32* %12, align 4
  br label %19

19:                                               ; preds = %53, %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %19
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu* %23, i32 %24, i32* %25)
  store i64 %26, i64* %13, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sub i32 %32, %33
  %35 = call i32 @min(i32 %31, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* @UNMAPPED_GVA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %40, i32* %12, align 4
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %13, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @kvm_write_guest(i32 %44, i64 %45, i8* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* @X86EMUL_UNHANDLEABLE, align 4
  store i32 %52, i32* %12, align 4
  br label %65

53:                                               ; preds = %41
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %11, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %19

64:                                               ; preds = %19
  br label %65

65:                                               ; preds = %64, %51, %39
  %66 = load i32, i32* %12, align 4
  ret i32 %66
}

declare dso_local i64 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kvm_write_guest(i32, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

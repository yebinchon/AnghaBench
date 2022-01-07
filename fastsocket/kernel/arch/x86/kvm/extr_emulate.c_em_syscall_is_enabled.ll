; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_em_syscall_is_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_em_syscall_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i64, i32 }
%struct.x86_emulate_ops = type { i64 (i32, i64*, i64*, i64*, i64*)* }

@X86EMUL_MODE_PROT64 = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_GenuineIntel_ebx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_GenuineIntel_ecx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_GenuineIntel_edx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_AuthenticAMD_ebx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_AuthenticAMD_ecx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_AuthenticAMD_edx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_AMDisbetterI_ebx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_AMDisbetterI_ecx = common dso_local global i64 0, align 8
@X86EMUL_CPUID_VENDOR_AMDisbetterI_edx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*, %struct.x86_emulate_ops*)* @em_syscall_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_syscall_is_enabled(%struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca %struct.x86_emulate_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store %struct.x86_emulate_ops* %1, %struct.x86_emulate_ops** %5, align 8
  %10 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @X86EMUL_MODE_PROT64, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.x86_emulate_ops*, %struct.x86_emulate_ops** %5, align 8
  %18 = getelementptr inbounds %struct.x86_emulate_ops, %struct.x86_emulate_ops* %17, i32 0, i32 0
  %19 = load i64 (i32, i64*, i64*, i64*, i64*)*, i64 (i32, i64*, i64*, i64*, i64*)** %18, align 8
  %20 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %21 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 %19(i32 %22, i64* %6, i64* %7, i64* %8, i64* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @X86EMUL_CPUID_VENDOR_GenuineIntel_ebx, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @X86EMUL_CPUID_VENDOR_GenuineIntel_ecx, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @X86EMUL_CPUID_VENDOR_GenuineIntel_edx, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %66

38:                                               ; preds = %33, %29, %25
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @X86EMUL_CPUID_VENDOR_AuthenticAMD_ebx, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @X86EMUL_CPUID_VENDOR_AuthenticAMD_ecx, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @X86EMUL_CPUID_VENDOR_AuthenticAMD_edx, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %66

51:                                               ; preds = %46, %42, %38
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @X86EMUL_CPUID_VENDOR_AMDisbetterI_ebx, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @X86EMUL_CPUID_VENDOR_AMDisbetterI_ecx, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @X86EMUL_CPUID_VENDOR_AMDisbetterI_edx, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %66

64:                                               ; preds = %59, %55, %51
  br label %65

65:                                               ; preds = %64, %16
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %63, %50, %37, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

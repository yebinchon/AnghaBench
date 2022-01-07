; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_save_host_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_save_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@fs = common dso_local global i32 0, align 4
@HOST_FS_SELECTOR = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@HOST_GS_SELECTOR = common dso_local global i32 0, align 4
@HOST_FS_BASE = common dso_local global i32 0, align 4
@HOST_GS_BASE = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_save_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_save_host_state(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %5)
  store %struct.vcpu_vmx* %6, %struct.vcpu_vmx** %3, align 8
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %132

13:                                               ; preds = %1
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = call i32 (...) @kvm_read_ldt()
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %22 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @fs, align 4
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @savesegment(i32 %28, i32 %32)
  %34 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %35 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 7
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %13
  %41 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %42 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %43 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vmcs_write16(i32 %41, i32 %45)
  %47 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %48 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i32 0, i32* %49, align 4
  br label %56

50:                                               ; preds = %13
  %51 = load i32, i32* @HOST_FS_SELECTOR, align 4
  %52 = call i32 @vmcs_write16(i32 %51, i32 0)
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 4
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %40
  %57 = load i32, i32* @gs, align 4
  %58 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %59 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @savesegment(i32 %57, i32 %61)
  %63 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %64 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 7
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %56
  %70 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %71 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %72 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @vmcs_write16(i32 %70, i32 %74)
  br label %82

76:                                               ; preds = %56
  %77 = load i32, i32* @HOST_GS_SELECTOR, align 4
  %78 = call i32 @vmcs_write16(i32 %77, i32 0)
  %79 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %80 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i32, i32* @HOST_FS_BASE, align 4
  %84 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %85 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @segment_base(i32 %87)
  %89 = call i32 @vmcs_writel(i32 %83, i32 %88)
  %90 = load i32, i32* @HOST_GS_BASE, align 4
  %91 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %92 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @segment_base(i32 %94)
  %96 = call i32 @vmcs_writel(i32 %90, i32 %95)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %129, %82
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %100 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %132

103:                                              ; preds = %97
  %104 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %105 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %113 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %121 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @kvm_set_shared_msr(i32 %111, i32 %119, i32 %127)
  br label %129

129:                                              ; preds = %103
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %97

132:                                              ; preds = %12, %97
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_ldt(...) #1

declare dso_local i32 @savesegment(i32, i32) #1

declare dso_local i32 @vmcs_write16(i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

declare dso_local i32 @segment_base(i32) #1

declare dso_local i32 @kvm_set_shared_msr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

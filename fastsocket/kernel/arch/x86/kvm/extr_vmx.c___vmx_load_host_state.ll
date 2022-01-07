; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c___vmx_load_host_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c___vmx_load_host_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vcpu_vmx = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64, i64 }

@fs = common dso_local global i32 0, align 4
@gs = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @__vmx_load_host_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vmx_load_host_state(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %3 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %4 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %51

9:                                                ; preds = %1
  %10 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %9
  %25 = load i32, i32* @fs, align 4
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @loadsegment(i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %24, %9
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %39 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kvm_load_ldt(i32 %41)
  %43 = load i32, i32* @gs, align 4
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @loadsegment(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %37, %31
  %50 = call i32 (...) @reload_tss()
  br label %51

51:                                               ; preds = %49, %8
  ret void
}

declare dso_local i32 @loadsegment(i32, i32) #1

declare dso_local i32 @kvm_load_ldt(i32) #1

declare dso_local i32 @reload_tss(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

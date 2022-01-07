; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_load_sp0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_vmi_32.c_vmi_load_sp0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32)* }
%struct.tss_struct = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.thread_struct = type { i64, i32 }

@MSR_IA32_SYSENTER_CS = common dso_local global i32 0, align 4
@vmi_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@__KERNEL_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tss_struct*, %struct.thread_struct*)* @vmi_load_sp0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmi_load_sp0(%struct.tss_struct* %0, %struct.thread_struct* %1) #0 {
  %3 = alloca %struct.tss_struct*, align 8
  %4 = alloca %struct.thread_struct*, align 8
  store %struct.tss_struct* %0, %struct.tss_struct** %3, align 8
  store %struct.thread_struct* %1, %struct.thread_struct** %4, align 8
  %5 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %6 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.tss_struct*, %struct.tss_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.tss_struct*, %struct.tss_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %16 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %2
  %23 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %24 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tss_struct*, %struct.tss_struct** %3, align 8
  %27 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @MSR_IA32_SYSENTER_CS, align 4
  %30 = load %struct.thread_struct*, %struct.thread_struct** %4, align 8
  %31 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @wrmsr(i32 %29, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %22, %2
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmi_ops, i32 0, i32 0), align 8
  %36 = load i32, i32* @__KERNEL_DS, align 4
  %37 = load %struct.tss_struct*, %struct.tss_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tss_struct, %struct.tss_struct* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %35(i32 %36, i32 %40)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wrmsr(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

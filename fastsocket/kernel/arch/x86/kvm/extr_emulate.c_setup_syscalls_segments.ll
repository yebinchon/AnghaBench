; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_setup_syscalls_segments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_emulate.c_setup_syscalls_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.kvm_segment*, i32)* }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.x86_emulate_ctxt = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_emulate_ctxt*, %struct.kvm_segment*, %struct.kvm_segment*)* @setup_syscalls_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_syscalls_segments(%struct.x86_emulate_ctxt* %0, %struct.kvm_segment* %1, %struct.kvm_segment* %2) #0 {
  %4 = alloca %struct.x86_emulate_ctxt*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca %struct.kvm_segment*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store %struct.kvm_segment* %2, %struct.kvm_segment** %6, align 8
  %7 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %8 = call i32 @memset(%struct.kvm_segment* %7, i32 0, i32 56)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32, %struct.kvm_segment*, i32)*, i32 (i32, %struct.kvm_segment*, i32)** %10, align 8
  %12 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %4, align 8
  %13 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %16 = load i32, i32* @VCPU_SREG_CS, align 4
  %17 = call i32 %11(i32 %14, %struct.kvm_segment* %15, i32 %16)
  %18 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %19 = call i32 @memset(%struct.kvm_segment* %18, i32 0, i32 56)
  %20 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %28, i32 0, i32 2
  store i32 11, i32* %29, align 8
  %30 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %30, i32 0, i32 3
  store i32 1, i32* %31, align 4
  %32 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %35 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %34, i32 0, i32 4
  store i32 1, i32* %35, align 8
  %36 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %36, i32 0, i32 5
  store i32 1, i32* %37, align 4
  %38 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %39 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %40, i32 0, i32 7
  store i64 0, i64* %41, align 8
  %42 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %43 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 4
  %44 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %47 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %49 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %48, i32 0, i32 2
  store i32 3, i32* %49, align 8
  %50 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %51 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %50, i32 0, i32 5
  store i32 1, i32* %51, align 4
  %52 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %53 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.kvm_segment*, %struct.kvm_segment** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %54, i32 0, i32 4
  store i32 1, i32* %55, align 8
  ret void
}

declare dso_local i32 @memset(%struct.kvm_segment*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

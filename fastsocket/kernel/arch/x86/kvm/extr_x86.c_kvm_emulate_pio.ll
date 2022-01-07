; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_emulate_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@KVM_EXIT_IO = common dso_local global i32 0, align 4
@KVM_EXIT_IO_IN = common dso_local global i32 0, align 4
@KVM_EXIT_IO_OUT = common dso_local global i32 0, align 4
@KVM_PIO_PAGE_OFFSET = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VCPU_REGS_RAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_emulate_pio(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @trace_kvm_pio(i32 %14, i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* @KVM_EXIT_IO, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @KVM_EXIT_IO_IN, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @KVM_EXIT_IO_OUT, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i32 %30, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %36, i32* %45, align 4
  %46 = load i32, i32* @KVM_PIO_PAGE_OFFSET, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %48, i32* %53, align 4
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i32 %67, i32* %71, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %73 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i32 %67, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %79 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32 %77, i32* %81, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 7
  store i64 0, i64* %85, align 8
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  store i64 0, i64* %93, align 8
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %95 = load i32, i32* @VCPU_REGS_RAX, align 4
  %96 = call i64 @kvm_register_read(%struct.kvm_vcpu* %94, i32 %95)
  store i64 %96, i64* %10, align 8
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memcpy(i32 %100, i64* %10, i32 4)
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @kernel_pio(%struct.kvm_vcpu* %102, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %29
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %111 = call i32 @complete_pio(%struct.kvm_vcpu* %110)
  store i32 1, i32* %5, align 4
  br label %113

112:                                              ; preds = %29
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @trace_kvm_pio(i32, i32, i32, i32) #1

declare dso_local i64 @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @kernel_pio(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @complete_pio(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

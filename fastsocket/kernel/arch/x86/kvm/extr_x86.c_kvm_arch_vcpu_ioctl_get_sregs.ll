; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_get_sregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_ioctl_get_sregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)* }
%struct.kvm_vcpu = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.descriptor_table = type { i32, i32 }
%struct.kvm_sregs = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_TR = common dso_local global i32 0, align 4
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_get_sregs(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca %struct.descriptor_table, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call i32 @vcpu_load(%struct.kvm_vcpu* %6)
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %9, i32 0, i32 17
  %11 = load i32, i32* @VCPU_SREG_CS, align 4
  %12 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %8, i32* %10, i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %15 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %14, i32 0, i32 16
  %16 = load i32, i32* @VCPU_SREG_DS, align 4
  %17 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %13, i32* %15, i32 %16)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %19, i32 0, i32 15
  %21 = load i32, i32* @VCPU_SREG_ES, align 4
  %22 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %18, i32* %20, i32 %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %24, i32 0, i32 14
  %26 = load i32, i32* @VCPU_SREG_FS, align 4
  %27 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %23, i32* %25, i32 %26)
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %29 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %29, i32 0, i32 13
  %31 = load i32, i32* @VCPU_SREG_GS, align 4
  %32 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %28, i32* %30, i32 %31)
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %34, i32 0, i32 12
  %36 = load i32, i32* @VCPU_SREG_SS, align 4
  %37 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %33, i32* %35, i32 %36)
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %39, i32 0, i32 11
  %41 = load i32, i32* @VCPU_SREG_TR, align 4
  %42 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %38, i32* %40, i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %44 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %45 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %44, i32 0, i32 10
  %46 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %47 = call i32 @kvm_get_segment(%struct.kvm_vcpu* %43, i32* %45, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)** %49, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 %50(%struct.kvm_vcpu* %51, %struct.descriptor_table* %5)
  %53 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %5, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %56 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %61 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %60, i32 0, i32 9
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)*, i32 (%struct.kvm_vcpu*, %struct.descriptor_table*)** %64, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = call i32 %65(%struct.kvm_vcpu* %66, %struct.descriptor_table* %5)
  %68 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = getelementptr inbounds %struct.descriptor_table, %struct.descriptor_table* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %79 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %78)
  %80 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %87 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %93 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %94)
  %96 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %99 = call i32 @kvm_get_cr8(%struct.kvm_vcpu* %98)
  %100 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %101 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %103 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %109 = call i32 @kvm_get_apic_base(%struct.kvm_vcpu* %108)
  %110 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %113 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @memset(i64 %114, i32 0, i32 8)
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %2
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %122
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %136 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i64*
  %139 = call i32 @set_bit(i32 %134, i64* %138)
  br label %140

140:                                              ; preds = %129, %122, %2
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %142 = call i32 @vcpu_put(%struct.kvm_vcpu* %141)
  ret i32 0
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_segment(%struct.kvm_vcpu*, i32*, i32) #1

declare dso_local i32 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_cr8(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_get_apic_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

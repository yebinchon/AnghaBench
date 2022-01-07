; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_save_state_to_tss16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_save_state_to_tss16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }
%struct.tss_segment_16 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RBP = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4
@VCPU_REGS_RDI = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.tss_segment_16*)* @save_state_to_tss16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_state_to_tss16(%struct.kvm_vcpu* %0, %struct.tss_segment_16* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.tss_segment_16*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.tss_segment_16* %1, %struct.tss_segment_16** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %5)
  %7 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %8 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %10, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i32 %11(%struct.kvm_vcpu* %12)
  %14 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %15 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %14, i32 0, i32 13
  store i32 %13, i32* %15, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load i32, i32* @VCPU_REGS_RAX, align 4
  %18 = call i8* @kvm_register_read(%struct.kvm_vcpu* %16, i32 %17)
  %19 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %20 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %19, i32 0, i32 12
  store i8* %18, i8** %20, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = load i32, i32* @VCPU_REGS_RCX, align 4
  %23 = call i8* @kvm_register_read(%struct.kvm_vcpu* %21, i32 %22)
  %24 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %25 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = load i32, i32* @VCPU_REGS_RDX, align 4
  %28 = call i8* @kvm_register_read(%struct.kvm_vcpu* %26, i32 %27)
  %29 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %30 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load i32, i32* @VCPU_REGS_RBX, align 4
  %33 = call i8* @kvm_register_read(%struct.kvm_vcpu* %31, i32 %32)
  %34 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %35 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %34, i32 0, i32 9
  store i8* %33, i8** %35, align 8
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* @VCPU_REGS_RSP, align 4
  %38 = call i8* @kvm_register_read(%struct.kvm_vcpu* %36, i32 %37)
  %39 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %40 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = load i32, i32* @VCPU_REGS_RBP, align 4
  %43 = call i8* @kvm_register_read(%struct.kvm_vcpu* %41, i32 %42)
  %44 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %45 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %47 = load i32, i32* @VCPU_REGS_RSI, align 4
  %48 = call i8* @kvm_register_read(%struct.kvm_vcpu* %46, i32 %47)
  %49 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %50 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = load i32, i32* @VCPU_REGS_RDI, align 4
  %53 = call i8* @kvm_register_read(%struct.kvm_vcpu* %51, i32 %52)
  %54 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %55 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load i32, i32* @VCPU_SREG_ES, align 4
  %58 = call i8* @get_segment_selector(%struct.kvm_vcpu* %56, i32 %57)
  %59 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %60 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = load i32, i32* @VCPU_SREG_CS, align 4
  %63 = call i8* @get_segment_selector(%struct.kvm_vcpu* %61, i32 %62)
  %64 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %65 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %67 = load i32, i32* @VCPU_SREG_SS, align 4
  %68 = call i8* @get_segment_selector(%struct.kvm_vcpu* %66, i32 %67)
  %69 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %70 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = load i32, i32* @VCPU_SREG_DS, align 4
  %73 = call i8* @get_segment_selector(%struct.kvm_vcpu* %71, i32 %72)
  %74 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %75 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %78 = call i8* @get_segment_selector(%struct.kvm_vcpu* %76, i32 %77)
  %79 = load %struct.tss_segment_16*, %struct.tss_segment_16** %4, align 8
  %80 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  ret void
}

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i8* @kvm_register_read(%struct.kvm_vcpu*, i32) #1

declare dso_local i8* @get_segment_selector(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_load_state_from_tss16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_load_state_from_tss16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { i32 }
%struct.tss_segment_16 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@VCPU_REGS_RAX = common dso_local global i32 0, align 4
@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@VCPU_REGS_RDX = common dso_local global i32 0, align 4
@VCPU_REGS_RBX = common dso_local global i32 0, align 4
@VCPU_REGS_RSP = common dso_local global i32 0, align 4
@VCPU_REGS_RBP = common dso_local global i32 0, align 4
@VCPU_REGS_RSI = common dso_local global i32 0, align 4
@VCPU_REGS_RDI = common dso_local global i32 0, align 4
@VCPU_SREG_LDTR = common dso_local global i32 0, align 4
@VCPU_SREG_ES = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@VCPU_SREG_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.tss_segment_16*)* @load_state_from_tss16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_state_from_tss16(%struct.kvm_vcpu* %0, %struct.tss_segment_16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.tss_segment_16*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.tss_segment_16* %1, %struct.tss_segment_16** %5, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %8 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %6, i32 %9)
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %12, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %15 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %16 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 2
  %19 = call i32 %13(%struct.kvm_vcpu* %14, i32 %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %21 = load i32, i32* @VCPU_REGS_RAX, align 4
  %22 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %23 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kvm_register_write(%struct.kvm_vcpu* %20, i32 %21, i32 %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = load i32, i32* @VCPU_REGS_RCX, align 4
  %28 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %29 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @kvm_register_write(%struct.kvm_vcpu* %26, i32 %27, i32 %30)
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %33 = load i32, i32* @VCPU_REGS_RDX, align 4
  %34 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %35 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @kvm_register_write(%struct.kvm_vcpu* %32, i32 %33, i32 %36)
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = load i32, i32* @VCPU_REGS_RBX, align 4
  %40 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %41 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kvm_register_write(%struct.kvm_vcpu* %38, i32 %39, i32 %42)
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = load i32, i32* @VCPU_REGS_RSP, align 4
  %46 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %47 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kvm_register_write(%struct.kvm_vcpu* %44, i32 %45, i32 %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %51 = load i32, i32* @VCPU_REGS_RBP, align 4
  %52 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %53 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @kvm_register_write(%struct.kvm_vcpu* %50, i32 %51, i32 %54)
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = load i32, i32* @VCPU_REGS_RSI, align 4
  %58 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %59 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @kvm_register_write(%struct.kvm_vcpu* %56, i32 %57, i32 %60)
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = load i32, i32* @VCPU_REGS_RDI, align 4
  %64 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %65 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @kvm_register_write(%struct.kvm_vcpu* %62, i32 %63, i32 %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %69 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %70 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %73 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %68, i32 %71, i32 %72)
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %75 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %76 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VCPU_SREG_ES, align 4
  %79 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %74, i32 %77, i32 %78)
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %82 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VCPU_SREG_CS, align 4
  %85 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %80, i32 %83, i32 %84)
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %87 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %88 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VCPU_SREG_SS, align 4
  %91 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %86, i32 %89, i32 %90)
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %93 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %94 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VCPU_SREG_DS, align 4
  %97 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %92, i32 %95, i32 %96)
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %99 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %100 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %103 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %98, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %143

106:                                              ; preds = %2
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %108 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %109 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @VCPU_SREG_ES, align 4
  %112 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %107, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 1, i32* %3, align 4
  br label %143

115:                                              ; preds = %106
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %117 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %118 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @VCPU_SREG_CS, align 4
  %121 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %116, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 1, i32* %3, align 4
  br label %143

124:                                              ; preds = %115
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %126 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %127 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @VCPU_SREG_SS, align 4
  %130 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %125, i32 %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %143

133:                                              ; preds = %124
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %135 = load %struct.tss_segment_16*, %struct.tss_segment_16** %5, align 8
  %136 = getelementptr inbounds %struct.tss_segment_16, %struct.tss_segment_16* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @VCPU_SREG_DS, align 4
  %139 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %134, i32 %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  store i32 1, i32* %3, align 4
  br label %143

142:                                              ; preds = %133
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %141, %132, %123, %114, %105
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_register_write(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_load_segment_selector(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

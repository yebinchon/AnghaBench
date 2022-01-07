; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_load_state_from_tss32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_load_state_from_tss32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { i32 }
%struct.tss_segment_32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

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
@VCPU_SREG_FS = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.tss_segment_32*)* @load_state_from_tss32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_state_from_tss32(%struct.kvm_vcpu* %0, %struct.tss_segment_32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.tss_segment_32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.tss_segment_32* %1, %struct.tss_segment_32** %5, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %7 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %8 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %7, i32 0, i32 17
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kvm_set_cr3(%struct.kvm_vcpu* %6, i32 %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %13 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %12, i32 0, i32 16
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %11, i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %17, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %21 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 2
  %24 = call i32 %18(%struct.kvm_vcpu* %19, i32 %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = load i32, i32* @VCPU_REGS_RAX, align 4
  %27 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %28 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kvm_register_write(%struct.kvm_vcpu* %25, i32 %26, i32 %29)
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = load i32, i32* @VCPU_REGS_RCX, align 4
  %33 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %34 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kvm_register_write(%struct.kvm_vcpu* %31, i32 %32, i32 %35)
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = load i32, i32* @VCPU_REGS_RDX, align 4
  %39 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %40 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @kvm_register_write(%struct.kvm_vcpu* %37, i32 %38, i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = load i32, i32* @VCPU_REGS_RBX, align 4
  %45 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %46 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kvm_register_write(%struct.kvm_vcpu* %43, i32 %44, i32 %47)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = load i32, i32* @VCPU_REGS_RSP, align 4
  %51 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %52 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kvm_register_write(%struct.kvm_vcpu* %49, i32 %50, i32 %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = load i32, i32* @VCPU_REGS_RBP, align 4
  %57 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %58 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kvm_register_write(%struct.kvm_vcpu* %55, i32 %56, i32 %59)
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %62 = load i32, i32* @VCPU_REGS_RSI, align 4
  %63 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %64 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @kvm_register_write(%struct.kvm_vcpu* %61, i32 %62, i32 %65)
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %68 = load i32, i32* @VCPU_REGS_RDI, align 4
  %69 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %70 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @kvm_register_write(%struct.kvm_vcpu* %67, i32 %68, i32 %71)
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %74 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %75 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %78 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %73, i32 %76, i32 %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %80 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %81 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VCPU_SREG_ES, align 4
  %84 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %79, i32 %82, i32 %83)
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %86 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %87 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VCPU_SREG_CS, align 4
  %90 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %85, i32 %88, i32 %89)
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %92 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %93 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @VCPU_SREG_SS, align 4
  %96 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %91, i32 %94, i32 %95)
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %98 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %99 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @VCPU_SREG_DS, align 4
  %102 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %97, i32 %100, i32 %101)
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %104 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %105 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @VCPU_SREG_FS, align 4
  %108 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %103, i32 %106, i32 %107)
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %110 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %111 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @VCPU_SREG_GS, align 4
  %114 = call i32 @kvm_load_segment_selector(%struct.kvm_vcpu* %109, i32 %112, i32 %113)
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %116 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %117 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @VCPU_SREG_LDTR, align 4
  %120 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %115, i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %2
  store i32 1, i32* %3, align 4
  br label %178

123:                                              ; preds = %2
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %125 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %126 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @VCPU_SREG_ES, align 4
  %129 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %124, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 1, i32* %3, align 4
  br label %178

132:                                              ; preds = %123
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %134 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %135 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @VCPU_SREG_CS, align 4
  %138 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %133, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 1, i32* %3, align 4
  br label %178

141:                                              ; preds = %132
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %144 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @VCPU_SREG_SS, align 4
  %147 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %142, i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  store i32 1, i32* %3, align 4
  br label %178

150:                                              ; preds = %141
  %151 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %152 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %153 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @VCPU_SREG_DS, align 4
  %156 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %151, i32 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %150
  store i32 1, i32* %3, align 4
  br label %178

159:                                              ; preds = %150
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %161 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %162 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @VCPU_SREG_FS, align 4
  %165 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %160, i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  store i32 1, i32* %3, align 4
  br label %178

168:                                              ; preds = %159
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %170 = load %struct.tss_segment_32*, %struct.tss_segment_32** %5, align 8
  %171 = getelementptr inbounds %struct.tss_segment_32, %struct.tss_segment_32* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @VCPU_SREG_GS, align 4
  %174 = call i64 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %169, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 1, i32* %3, align 4
  br label %178

177:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %176, %167, %158, %149, %140, %131, %122
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @kvm_set_cr3(%struct.kvm_vcpu*, i32) #1

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

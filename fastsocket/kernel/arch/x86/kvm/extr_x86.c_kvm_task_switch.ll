; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_task_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32 }
%struct.desc_struct = type { i32, i32, i32 }

@VCPU_SREG_TR = common dso_local global i32 0, align 4
@TASK_SWITCH_IRET = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@GP_VECTOR = common dso_local global i32 0, align 4
@TS_VECTOR = common dso_local global i32 0, align 4
@TASK_SWITCH_JMP = common dso_local global i32 0, align 4
@X86_EFLAGS_NT = common dso_local global i32 0, align 4
@TASK_SWITCH_CALL = common dso_local global i32 0, align 4
@TASK_SWITCH_GATE = common dso_local global i32 0, align 4
@X86_CR0_TS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_task_switch(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kvm_segment, align 4
  %13 = alloca %struct.desc_struct, align 4
  %14 = alloca %struct.desc_struct, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %22 = load i32, i32* @VCPU_SREG_TR, align 4
  %23 = call i32 @get_segment_base(%struct.kvm_vcpu* %21, i32 %22)
  store i32 %23, i32* %16, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %25 = load i32, i32* @VCPU_SREG_TR, align 4
  %26 = call i32 @get_segment_selector(%struct.kvm_vcpu* %24, i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu* %27, i32 %28, i32* null)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @load_guest_segment_descriptor(%struct.kvm_vcpu* %30, i32 %31, %struct.desc_struct* %14)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %199

35:                                               ; preds = %5
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call i64 @load_guest_segment_descriptor(%struct.kvm_vcpu* %36, i32 %37, %struct.desc_struct* %13)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %199

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @TASK_SWITCH_IRET, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %47, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %50 = call i32 %48(%struct.kvm_vcpu* %49)
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 3
  %53 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %14, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %18, align 4
  %58 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %56, %45
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %63 = load i32, i32* @GP_VECTOR, align 4
  %64 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %62, i32 %63, i32 0)
  store i32 1, i32* %6, align 4
  br label %201

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %41
  %67 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %14, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 @get_desc_limit(%struct.desc_struct* %14)
  %72 = icmp slt i32 %71, 103
  br i1 %72, label %73, label %79

73:                                               ; preds = %70, %66
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %75 = load i32, i32* @TS_VECTOR, align 4
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, 65532
  %78 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %74, i32 %75, i32 %77)
  store i32 1, i32* %6, align 4
  br label %201

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @TASK_SWITCH_IRET, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @TASK_SWITCH_JMP, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83, %79
  %88 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %13, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, -3
  store i32 %90, i32* %88, align 4
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @save_guest_segment_descriptor(%struct.kvm_vcpu* %91, i32 %92, %struct.desc_struct* %13)
  br label %94

94:                                               ; preds = %87, %83
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @TASK_SWITCH_IRET, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %100, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %103 = call i32 %101(%struct.kvm_vcpu* %102)
  store i32 %103, i32* %19, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %105, align 8
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @X86_EFLAGS_NT, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = call i32 %106(%struct.kvm_vcpu* %107, i32 %111)
  br label %113

113:                                              ; preds = %98, %94
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @TASK_SWITCH_CALL, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 65535, i32* %17, align 4
  br label %122

122:                                              ; preds = %121, %117, %113
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @TASK_SWITCH_CALL, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 65535, i32* %17, align 4
  br label %131

131:                                              ; preds = %130, %126, %122
  %132 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %14, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @kvm_task_switch_32(%struct.kvm_vcpu* %137, i32 %138, i32 %139, i32 %140, %struct.desc_struct* %14, i32 %141, i32 %142)
  store i32 %143, i32* %15, align 4
  br label %150

144:                                              ; preds = %131
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @kvm_task_switch_16(%struct.kvm_vcpu* %145, i32 %146, i32 %147, i32 %148, %struct.desc_struct* %14)
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %144, %136
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @TASK_SWITCH_CALL, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %154, %150
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %160, align 8
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %163 = call i32 %161(%struct.kvm_vcpu* %162)
  store i32 %163, i32* %20, align 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  %166 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %165, align 8
  %167 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* @X86_EFLAGS_NT, align 4
  %170 = or i32 %168, %169
  %171 = call i32 %166(%struct.kvm_vcpu* %167, i32 %170)
  br label %172

172:                                              ; preds = %158, %154
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @TASK_SWITCH_IRET, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %14, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, 2
  store i32 %179, i32* %177, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @save_guest_segment_descriptor(%struct.kvm_vcpu* %180, i32 %181, %struct.desc_struct* %14)
  br label %183

183:                                              ; preds = %176, %172
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %185, align 8
  %187 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %189 = call i32 @kvm_read_cr0(%struct.kvm_vcpu* %188)
  %190 = load i32, i32* @X86_CR0_TS, align 4
  %191 = or i32 %189, %190
  %192 = call i32 %186(%struct.kvm_vcpu* %187, i32 %191)
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @seg_desct_to_kvm_desct(%struct.desc_struct* %14, i32 %193, %struct.kvm_segment* %12)
  %195 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 0
  store i32 11, i32* %195, align 4
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %197 = load i32, i32* @VCPU_SREG_TR, align 4
  %198 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %196, %struct.kvm_segment* %12, i32 %197)
  br label %199

199:                                              ; preds = %183, %40, %34
  %200 = load i32, i32* %15, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199, %73, %61
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @get_segment_base(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @get_segment_selector(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_gva_to_gpa_write(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i64 @load_guest_segment_descriptor(%struct.kvm_vcpu*, i32, %struct.desc_struct*) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @get_desc_limit(%struct.desc_struct*) #1

declare dso_local i32 @save_guest_segment_descriptor(%struct.kvm_vcpu*, i32, %struct.desc_struct*) #1

declare dso_local i32 @kvm_task_switch_32(%struct.kvm_vcpu*, i32, i32, i32, %struct.desc_struct*, i32, i32) #1

declare dso_local i32 @kvm_task_switch_16(%struct.kvm_vcpu*, i32, i32, i32, %struct.desc_struct*) #1

declare dso_local i32 @kvm_read_cr0(%struct.kvm_vcpu*) #1

declare dso_local i32 @seg_desct_to_kvm_desct(%struct.desc_struct*, i32, %struct.kvm_segment*) #1

declare dso_local i32 @kvm_set_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

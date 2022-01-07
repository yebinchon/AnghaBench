; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_load_segment_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_load_segment_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i64, i32 }
%struct.desc_struct = type { i32 }

@GP_VECTOR = common dso_local global i32 0, align 4
@X86_CR0_PE = common dso_local global i32 0, align 4
@VCPU_SREG_GS = common dso_local global i32 0, align 4
@SS_VECTOR = common dso_local global i32 0, align 4
@NP_VECTOR = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_load_segment_descriptor(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_segment, align 8
  %9 = alloca %struct.desc_struct, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @GP_VECTOR, align 4
  store i32 %17, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, -4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %15, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @is_vm86_segment(%struct.kvm_vcpu* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %3
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = load i32, i32* @X86_CR0_PE, align 4
  %30 = call i32 @kvm_read_cr0_bits(%struct.kvm_vcpu* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27, %3
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @kvm_load_realmode_segment(%struct.kvm_vcpu* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %230

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 131
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %50

46:                                               ; preds = %43, %40, %37
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %224

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 128
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %224

58:                                               ; preds = %53, %50
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @load_guest_segment_descriptor(%struct.kvm_vcpu* %59, i32 %60, %struct.desc_struct* %9)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  store i32 %65, i32* %4, align 4
  br label %230

66:                                               ; preds = %58
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @seg_desct_to_kvm_desct(%struct.desc_struct* %9, i32 %67, %struct.kvm_segment* %8)
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %219

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 65532
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* @GP_VECTOR, align 4
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @VCPU_SREG_GS, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %224

85:                                               ; preds = %80, %73
  %86 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* @SS_VECTOR, align 4
  br label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @NP_VECTOR, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %13, align 4
  br label %224

98:                                               ; preds = %85
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, 3
  store i32 %100, i32* %11, align 4
  %101 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %104, align 8
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %107 = call i32 %105(%struct.kvm_vcpu* %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %7, align 4
  switch i32 %108, label %180 [
    i32 129, label %109
    i32 131, label %124
    i32 128, label %156
    i32 130, label %170
  ]

109:                                              ; preds = %98
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, 10
  %117 = icmp ne i32 %116, 2
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %113, %109
  br label %224

123:                                              ; preds = %118
  br label %200

124:                                              ; preds = %98
  %125 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %224

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %224

140:                                              ; preds = %135
  br label %151

141:                                              ; preds = %130
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  br label %224

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %140
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, 65532
  %154 = load i32, i32* %12, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %6, align 4
  br label %200

156:                                              ; preds = %98
  %157 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 1
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 9
  br i1 %167, label %168, label %169

168:                                              ; preds = %164, %156
  br label %224

169:                                              ; preds = %164, %160
  br label %200

170:                                              ; preds = %98
  %171 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 2
  br i1 %177, label %178, label %179

178:                                              ; preds = %174, %170
  br label %224

179:                                              ; preds = %174
  br label %200

180:                                              ; preds = %98
  %181 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, 10
  %184 = icmp eq i32 %183, 8
  br i1 %184, label %198, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, 12
  %189 = icmp ne i32 %188, 12
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %180
  br label %224

199:                                              ; preds = %194, %190, %185
  br label %200

200:                                              ; preds = %199, %179, %169, %151, %123
  %201 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %218, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %8, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, 1
  store i32 %211, i32* %209, align 8
  %212 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %9, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, 1
  store i32 %214, i32* %212, align 4
  %215 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @save_guest_segment_descriptor(%struct.kvm_vcpu* %215, i32 %216, %struct.desc_struct* %9)
  br label %218

218:                                              ; preds = %208, %204, %200
  br label %219

219:                                              ; preds = %218, %71
  %220 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %220, %struct.kvm_segment* %8, i32 %221)
  %223 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %223, i32* %4, align 4
  br label %230

224:                                              ; preds = %198, %178, %168, %149, %139, %129, %122, %96, %84, %57, %49
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %225, i32 %226, i32 %227)
  %229 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %229, i32* %4, align 4
  br label %230

230:                                              ; preds = %224, %219, %64, %32
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local i64 @is_vm86_segment(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr0_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_load_realmode_segment(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @load_guest_segment_descriptor(%struct.kvm_vcpu*, i32, %struct.desc_struct*) #1

declare dso_local i32 @seg_desct_to_kvm_desct(%struct.desc_struct*, i32, %struct.kvm_segment*) #1

declare dso_local i32 @save_guest_segment_descriptor(%struct.kvm_vcpu*, i32, %struct.desc_struct*) #1

declare dso_local i32 @kvm_set_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_emulate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_kvm_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i32 }
%struct.TYPE_37__ = type { i64 }

@IA64_NO_FAULT = common dso_local global i64 0, align 8
@IA64_FAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_emulate(%struct.kvm_vcpu* %0, %struct.kvm_pt_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_37__, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_pt_regs* %1, %struct.kvm_pt_regs** %4, align 8
  %9 = load i64, i64* @IA64_NO_FAULT, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @VMX(%struct.kvm_vcpu* %10, i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @VMX(%struct.kvm_vcpu* %13, i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = call i32 @prepare_if_physical_mode(%struct.kvm_vcpu* %18)
  %20 = load i64, i64* %6, align 8
  switch i64 %20, label %210 [
    i64 134, label %21
    i64 133, label %26
    i64 143, label %31
    i64 153, label %36
    i64 158, label %41
    i64 149, label %46
    i64 167, label %51
    i64 166, label %54
    i64 165, label %57
    i64 135, label %60
    i64 162, label %63
    i64 161, label %68
    i64 137, label %73
    i64 136, label %78
    i64 164, label %83
    i64 163, label %88
    i64 138, label %93
    i64 140, label %98
    i64 139, label %103
    i64 141, label %108
    i64 142, label %113
    i64 152, label %118
    i64 131, label %123
    i64 129, label %128
    i64 130, label %133
    i64 132, label %138
    i64 150, label %143
    i64 151, label %148
    i64 160, label %153
    i64 148, label %158
    i64 147, label %163
    i64 145, label %168
    i64 144, label %173
    i64 146, label %178
    i64 157, label %183
    i64 156, label %188
    i64 154, label %193
    i64 155, label %198
    i64 159, label %203
    i64 128, label %208
  ]

21:                                               ; preds = %2
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @kvm_rsm(%struct.kvm_vcpu* %22, i64 %24)
  br label %211

26:                                               ; preds = %2
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @kvm_ssm(%struct.kvm_vcpu* %27, i64 %29)
  br label %211

31:                                               ; preds = %2
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @kvm_mov_to_psr(%struct.kvm_vcpu* %32, i64 %34)
  br label %211

36:                                               ; preds = %2
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @kvm_mov_from_psr(%struct.kvm_vcpu* %37, i64 %39)
  br label %211

41:                                               ; preds = %2
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @kvm_mov_from_cr(%struct.kvm_vcpu* %42, i64 %44)
  br label %211

46:                                               ; preds = %2
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @kvm_mov_to_cr(%struct.kvm_vcpu* %47, i64 %49)
  br label %211

51:                                               ; preds = %2
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %53 = call i32 @vcpu_bsw0(%struct.kvm_vcpu* %52)
  br label %211

54:                                               ; preds = %2
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i32 @vcpu_bsw1(%struct.kvm_vcpu* %55)
  br label %211

57:                                               ; preds = %2
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @vcpu_cover(%struct.kvm_vcpu* %58)
  br label %211

60:                                               ; preds = %2
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = call i32 @vcpu_rfi(%struct.kvm_vcpu* %61)
  br label %211

63:                                               ; preds = %2
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @kvm_itr_d(%struct.kvm_vcpu* %64, i64 %66)
  br label %211

68:                                               ; preds = %2
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @kvm_itr_i(%struct.kvm_vcpu* %69, i64 %71)
  br label %211

73:                                               ; preds = %2
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @kvm_ptr_d(%struct.kvm_vcpu* %74, i64 %76)
  br label %211

78:                                               ; preds = %2
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @kvm_ptr_i(%struct.kvm_vcpu* %79, i64 %81)
  br label %211

83:                                               ; preds = %2
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @kvm_itc_d(%struct.kvm_vcpu* %84, i64 %86)
  br label %211

88:                                               ; preds = %2
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @kvm_itc_i(%struct.kvm_vcpu* %89, i64 %91)
  br label %211

93:                                               ; preds = %2
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @kvm_ptc_l(%struct.kvm_vcpu* %94, i64 %96)
  br label %211

98:                                               ; preds = %2
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @kvm_ptc_g(%struct.kvm_vcpu* %99, i64 %101)
  br label %211

103:                                              ; preds = %2
  %104 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @kvm_ptc_ga(%struct.kvm_vcpu* %104, i64 %106)
  br label %211

108:                                              ; preds = %2
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @kvm_ptc_e(%struct.kvm_vcpu* %109, i64 %111)
  br label %211

113:                                              ; preds = %2
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @kvm_mov_to_rr(%struct.kvm_vcpu* %114, i64 %116)
  br label %211

118:                                              ; preds = %2
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @kvm_mov_from_rr(%struct.kvm_vcpu* %119, i64 %121)
  br label %211

123:                                              ; preds = %2
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @kvm_thash(%struct.kvm_vcpu* %124, i64 %126)
  br label %211

128:                                              ; preds = %2
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @kvm_ttag(%struct.kvm_vcpu* %129, i64 %131)
  br label %211

133:                                              ; preds = %2
  %134 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @kvm_tpa(%struct.kvm_vcpu* %134, i64 %136)
  store i64 %137, i64* %5, align 8
  br label %211

138:                                              ; preds = %2
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @kvm_tak(%struct.kvm_vcpu* %139, i64 %141)
  br label %211

143:                                              ; preds = %2
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @kvm_mov_to_ar_imm(%struct.kvm_vcpu* %144, i64 %146)
  br label %211

148:                                              ; preds = %2
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @kvm_mov_to_ar_reg(%struct.kvm_vcpu* %149, i64 %151)
  br label %211

153:                                              ; preds = %2
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @kvm_mov_from_ar_reg(%struct.kvm_vcpu* %154, i64 %156)
  br label %211

158:                                              ; preds = %2
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @kvm_mov_to_dbr(%struct.kvm_vcpu* %159, i64 %161)
  br label %211

163:                                              ; preds = %2
  %164 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @kvm_mov_to_ibr(%struct.kvm_vcpu* %164, i64 %166)
  br label %211

168:                                              ; preds = %2
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @kvm_mov_to_pmc(%struct.kvm_vcpu* %169, i64 %171)
  br label %211

173:                                              ; preds = %2
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @kvm_mov_to_pmd(%struct.kvm_vcpu* %174, i64 %176)
  br label %211

178:                                              ; preds = %2
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @kvm_mov_to_pkr(%struct.kvm_vcpu* %179, i64 %181)
  br label %211

183:                                              ; preds = %2
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @kvm_mov_from_dbr(%struct.kvm_vcpu* %184, i64 %186)
  br label %211

188:                                              ; preds = %2
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @kvm_mov_from_ibr(%struct.kvm_vcpu* %189, i64 %191)
  br label %211

193:                                              ; preds = %2
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @kvm_mov_from_pmc(%struct.kvm_vcpu* %194, i64 %196)
  br label %211

198:                                              ; preds = %2
  %199 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @kvm_mov_from_pkr(%struct.kvm_vcpu* %199, i64 %201)
  br label %211

203:                                              ; preds = %2
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @kvm_mov_from_cpuid(%struct.kvm_vcpu* %204, i64 %206)
  br label %211

208:                                              ; preds = %2
  %209 = load i64, i64* @IA64_FAULT, align 8
  store i64 %209, i64* %5, align 8
  br label %211

210:                                              ; preds = %2
  br label %211

211:                                              ; preds = %210, %208, %203, %198, %193, %188, %183, %178, %173, %168, %163, %158, %153, %148, %143, %138, %133, %128, %123, %118, %113, %108, %103, %98, %93, %88, %83, %78, %73, %68, %63, %60, %57, %54, %51, %46, %41, %36, %31, %26, %21
  %212 = load i64, i64* %5, align 8
  %213 = load i64, i64* @IA64_NO_FAULT, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i64, i64* %6, align 8
  %217 = icmp ne i64 %216, 135
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %220 = call i32 @vcpu_increment_iip(%struct.kvm_vcpu* %219)
  br label %221

221:                                              ; preds = %218, %215, %211
  %222 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %223 = call i32 @recover_if_physical_mode(%struct.kvm_vcpu* %222)
  ret void
}

declare dso_local i64 @VMX(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @prepare_if_physical_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rsm(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ssm(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_psr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_psr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_cr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_cr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_bsw0(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_bsw1(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_cover(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_rfi(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_itr_d(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_itr_i(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ptr_d(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ptr_i(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_itc_d(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_itc_i(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ptc_l(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ptc_g(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ptc_ga(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ptc_e(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_rr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_rr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_thash(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_ttag(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvm_tpa(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_tak(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_ar_imm(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_ar_reg(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_ar_reg(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_dbr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_ibr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_pmc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_pmd(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_to_pkr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_dbr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_ibr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_pmc(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_pkr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mov_from_cpuid(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_increment_iip(%struct.kvm_vcpu*) #1

declare dso_local i32 @recover_if_physical_mode(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

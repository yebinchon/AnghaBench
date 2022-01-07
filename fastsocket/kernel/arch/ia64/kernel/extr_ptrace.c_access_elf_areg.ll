; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_access_elf_areg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_ptrace.c_access_elf_areg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.unw_frame_info = type { i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@UNW_AR_LC = common dso_local global i32 0, align 4
@UNW_AR_EC = common dso_local global i32 0, align 4
@PFM_MASK = common dso_local global i64 0, align 8
@IA64_PSR_RI = common dso_local global i64 0, align 8
@IPSR_MASK = common dso_local global i64 0, align 8
@ELF_NAT_OFFSET = common dso_local global i64 0, align 8
@ELF_PR_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.unw_frame_info*, i64, i64*, i32)* @access_elf_areg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_elf_areg(%struct.task_struct* %0, %struct.unw_frame_info* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.unw_frame_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_regs*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store %struct.unw_frame_info* %1, %struct.unw_frame_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* null, i64** %15, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %17)
  store %struct.pt_regs* %18, %struct.pt_regs** %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp uge i64 %19, 133
  br i1 %20, label %21, label %110

21:                                               ; preds = %5
  %22 = load i64, i64* %9, align 8
  %23 = icmp ule i64 %22, 132
  br i1 %23, label %24, label %110

24:                                               ; preds = %21
  %25 = load i64, i64* %9, align 8
  switch i64 %25, label %109 [
    i64 133, label %26
    i64 141, label %41
    i64 142, label %73
    i64 134, label %76
    i64 140, label %79
    i64 131, label %82
    i64 137, label %85
    i64 135, label %88
    i64 136, label %91
    i64 138, label %97
    i64 139, label %103
    i64 132, label %106
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = or i64 %31, 12
  %33 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %40

35:                                               ; preds = %26
  %36 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %10, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %35, %29
  store i32 0, i32* %6, align 4
  br label %235

41:                                               ; preds = %24
  %42 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %44 = call i64 @ia64_get_user_rbs_end(%struct.task_struct* %42, %struct.pt_regs* %43, i64* %13)
  store i64 %44, i64* %14, align 8
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load i64*, i64** %10, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %54 = call i32 @in_syscall(%struct.pt_regs* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %58 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @convert_to_non_syscall(%struct.task_struct* %57, %struct.pt_regs* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %52
  %62 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 13
  store i32 0, i32* %63, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %67 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %47
  br label %72

69:                                               ; preds = %41
  %70 = load i64, i64* %14, align 8
  %71 = load i64*, i64** %10, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %68
  store i32 0, i32* %6, align 4
  br label %235

73:                                               ; preds = %24
  %74 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 1
  store i64* %75, i64** %15, align 8
  br label %109

76:                                               ; preds = %24
  %77 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 2
  store i64* %78, i64** %15, align 8
  br label %109

79:                                               ; preds = %24
  %80 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 3
  store i64* %81, i64** %15, align 8
  br label %109

82:                                               ; preds = %24
  %83 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %84 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %83, i32 0, i32 4
  store i64* %84, i64** %15, align 8
  br label %109

85:                                               ; preds = %24
  %86 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %87 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %86, i32 0, i32 5
  store i64* %87, i64** %15, align 8
  br label %109

88:                                               ; preds = %24
  %89 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 6
  store i64* %90, i64** %15, align 8
  br label %109

91:                                               ; preds = %24
  %92 = load %struct.unw_frame_info*, %struct.unw_frame_info** %8, align 8
  %93 = load i32, i32* @UNW_AR_LC, align 4
  %94 = load i64*, i64** %10, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @unw_access_ar(%struct.unw_frame_info* %92, i32 %93, i64* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  br label %235

97:                                               ; preds = %24
  %98 = load %struct.unw_frame_info*, %struct.unw_frame_info** %8, align 8
  %99 = load i32, i32* @UNW_AR_EC, align 4
  %100 = load i64*, i64** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @unw_access_ar(%struct.unw_frame_info* %98, i32 %99, i64* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  br label %235

103:                                              ; preds = %24
  %104 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 7
  store i64* %105, i64** %15, align 8
  br label %109

106:                                              ; preds = %24
  %107 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %108 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %107, i32 0, i32 8
  store i64* %108, i64** %15, align 8
  br label %109

109:                                              ; preds = %106, %24, %103, %88, %85, %82, %79, %76, %73
  br label %223

110:                                              ; preds = %21, %5
  %111 = load i64, i64* %9, align 8
  %112 = icmp uge i64 %111, 129
  br i1 %112, label %113, label %201

113:                                              ; preds = %110
  %114 = load i64, i64* %9, align 8
  %115 = icmp ule i64 %114, 128
  br i1 %115, label %116, label %201

116:                                              ; preds = %113
  %117 = load i64, i64* %9, align 8
  switch i64 %117, label %200 [
    i64 129, label %118
    i64 130, label %121
    i64 128, label %163
  ]

118:                                              ; preds = %116
  %119 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %120 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %119, i32 0, i32 9
  store i64* %120, i64** %15, align 8
  br label %200

121:                                              ; preds = %116
  %122 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %123 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %124 = call i64 @ia64_get_user_rbs_end(%struct.task_struct* %122, %struct.pt_regs* %123, i64* %13)
  store i64 %124, i64* %14, align 8
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %159

127:                                              ; preds = %121
  %128 = load i64, i64* %13, align 8
  %129 = load i64*, i64** %10, align 8
  %130 = load i64, i64* %129, align 8
  %131 = xor i64 %128, %130
  %132 = load i64, i64* @PFM_MASK, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %127
  %136 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %137 = call i32 @in_syscall(%struct.pt_regs* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %141 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @convert_to_non_syscall(%struct.task_struct* %140, %struct.pt_regs* %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %135
  %145 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %146 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %145, i32 0, i32 10
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PFM_MASK, align 8
  %149 = xor i64 %148, -1
  %150 = and i64 %147, %149
  %151 = load i64*, i64** %10, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @PFM_MASK, align 8
  %154 = and i64 %152, %153
  %155 = or i64 %150, %154
  %156 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %157 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %156, i32 0, i32 10
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %144, %127
  br label %162

159:                                              ; preds = %121
  %160 = load i64, i64* %13, align 8
  %161 = load i64*, i64** %10, align 8
  store i64 %160, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %158
  store i32 0, i32* %6, align 4
  br label %235

163:                                              ; preds = %116
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %163
  %167 = load i64*, i64** %10, align 8
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %16, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* @IA64_PSR_RI, align 8
  %171 = and i64 %169, %170
  %172 = load i64, i64* @IA64_PSR_RI, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %166
  %175 = load i64, i64* @IA64_PSR_RI, align 8
  %176 = xor i64 %175, -1
  %177 = load i64, i64* %16, align 8
  %178 = and i64 %177, %176
  store i64 %178, i64* %16, align 8
  br label %179

179:                                              ; preds = %174, %166
  %180 = load i64, i64* %16, align 8
  %181 = load i64, i64* @IPSR_MASK, align 8
  %182 = and i64 %180, %181
  %183 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %184 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %183, i32 0, i32 11
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @IPSR_MASK, align 8
  %187 = xor i64 %186, -1
  %188 = and i64 %185, %187
  %189 = or i64 %182, %188
  %190 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %191 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %190, i32 0, i32 11
  store i64 %189, i64* %191, align 8
  br label %199

192:                                              ; preds = %163
  %193 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %194 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %193, i32 0, i32 11
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @IPSR_MASK, align 8
  %197 = and i64 %195, %196
  %198 = load i64*, i64** %10, align 8
  store i64 %197, i64* %198, align 8
  br label %199

199:                                              ; preds = %192, %179
  store i32 0, i32* %6, align 4
  br label %235

200:                                              ; preds = %116, %118
  br label %222

201:                                              ; preds = %113, %110
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* @ELF_NAT_OFFSET, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %207 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %208 = load %struct.unw_frame_info*, %struct.unw_frame_info** %8, align 8
  %209 = load i64*, i64** %10, align 8
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @access_nat_bits(%struct.task_struct* %206, %struct.pt_regs* %207, %struct.unw_frame_info* %208, i64* %209, i32 %210)
  store i32 %211, i32* %6, align 4
  br label %235

212:                                              ; preds = %201
  %213 = load i64, i64* %9, align 8
  %214 = load i64, i64* @ELF_PR_OFFSET, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %218 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %217, i32 0, i32 12
  store i64* %218, i64** %15, align 8
  br label %220

219:                                              ; preds = %212
  store i32 -1, i32* %6, align 4
  br label %235

220:                                              ; preds = %216
  br label %221

221:                                              ; preds = %220
  br label %222

222:                                              ; preds = %221, %200
  br label %223

223:                                              ; preds = %222, %109
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i64*, i64** %10, align 8
  %228 = load i64, i64* %227, align 8
  %229 = load i64*, i64** %15, align 8
  store i64 %228, i64* %229, align 8
  br label %234

230:                                              ; preds = %223
  %231 = load i64*, i64** %15, align 8
  %232 = load i64, i64* %231, align 8
  %233 = load i64*, i64** %10, align 8
  store i64 %232, i64* %233, align 8
  br label %234

234:                                              ; preds = %230, %226
  store i32 0, i32* %6, align 4
  br label %235

235:                                              ; preds = %234, %219, %205, %199, %162, %97, %91, %72, %40
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i64 @ia64_get_user_rbs_end(%struct.task_struct*, %struct.pt_regs*, i64*) #1

declare dso_local i32 @in_syscall(%struct.pt_regs*) #1

declare dso_local i32 @convert_to_non_syscall(%struct.task_struct*, %struct.pt_regs*, i64) #1

declare dso_local i32 @unw_access_ar(%struct.unw_frame_info*, i32, i64*, i32) #1

declare dso_local i32 @access_nat_bits(%struct.task_struct*, %struct.pt_regs*, %struct.unw_frame_info*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

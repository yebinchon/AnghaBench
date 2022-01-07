; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_x86_emulate_instruction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_x86_emulate_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32*, i32*)* }
%struct.kvm_vcpu = type { i64, i64, %struct.TYPE_11__, i32, i32, i32, %struct.TYPE_8__, %struct.kvm_run* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, %struct.decode_cache, i32, %struct.kvm_vcpu* }
%struct.decode_cache = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.kvm_run = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@EMULTYPE_NO_DECODE = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_13__* null, align 8
@X86_CR0_PE = common dso_local global i32 0, align 4
@X86EMUL_MODE_REAL = common dso_local global i32 0, align 4
@X86_EFLAGS_VM = common dso_local global i32 0, align 4
@X86EMUL_MODE_VM86 = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT64 = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT32 = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT16 = common dso_local global i32 0, align 4
@emulate_ops = common dso_local global i32 0, align 4
@EMULTYPE_TRAP_UD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULTYPE_SKIP = common dso_local global i32 0, align 4
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4
@KVM_EXIT_MMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mmio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_emulate_instruction(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.decode_cache*, align 8
  %15 = alloca %struct.kvm_run*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 7
  %20 = load %struct.kvm_run*, %struct.kvm_run** %19, align 8
  store %struct.kvm_run* %20, %struct.kvm_run** %15, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %22 = call i32 @kvm_clear_exception_queue(%struct.kvm_vcpu* %21)
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %28 = call i32 @cache_all_regs(%struct.kvm_vcpu* %27)
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @EMULTYPE_NO_DECODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %205, label %39

39:                                               ; preds = %5
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_x86_ops, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i32 (%struct.kvm_vcpu*, i32*, i32*)*, i32 (%struct.kvm_vcpu*, i32*, i32*)** %41, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %44 = call i32 %42(%struct.kvm_vcpu* %43, i32* %16, i32* %17)
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  store %struct.kvm_vcpu* %45, %struct.kvm_vcpu** %49, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_x86_ops, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %51, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %54 = call i32 %52(%struct.kvm_vcpu* %53)
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @X86_CR0_PE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %39
  %67 = load i32, i32* @X86EMUL_MODE_REAL, align 4
  br label %97

68:                                               ; preds = %39
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @X86_EFLAGS_VM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @X86EMUL_MODE_VM86, align 4
  br label %95

79:                                               ; preds = %68
  %80 = load i32, i32* %17, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @X86EMUL_MODE_PROT64, align 4
  br label %93

84:                                               ; preds = %79
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @X86EMUL_MODE_PROT32, align 4
  br label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @X86EMUL_MODE_PROT16, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  br label %93

93:                                               ; preds = %91, %82
  %94 = phi i32 [ %83, %82 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %77
  %96 = phi i32 [ %78, %77 ], [ %94, %93 ]
  br label %97

97:                                               ; preds = %95, %66
  %98 = phi i32 [ %67, %66 ], [ %96, %95 ]
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 3
  store i32 %98, i32* %102, align 8
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @x86_decode_insn(%struct.TYPE_12__* %105, i32* @emulate_ops, i8* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  store %struct.decode_cache* %112, %struct.decode_cache** %14, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @EMULTYPE_TRAP_UD, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %182

117:                                              ; preds = %97
  %118 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %119 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %123, i32* %6, align 4
  br label %331

124:                                              ; preds = %117
  %125 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %126 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %167 [
    i32 1, label %128
    i32 52, label %141
    i32 53, label %141
    i32 5, label %154
  ]

128:                                              ; preds = %124
  %129 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %130 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 3
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %135 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %133, %128
  %139 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %139, i32* %6, align 4
  br label %331

140:                                              ; preds = %133
  br label %169

141:                                              ; preds = %124, %124
  %142 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %143 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %148 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %141
  %152 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %152, i32* %6, align 4
  br label %331

153:                                              ; preds = %146
  br label %169

154:                                              ; preds = %124
  %155 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %156 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %154
  %160 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %161 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159, %154
  %165 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %165, i32* %6, align 4
  br label %331

166:                                              ; preds = %159
  br label %169

167:                                              ; preds = %124
  %168 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %168, i32* %6, align 4
  br label %331

169:                                              ; preds = %166, %153, %140
  %170 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %171 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %169
  %175 = load %struct.decode_cache*, %struct.decode_cache** %14, align 8
  %176 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %180, i32* %6, align 4
  br label %331

181:                                              ; preds = %174, %169
  br label %182

182:                                              ; preds = %181, %97
  %183 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %184 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %182
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 6
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %197 = load i64, i64* %8, align 8
  %198 = call i64 @reexecute_instruction(%struct.kvm_vcpu* %196, i64 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %190
  %201 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %201, i32* %6, align 4
  br label %331

202:                                              ; preds = %190
  %203 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %203, i32* %6, align 4
  br label %331

204:                                              ; preds = %182
  br label %205

205:                                              ; preds = %204, %5
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @EMULTYPE_SKIP, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %205
  %211 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %212 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %213 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.decode_cache, %struct.decode_cache* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %211, i32 %217)
  %219 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %219, i32* %6, align 4
  br label %331

220:                                              ; preds = %205
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %222 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  %224 = call i32 @x86_emulate_insn(%struct.TYPE_12__* %223, i32* @emulate_ops)
  store i32 %224, i32* %12, align 4
  %225 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %226 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %13, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %220
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_x86_ops, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %234, align 8
  %236 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %237 = load i32, i32* %13, align 4
  %238 = call i32 %235(%struct.kvm_vcpu* %236, i32 %237)
  br label %239

239:                                              ; preds = %232, %220
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %241 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %239
  %247 = load i32, i32* @EMULATE_DO_MMIO, align 4
  store i32 %247, i32* %6, align 4
  br label %331

248:                                              ; preds = %239
  %249 = load i32, i32* %12, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %248
  %252 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %253 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %251, %248
  %257 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  %258 = icmp ne %struct.kvm_run* %257, null
  br i1 %258, label %259, label %289

259:                                              ; preds = %256
  %260 = load i32, i32* @KVM_EXIT_MMIO, align 4
  %261 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  %262 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  %263 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %264 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  %267 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 3
  store i32 %265, i32* %268, align 8
  %269 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  %270 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %274 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @memcpy(i32 %272, i32 %275, i32 8)
  %277 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %278 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  %281 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 1
  store i32 %279, i32* %282, align 8
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %284 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.kvm_run*, %struct.kvm_run** %15, align 8
  %287 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  store i64 %285, i64* %288, align 8
  br label %289

289:                                              ; preds = %259, %256, %251
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %289
  %293 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %294 = load i64, i64* %8, align 8
  %295 = call i64 @reexecute_instruction(%struct.kvm_vcpu* %293, i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %298, i32* %6, align 4
  br label %331

299:                                              ; preds = %292
  %300 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %301 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %308, label %304

304:                                              ; preds = %299
  %305 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %306 = call i32 @kvm_report_emulation_failure(%struct.kvm_vcpu* %305, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %307 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %307, i32* %6, align 4
  br label %331

308:                                              ; preds = %299
  %309 = load i32, i32* @EMULATE_DO_MMIO, align 4
  store i32 %309, i32* %6, align 4
  br label %331

310:                                              ; preds = %289
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** @kvm_x86_ops, align 8
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %312, align 8
  %314 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %315 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %316 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 %313(%struct.kvm_vcpu* %314, i32 %319)
  %321 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %322 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %310
  %326 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %327 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %326, i32 0, i32 0
  store i64 0, i64* %327, align 8
  %328 = load i32, i32* @EMULATE_DO_MMIO, align 4
  store i32 %328, i32* %6, align 4
  br label %331

329:                                              ; preds = %310
  %330 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %329, %325, %308, %304, %297, %246, %210, %202, %200, %179, %167, %164, %151, %138, %122
  %332 = load i32, i32* %6, align 4
  ret i32 %332
}

declare dso_local i32 @kvm_clear_exception_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @cache_all_regs(%struct.kvm_vcpu*) #1

declare dso_local i32 @x86_decode_insn(%struct.TYPE_12__*, i32*, i8*, i32) #1

declare dso_local i64 @reexecute_instruction(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @x86_emulate_insn(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kvm_report_emulation_failure(%struct.kvm_vcpu*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

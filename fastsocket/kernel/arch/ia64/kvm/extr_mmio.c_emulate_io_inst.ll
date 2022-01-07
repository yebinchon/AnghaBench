; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_mmio.c_emulate_io_inst.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_mmio.c_emulate_io_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.ia64_fpreg = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.ia64_psr = type { i32 }

@SL_INTEGER = common dso_local global i32 0, align 4
@IOREQ_WRITE = common dso_local global i32 0, align 4
@IOREQ_READ = common dso_local global i32 0, align 4
@SL_FLOATING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Unsupported MMIO access instruction! \09\09\09\09Bunld[0]=0x%lx, Bundle[1]=0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported instruction type!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emulate_io_inst(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_pt_regs*, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__, align 8
  %20 = alloca %struct.ia64_fpreg, align 8
  %21 = alloca %struct.ia64_fpreg, align 8
  %22 = alloca %struct.ia64_fpreg, align 8
  %23 = alloca %struct.ia64_fpreg, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = call %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu* %24)
  store %struct.kvm_pt_regs* %25, %struct.kvm_pt_regs** %7, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @fetch_code(%struct.kvm_vcpu* %26, i32 %29, %struct.TYPE_16__* %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %588

33:                                               ; preds = %3
  %34 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %7, align 8
  %35 = getelementptr inbounds %struct.kvm_pt_regs, %struct.kvm_pt_regs* %34, i32 0, i32 0
  %36 = bitcast i32* %35 to %struct.ia64_psr*
  %37 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  br label %67

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = shl i32 %54, 18
  %56 = add nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  br label %66

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %41
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %72, label %110

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %77
  %83 = load i32, i32* @SL_INTEGER, align 4
  store i32 %83, i32* %11, align 4
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 3
  store i32 %87, i32* %12, align 4
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 2
  %92 = icmp sgt i32 %91, 11
  br i1 %92, label %93, label %100

93:                                               ; preds = %82
  %94 = load i32, i32* @IOREQ_WRITE, align 4
  store i32 %94, i32* %10, align 4
  %95 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %95, i32 %98)
  store i32 %99, i32* %13, align 4
  br label %109

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %103, 2
  %105 = icmp slt i32 %104, 11
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @IOREQ_READ, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %100
  br label %109

109:                                              ; preds = %108, %93
  br label %551

110:                                              ; preds = %77, %72, %67
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 4
  br i1 %114, label %115, label %151

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %151

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %151

125:                                              ; preds = %120
  %126 = load i32, i32* @SL_INTEGER, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @IOREQ_READ, align 4
  store i32 %127, i32* %10, align 4
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, 3
  store i32 %131, i32* %12, align 4
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %132, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %137, i32 %140)
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %16, align 4
  %145 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %145, i32 %148, i32 %149, i32 0)
  br label %550

151:                                              ; preds = %120, %115, %110
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 5
  br i1 %155, label %156, label %242

156:                                              ; preds = %151
  %157 = load i32, i32* @SL_INTEGER, align 4
  store i32 %157, i32* %11, align 4
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 3
  store i32 %161, i32* %12, align 4
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 2
  %166 = icmp sgt i32 %165, 11
  br i1 %166, label %167, label %203

167:                                              ; preds = %156
  %168 = load i32, i32* @IOREQ_WRITE, align 4
  store i32 %168, i32* %10, align 4
  %169 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %169, i32 %172)
  store i32 %173, i32* %13, align 4
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %174, i32 %177)
  store i32 %178, i32* %16, align 4
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 %181, 31
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = shl i32 %185, 30
  %187 = or i32 %182, %186
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 23
  %192 = or i32 %187, %191
  store i32 %192, i32* %18, align 4
  %193 = load i32, i32* %18, align 4
  %194 = ashr i32 %193, 23
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %16, align 4
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %16, align 4
  %202 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %197, i32 %200, i32 %201, i32 0)
  br label %241

203:                                              ; preds = %156
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 2
  %208 = icmp slt i32 %207, 11
  br i1 %208, label %209, label %240

209:                                              ; preds = %203
  %210 = load i32, i32* @IOREQ_READ, align 4
  store i32 %210, i32* %10, align 4
  %211 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %211, i32 %214)
  store i32 %215, i32* %16, align 4
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = shl i32 %218, 31
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = shl i32 %222, 30
  %224 = or i32 %219, %223
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = shl i32 %227, 23
  %229 = or i32 %224, %228
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = ashr i32 %230, 23
  %232 = load i32, i32* %16, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %16, align 4
  %234 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %16, align 4
  %239 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %234, i32 %237, i32 %238, i32 0)
  br label %240

240:                                              ; preds = %209, %203
  br label %241

241:                                              ; preds = %240, %167
  br label %549

242:                                              ; preds = %151
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 6
  br i1 %246, label %247, label %291

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 59
  br i1 %251, label %252, label %291

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %291

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %291

262:                                              ; preds = %257
  %263 = load i32, i32* @SL_FLOATING, align 4
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* @IOREQ_WRITE, align 4
  store i32 %264, i32* %10, align 4
  %265 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 5
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @vcpu_get_fpreg(%struct.kvm_vcpu* %265, i32 %268, %struct.ia64_fpreg* %20)
  %270 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %20, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = and i32 %274, 262143
  store i32 %275, i32* %273, align 4
  %276 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %277 = load i32, i32* %5, align 4
  %278 = add nsw i32 %277, 8
  %279 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %20, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 1
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @IOREQ_WRITE, align 4
  %285 = call i32 @mmio_access(%struct.kvm_vcpu* %276, i32 %278, i32* %282, i32 8, i32 %283, i32 %284)
  %286 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %20, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %13, align 4
  store i32 3, i32* %12, align 4
  br label %548

291:                                              ; preds = %257, %252, %247, %242
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 7
  br i1 %295, label %296, label %359

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 59
  br i1 %300, label %301, label %359

301:                                              ; preds = %296
  %302 = load i32, i32* @SL_FLOATING, align 4
  store i32 %302, i32* %11, align 4
  %303 = load i32, i32* @IOREQ_WRITE, align 4
  store i32 %303, i32* %10, align 4
  %304 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @vcpu_get_fpreg(%struct.kvm_vcpu* %304, i32 %307, %struct.ia64_fpreg* %21)
  %309 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %309, i32 %312)
  store i32 %313, i32* %16, align 4
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = shl i32 %316, 31
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %320, 30
  %322 = or i32 %317, %321
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = shl i32 %325, 23
  %327 = or i32 %322, %326
  store i32 %327, i32* %18, align 4
  %328 = load i32, i32* %18, align 4
  %329 = ashr i32 %328, 23
  %330 = load i32, i32* %16, align 4
  %331 = add nsw i32 %330, %329
  store i32 %331, i32* %16, align 4
  %332 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* %16, align 4
  %337 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %332, i32 %335, i32 %336, i32 0)
  %338 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %21, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = and i32 %342, 262143
  store i32 %343, i32* %341, align 4
  %344 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, 8
  %347 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %21, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 1
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* @IOREQ_WRITE, align 4
  %353 = call i32 @mmio_access(%struct.kvm_vcpu* %344, i32 %346, i32* %350, i32 8, i32 %351, i32 %352)
  %354 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %21, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %13, align 4
  store i32 3, i32* %12, align 4
  br label %547

359:                                              ; preds = %296, %291
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %361 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %362, 7
  br i1 %363, label %364, label %411

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %367, 49
  br i1 %368, label %369, label %411

369:                                              ; preds = %364
  %370 = load i32, i32* @SL_FLOATING, align 4
  store i32 %370, i32* %11, align 4
  %371 = load i32, i32* @IOREQ_WRITE, align 4
  store i32 %371, i32* %10, align 4
  store i32 3, i32* %12, align 4
  %372 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @vcpu_get_fpreg(%struct.kvm_vcpu* %372, i32 %375, %struct.ia64_fpreg* %22)
  %377 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %22, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %377, i32 0, i32 0
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = load i32, i32* %380, align 4
  store i32 %381, i32* %13, align 4
  %382 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %382, i32 %385)
  store i32 %386, i32* %16, align 4
  %387 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = shl i32 %389, 31
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = shl i32 %393, 30
  %395 = or i32 %390, %394
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 4
  %399 = shl i32 %398, 23
  %400 = or i32 %395, %399
  store i32 %400, i32* %18, align 4
  %401 = load i32, i32* %18, align 4
  %402 = ashr i32 %401, 23
  %403 = load i32, i32* %16, align 4
  %404 = add nsw i32 %403, %402
  store i32 %404, i32* %16, align 4
  %405 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %16, align 4
  %410 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %405, i32 %408, i32 %409, i32 0)
  br label %546

411:                                              ; preds = %364, %359
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp eq i32 %414, 7
  br i1 %415, label %416, label %458

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %418 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = icmp sge i32 %419, 44
  br i1 %420, label %421, label %458

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = icmp sle i32 %424, 47
  br i1 %425, label %426, label %458

426:                                              ; preds = %421
  %427 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 5
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @vcpu_get_gr(%struct.kvm_vcpu* %427, i32 %430)
  store i32 %431, i32* %16, align 4
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = shl i32 %434, 31
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 4
  %439 = shl i32 %438, 30
  %440 = or i32 %435, %439
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %442 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %441, i32 0, i32 4
  %443 = load i32, i32* %442, align 4
  %444 = shl i32 %443, 23
  %445 = or i32 %440, %444
  store i32 %445, i32* %18, align 4
  %446 = load i32, i32* %18, align 4
  %447 = ashr i32 %446, 23
  %448 = load i32, i32* %16, align 4
  %449 = add nsw i32 %448, %447
  store i32 %449, i32* %16, align 4
  %450 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %451, i32 0, i32 5
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* %16, align 4
  %455 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %450, i32 %453, i32 %454, i32 0)
  %456 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %457 = call i32 @vcpu_increment_iip(%struct.kvm_vcpu* %456)
  br label %588

458:                                              ; preds = %421, %416, %411
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %460 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp eq i32 %461, 6
  br i1 %462, label %463, label %533

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %465 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = icmp eq i32 %466, 1
  br i1 %467, label %468, label %533

468:                                              ; preds = %463
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = icmp eq i32 %471, 1
  br i1 %472, label %473, label %533

473:                                              ; preds = %468
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %533

478:                                              ; preds = %473
  %479 = load i32, i32* @SL_FLOATING, align 4
  store i32 %479, i32* %11, align 4
  %480 = load i32, i32* @IOREQ_READ, align 4
  store i32 %480, i32* %10, align 4
  store i32 8, i32* %12, align 4
  %481 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %482 = load i32, i32* %5, align 4
  %483 = load i32, i32* %12, align 4
  %484 = load i32, i32* %6, align 4
  %485 = load i32, i32* %10, align 4
  %486 = call i32 @mmio_access(%struct.kvm_vcpu* %481, i32 %482, i32* %13, i32 %483, i32 %484, i32 %485)
  %487 = load i32, i32* %13, align 4
  %488 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %23, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 0
  %490 = load i32*, i32** %489, align 8
  %491 = getelementptr inbounds i32, i32* %490, i64 0
  store i32 %487, i32* %491, align 4
  %492 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %23, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 0
  %494 = load i32*, i32** %493, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 1
  store i32 65598, i32* %495, align 4
  %496 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %498 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %497, i32 0, i32 6
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @vcpu_set_fpreg(%struct.kvm_vcpu* %496, i32 %499, %struct.ia64_fpreg* %23)
  %501 = load i32, i32* %5, align 4
  %502 = add nsw i32 %501, 8
  store i32 %502, i32* %5, align 4
  %503 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %504 = load i32, i32* %5, align 4
  %505 = load i32, i32* %12, align 4
  %506 = load i32, i32* %6, align 4
  %507 = load i32, i32* %10, align 4
  %508 = call i32 @mmio_access(%struct.kvm_vcpu* %503, i32 %504, i32* %13, i32 %505, i32 %506, i32 %507)
  %509 = load i32, i32* %13, align 4
  %510 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %23, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %510, i32 0, i32 0
  %512 = load i32*, i32** %511, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 0
  store i32 %509, i32* %513, align 4
  %514 = getelementptr inbounds %struct.ia64_fpreg, %struct.ia64_fpreg* %23, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %514, i32 0, i32 0
  %516 = load i32*, i32** %515, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 1
  store i32 65598, i32* %517, align 4
  %518 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %520 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %519, i32 0, i32 5
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @vcpu_set_fpreg(%struct.kvm_vcpu* %518, i32 %521, %struct.ia64_fpreg* %23)
  %523 = load i32, i32* %5, align 4
  %524 = add nsw i32 %523, 8
  store i32 %524, i32* %5, align 4
  %525 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %526 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %526, i32 0, i32 4
  %528 = load i32, i32* %527, align 8
  %529 = load i32, i32* %5, align 4
  %530 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %525, i32 %528, i32 %529, i32 0)
  %531 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %532 = call i32 @vcpu_increment_iip(%struct.kvm_vcpu* %531)
  br label %588

533:                                              ; preds = %473, %468, %463, %458
  store i32 -1, i32* %11, align 4
  %534 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %536 = load i32*, i32** %535, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 0
  %538 = load i32, i32* %537, align 4
  %539 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 4
  %540 = load i32*, i32** %539, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 1
  %542 = load i32, i32* %541, align 4
  %543 = call i32 (%struct.kvm_vcpu*, i8*, ...) @panic_vm(%struct.kvm_vcpu* %534, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %538, i32 %542)
  br label %544

544:                                              ; preds = %533
  br label %545

545:                                              ; preds = %544
  br label %546

546:                                              ; preds = %545, %369
  br label %547

547:                                              ; preds = %546, %301
  br label %548

548:                                              ; preds = %547, %262
  br label %549

549:                                              ; preds = %548, %241
  br label %550

550:                                              ; preds = %549, %125
  br label %551

551:                                              ; preds = %550, %109
  %552 = load i32, i32* %12, align 4
  %553 = shl i32 1, %552
  store i32 %553, i32* %12, align 4
  %554 = load i32, i32* %10, align 4
  %555 = load i32, i32* @IOREQ_WRITE, align 4
  %556 = icmp eq i32 %554, %555
  br i1 %556, label %557, label %564

557:                                              ; preds = %551
  %558 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %559 = load i32, i32* %5, align 4
  %560 = load i32, i32* %12, align 4
  %561 = load i32, i32* %6, align 4
  %562 = load i32, i32* %10, align 4
  %563 = call i32 @mmio_access(%struct.kvm_vcpu* %558, i32 %559, i32* %13, i32 %560, i32 %561, i32 %562)
  br label %585

564:                                              ; preds = %551
  %565 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %566 = load i32, i32* %5, align 4
  %567 = load i32, i32* %12, align 4
  %568 = load i32, i32* %6, align 4
  %569 = load i32, i32* %10, align 4
  %570 = call i32 @mmio_access(%struct.kvm_vcpu* %565, i32 %566, i32* %13, i32 %567, i32 %568, i32 %569)
  %571 = load i32, i32* %11, align 4
  %572 = load i32, i32* @SL_INTEGER, align 4
  %573 = icmp eq i32 %571, %572
  br i1 %573, label %574, label %581

574:                                              ; preds = %564
  %575 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %576 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i32 0, i32 4
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* %13, align 4
  %580 = call i32 @vcpu_set_gr(%struct.kvm_vcpu* %575, i32 %578, i32 %579, i32 0)
  br label %584

581:                                              ; preds = %564
  %582 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %583 = call i32 (%struct.kvm_vcpu*, i8*, ...) @panic_vm(%struct.kvm_vcpu* %582, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %584

584:                                              ; preds = %581, %574
  br label %585

585:                                              ; preds = %584, %557
  %586 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %587 = call i32 @vcpu_increment_iip(%struct.kvm_vcpu* %586)
  br label %588

588:                                              ; preds = %585, %478, %426, %32
  ret void
}

declare dso_local %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu*) #1

declare dso_local i64 @fetch_code(%struct.kvm_vcpu*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vcpu_get_gr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vcpu_set_gr(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @vcpu_get_fpreg(%struct.kvm_vcpu*, i32, %struct.ia64_fpreg*) #1

declare dso_local i32 @mmio_access(%struct.kvm_vcpu*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vcpu_increment_iip(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_set_fpreg(%struct.kvm_vcpu*, i32, %struct.ia64_fpreg*) #1

declare dso_local i32 @panic_vm(%struct.kvm_vcpu*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

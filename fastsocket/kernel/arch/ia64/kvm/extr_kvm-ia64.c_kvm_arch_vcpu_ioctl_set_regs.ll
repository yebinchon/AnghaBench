; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_set_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }
%struct.kvm_regs = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.vpd = type { i32, i32, i32, i32, i32, i32*, i32*, i32* }

@mp_state = common dso_local global i32 0, align 4
@vmm_rr = common dso_local global i32 0, align 4
@NITRS = common dso_local global i32 0, align 4
@NDTRS = common dso_local global i32 0, align 4
@itr_regions = common dso_local global i32 0, align 4
@dtr_regions = common dso_local global i32 0, align 4
@tc_regions = common dso_local global i32 0, align 4
@irq_check = common dso_local global i32 0, align 4
@itc_check = common dso_local global i32 0, align 4
@timer_check = common dso_local global i32 0, align 4
@timer_pending = common dso_local global i32 0, align 4
@last_itc = common dso_local global i32 0, align 4
@xtp = common dso_local global i32 0, align 4
@metaphysical_rr0 = common dso_local global i32 0, align 4
@metaphysical_rr4 = common dso_local global i32 0, align 4
@metaphysical_saved_rr0 = common dso_local global i32 0, align 4
@metaphysical_saved_rr4 = common dso_local global i32 0, align 4
@fp_psr = common dso_local global i32 0, align 4
@saved_gp = common dso_local global i32 0, align 4
@KVM_REQ_RESUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_set_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca %struct.vpd*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.vpd* @to_host(i32 %9, i32 %13)
  store %struct.vpd* %14, %struct.vpd** %5, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %16 = call i32 @vcpu_load(%struct.kvm_vcpu* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %49, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vpd*, %struct.vpd** %5, align 8
  %30 = getelementptr inbounds %struct.vpd, %struct.vpd* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %28, i32* %34, align 4
  %35 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %36 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vpd*, %struct.vpd** %5, align 8
  %44 = getelementptr inbounds %struct.vpd, %struct.vpd* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %20
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %17

52:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %71, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 128
  br i1 %55, label %56, label %74

56:                                               ; preds = %53
  %57 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.vpd*, %struct.vpd** %5, align 8
  %66 = getelementptr inbounds %struct.vpd, %struct.vpd* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %75, i32 0, i32 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.vpd*, %struct.vpd** %5, align 8
  %80 = getelementptr inbounds %struct.vpd, %struct.vpd* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %82 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vpd*, %struct.vpd** %5, align 8
  %86 = getelementptr inbounds %struct.vpd, %struct.vpd* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %88 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.vpd*, %struct.vpd** %5, align 8
  %92 = getelementptr inbounds %struct.vpd, %struct.vpd* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %93, i32 0, i32 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.vpd*, %struct.vpd** %5, align 8
  %98 = getelementptr inbounds %struct.vpd, %struct.vpd* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %100 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vpd*, %struct.vpd** %5, align 8
  %104 = getelementptr inbounds %struct.vpd, %struct.vpd* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %106 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 8
  %108 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %109 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %108, i32 0, i32 7
  %110 = call i32 @memcpy(i32* %107, i32* %109, i32 4)
  %111 = load i32, i32* @mp_state, align 4
  %112 = call i32 @RESTORE_REGS(i32 %111)
  %113 = load i32, i32* @vmm_rr, align 4
  %114 = call i32 @RESTORE_REGS(i32 %113)
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %120 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @NITRS, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i32* %118, i32* %121, i32 %125)
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %132 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @NDTRS, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i32* %130, i32* %133, i32 %137)
  %139 = load i32, i32* @itr_regions, align 4
  %140 = call i32 @RESTORE_REGS(i32 %139)
  %141 = load i32, i32* @dtr_regions, align 4
  %142 = call i32 @RESTORE_REGS(i32 %141)
  %143 = load i32, i32* @tc_regions, align 4
  %144 = call i32 @RESTORE_REGS(i32 %143)
  %145 = load i32, i32* @irq_check, align 4
  %146 = call i32 @RESTORE_REGS(i32 %145)
  %147 = load i32, i32* @itc_check, align 4
  %148 = call i32 @RESTORE_REGS(i32 %147)
  %149 = load i32, i32* @timer_check, align 4
  %150 = call i32 @RESTORE_REGS(i32 %149)
  %151 = load i32, i32* @timer_pending, align 4
  %152 = call i32 @RESTORE_REGS(i32 %151)
  %153 = load i32, i32* @last_itc, align 4
  %154 = call i32 @RESTORE_REGS(i32 %153)
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %201, %74
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 8
  br i1 %157, label %158, label %204

158:                                              ; preds = %155
  %159 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %160 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %165, i32* %172, align 4
  %173 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %174 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %179, i32* %186, align 4
  %187 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %188 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %195 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %193, i32* %200, align 4
  br label %201

201:                                              ; preds = %158
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  br label %155

204:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %223, %204
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %206, 4
  br i1 %207, label %208, label %226

208:                                              ; preds = %205
  %209 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %210 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %217 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %215, i32* %222, align 4
  br label %223

223:                                              ; preds = %208
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %205

226:                                              ; preds = %205
  %227 = load i32, i32* @xtp, align 4
  %228 = call i32 @RESTORE_REGS(i32 %227)
  %229 = load i32, i32* @metaphysical_rr0, align 4
  %230 = call i32 @RESTORE_REGS(i32 %229)
  %231 = load i32, i32* @metaphysical_rr4, align 4
  %232 = call i32 @RESTORE_REGS(i32 %231)
  %233 = load i32, i32* @metaphysical_saved_rr0, align 4
  %234 = call i32 @RESTORE_REGS(i32 %233)
  %235 = load i32, i32* @metaphysical_saved_rr4, align 4
  %236 = call i32 @RESTORE_REGS(i32 %235)
  %237 = load i32, i32* @fp_psr, align 4
  %238 = call i32 @RESTORE_REGS(i32 %237)
  %239 = load i32, i32* @saved_gp, align 4
  %240 = call i32 @RESTORE_REGS(i32 %239)
  %241 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %242 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  %244 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %245 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %248 = call i64 @kvm_get_itc(%struct.kvm_vcpu* %247)
  %249 = sub nsw i64 %246, %248
  %250 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %251 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  store i64 %249, i64* %252, align 8
  %253 = load i32, i32* @KVM_REQ_RESUME, align 4
  %254 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %255 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %254, i32 0, i32 0
  %256 = call i32 @set_bit(i32 %253, i32* %255)
  %257 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %258 = call i32 @vcpu_put(%struct.kvm_vcpu* %257)
  ret i32 0
}

declare dso_local %struct.vpd* @to_host(i32, i32) #1

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @RESTORE_REGS(i32) #1

declare dso_local i64 @kvm_get_itc(%struct.kvm_vcpu*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

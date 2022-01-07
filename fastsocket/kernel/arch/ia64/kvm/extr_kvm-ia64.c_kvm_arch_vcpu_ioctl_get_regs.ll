; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_vcpu_ioctl_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 }
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_get_regs(%struct.kvm_vcpu* %0, %struct.kvm_regs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_regs*, align 8
  %5 = alloca %struct.vpd*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_regs* %1, %struct.kvm_regs** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
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
  %21 = load %struct.vpd*, %struct.vpd** %5, align 8
  %22 = getelementptr inbounds %struct.vpd, %struct.vpd* %21, i32 0, i32 7
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %29 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %27, i32* %34, align 4
  %35 = load %struct.vpd*, %struct.vpd** %5, align 8
  %36 = getelementptr inbounds %struct.vpd, %struct.vpd* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %41, i32* %48, align 4
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
  %57 = load %struct.vpd*, %struct.vpd** %5, align 8
  %58 = getelementptr inbounds %struct.vpd, %struct.vpd* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %65 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %64, i32 0, i32 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %63, i32* %70, align 4
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load %struct.vpd*, %struct.vpd** %5, align 8
  %76 = getelementptr inbounds %struct.vpd, %struct.vpd* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %79 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  store i32 %77, i32* %80, align 8
  %81 = load %struct.vpd*, %struct.vpd** %5, align 8
  %82 = getelementptr inbounds %struct.vpd, %struct.vpd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %83, i32* %86, align 4
  %87 = load %struct.vpd*, %struct.vpd** %5, align 8
  %88 = getelementptr inbounds %struct.vpd, %struct.vpd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %91 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %89, i32* %92, align 8
  %93 = load %struct.vpd*, %struct.vpd** %5, align 8
  %94 = getelementptr inbounds %struct.vpd, %struct.vpd* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %97 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.vpd*, %struct.vpd** %5, align 8
  %100 = getelementptr inbounds %struct.vpd, %struct.vpd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %103 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  %105 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %106 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %105, i32 0, i32 7
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 7
  %110 = call i32 @memcpy(i32* %106, i32* %109, i32 4)
  %111 = load i32, i32* @mp_state, align 4
  %112 = call i32 @SAVE_REGS(i32 %111)
  %113 = load i32, i32* @vmm_rr, align 4
  %114 = call i32 @SAVE_REGS(i32 %113)
  %115 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %116 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %119 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @NITRS, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i32* %117, i32* %121, i32 %125)
  %127 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %128 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* @NDTRS, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 4, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @memcpy(i32* %129, i32* %133, i32 %137)
  %139 = load i32, i32* @itr_regions, align 4
  %140 = call i32 @SAVE_REGS(i32 %139)
  %141 = load i32, i32* @dtr_regions, align 4
  %142 = call i32 @SAVE_REGS(i32 %141)
  %143 = load i32, i32* @tc_regions, align 4
  %144 = call i32 @SAVE_REGS(i32 %143)
  %145 = load i32, i32* @irq_check, align 4
  %146 = call i32 @SAVE_REGS(i32 %145)
  %147 = load i32, i32* @itc_check, align 4
  %148 = call i32 @SAVE_REGS(i32 %147)
  %149 = load i32, i32* @timer_check, align 4
  %150 = call i32 @SAVE_REGS(i32 %149)
  %151 = load i32, i32* @timer_pending, align 4
  %152 = call i32 @SAVE_REGS(i32 %151)
  %153 = load i32, i32* @last_itc, align 4
  %154 = call i32 @SAVE_REGS(i32 %153)
  store i32 0, i32* %6, align 4
  br label %155

155:                                              ; preds = %201, %74
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 8
  br i1 %157, label %158, label %204

158:                                              ; preds = %155
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %168 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %174 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %182 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  %187 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %188 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %196 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
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
  %209 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %210 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %218 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  br label %223

223:                                              ; preds = %208
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %205

226:                                              ; preds = %205
  %227 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %228 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %232 = call i64 @kvm_get_itc(%struct.kvm_vcpu* %231)
  %233 = add nsw i64 %230, %232
  %234 = load %struct.kvm_regs*, %struct.kvm_regs** %4, align 8
  %235 = getelementptr inbounds %struct.kvm_regs, %struct.kvm_regs* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load i32, i32* @xtp, align 4
  %237 = call i32 @SAVE_REGS(i32 %236)
  %238 = load i32, i32* @metaphysical_rr0, align 4
  %239 = call i32 @SAVE_REGS(i32 %238)
  %240 = load i32, i32* @metaphysical_rr4, align 4
  %241 = call i32 @SAVE_REGS(i32 %240)
  %242 = load i32, i32* @metaphysical_saved_rr0, align 4
  %243 = call i32 @SAVE_REGS(i32 %242)
  %244 = load i32, i32* @metaphysical_saved_rr4, align 4
  %245 = call i32 @SAVE_REGS(i32 %244)
  %246 = load i32, i32* @fp_psr, align 4
  %247 = call i32 @SAVE_REGS(i32 %246)
  %248 = load i32, i32* @saved_gp, align 4
  %249 = call i32 @SAVE_REGS(i32 %248)
  %250 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %251 = call i32 @vcpu_put(%struct.kvm_vcpu* %250)
  ret i32 0
}

declare dso_local %struct.vpd* @to_host(i32, i32) #1

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SAVE_REGS(i32) #1

declare dso_local i64 @kvm_get_itc(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

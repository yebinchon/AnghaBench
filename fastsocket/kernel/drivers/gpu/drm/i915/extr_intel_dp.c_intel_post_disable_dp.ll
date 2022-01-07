; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_post_disable_dp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_dp.c_intel_post_disable_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_dp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*)* @intel_post_disable_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_post_disable_dp(%struct.intel_encoder* %0) #0 {
  %2 = alloca %struct.intel_encoder*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %2, align 8
  %4 = load %struct.intel_encoder*, %struct.intel_encoder** %2, align 8
  %5 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %4, i32 0, i32 0
  %6 = call %struct.intel_dp* @enc_to_intel_dp(i32* %5)
  store %struct.intel_dp* %6, %struct.intel_dp** %3, align 8
  %7 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %8 = call i64 @is_cpu_edp(%struct.intel_dp* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = call i32 @intel_dp_link_down(%struct.intel_dp* %11)
  %13 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %14 = call i32 @ironlake_edp_pll_off(%struct.intel_dp* %13)
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.intel_dp* @enc_to_intel_dp(i32*) #1

declare dso_local i64 @is_cpu_edp(%struct.intel_dp*) #1

declare dso_local i32 @intel_dp_link_down(%struct.intel_dp*) #1

declare dso_local i32 @ironlake_edp_pll_off(%struct.intel_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_cpu_raise.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_intel_ips.c_ips_cpu_raise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ips_driver = type { i32, i32 }

@TURBO_POWER_CURRENT_LIMIT = common dso_local global i32 0, align 4
@TURBO_TDP_MASK = common dso_local global i32 0, align 4
@THM_MPCPC = common dso_local global i32 0, align 4
@TURBO_TDC_OVR_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ips_driver*)* @ips_cpu_raise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ips_cpu_raise(%struct.ips_driver* %0) #0 {
  %2 = alloca %struct.ips_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ips_driver* %0, %struct.ips_driver** %2, align 8
  %6 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %7 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %53

11:                                               ; preds = %1
  %12 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @rdmsrl(i32 %12, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TURBO_TDP_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, 10
  %22 = sdiv i32 %21, 8
  %23 = load %struct.ips_driver*, %struct.ips_driver** %2, align 8
  %24 = getelementptr inbounds %struct.ips_driver, %struct.ips_driver* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %11
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %11
  %30 = load i32, i32* @THM_MPCPC, align 4
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 10
  %33 = sdiv i32 %32, 8
  %34 = call i32 @thm_writew(i32 %30, i32 %33)
  %35 = load i32, i32* @TURBO_TDC_OVR_EN, align 4
  %36 = load i32, i32* @TURBO_TDC_OVR_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @wrmsrl(i32 %40, i32 %41)
  %43 = load i32, i32* @TURBO_TDP_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @TURBO_POWER_CURRENT_LIMIT, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @wrmsrl(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @thm_writew(i32, i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

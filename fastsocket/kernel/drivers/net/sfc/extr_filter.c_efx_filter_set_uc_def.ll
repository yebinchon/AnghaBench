; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_uc_def.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_uc_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i64, i32 }

@EFX_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_TX = common dso_local global i32 0, align 4
@EFX_FILTER_UNSPEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFX_FILTER_UC_DEF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_set_uc_def(%struct.efx_filter_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_filter_spec*, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %3, align 8
  %4 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %5 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @EFX_FILTER_FLAG_RX, align 4
  %8 = load i32, i32* @EFX_FILTER_FLAG_TX, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @EFX_BUG_ON_PARANOID(i32 %13)
  %15 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %16 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EFX_FILTER_UNSPEC, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i64, i64* @EFX_FILTER_UC_DEF, align 8
  %25 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %26 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %28 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memset(i32 %29, i32 0, i32 4)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

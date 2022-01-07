; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_ipv4_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_ipv4_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i64 }

@EFX_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EFX_FILTER_UNSPEC = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFX_FILTER_TCP_WILD = common dso_local global i64 0, align 8
@EFX_FILTER_UDP_WILD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_filter_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %6, align 8
  %13 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EFX_FILTER_FLAG_RX, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @EFX_BUG_ON_PARANOID(i32 %19)
  %21 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %6, align 8
  %22 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EFX_FILTER_UNSPEC, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EPROTONOSUPPORT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %61

29:                                               ; preds = %4
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %61

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %45 [
    i32 129, label %37
    i32 128, label %41
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* @EFX_FILTER_TCP_WILD, align 8
  %39 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %6, align 8
  %40 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %48

41:                                               ; preds = %35
  %42 = load i64, i64* @EFX_FILTER_UDP_WILD, align 8
  %43 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %6, align 8
  %44 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EPROTONOSUPPORT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %61

48:                                               ; preds = %41, %37
  store i64 0, i64* %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 128
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 0, i64* %11, align 8
  br label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @__efx_filter_set_ipv4(%struct.efx_filter_spec* %55, i64 %56, i64 %57, i64 %58, i64 %59)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %54, %45, %32, %26
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @__efx_filter_set_ipv4(%struct.efx_filter_spec*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

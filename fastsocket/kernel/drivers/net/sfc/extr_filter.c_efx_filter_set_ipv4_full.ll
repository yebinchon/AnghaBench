; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_ipv4_full.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_ipv4_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i64 }

@EFX_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EFX_FILTER_UNSPEC = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFX_FILTER_TCP_FULL = common dso_local global i64 0, align 8
@EFX_FILTER_UDP_FULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_set_ipv4_full(%struct.efx_filter_spec* %0, i32 %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_filter_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %14 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %15 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EFX_FILTER_FLAG_RX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @EFX_BUG_ON_PARANOID(i32 %21)
  %23 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %24 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EFX_FILTER_UNSPEC, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i32, i32* @EPROTONOSUPPORT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %60

31:                                               ; preds = %6
  %32 = load i64, i64* %11, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %60

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 128, label %46
  ]

42:                                               ; preds = %40
  %43 = load i64, i64* @EFX_FILTER_TCP_FULL, align 8
  %44 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %45 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %53

46:                                               ; preds = %40
  %47 = load i64, i64* @EFX_FILTER_UDP_FULL, align 8
  %48 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %49 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @EPROTONOSUPPORT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %60

53:                                               ; preds = %46, %42
  %54 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @__efx_filter_set_ipv4(%struct.efx_filter_spec* %54, i32 %55, i64 %56, i32 %57, i64 %58)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %53, %50, %37, %28
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @__efx_filter_set_ipv4(%struct.efx_filter_spec*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

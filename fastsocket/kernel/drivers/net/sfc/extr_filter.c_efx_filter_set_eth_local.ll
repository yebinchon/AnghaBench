; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_eth_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_set_eth_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i64, i32* }

@EFX_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_TX = common dso_local global i32 0, align 4
@EFX_FILTER_UNSPEC = common dso_local global i64 0, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EFX_FILTER_VID_UNSPEC = common dso_local global i64 0, align 8
@EFX_FILTER_MAC_WILD = common dso_local global i64 0, align 8
@EFX_FILTER_MAC_FULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_filter_spec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %9 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @EFX_FILTER_FLAG_RX, align 4
  %12 = load i32, i32* @EFX_FILTER_FLAG_TX, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @EFX_BUG_ON_PARANOID(i32 %17)
  %19 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %20 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EFX_FILTER_UNSPEC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EPROTONOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %84

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @EFX_FILTER_VID_UNSPEC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64, i64* @EFX_FILTER_MAC_WILD, align 8
  %33 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %34 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  %35 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %36 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %38, align 4
  br label %49

39:                                               ; preds = %27
  %40 = load i64, i64* @EFX_FILTER_MAC_FULL, align 8
  %41 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %42 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %46 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %39, %31
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 24
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %53, %57
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %58, %62
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %69 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %67, i32* %71, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 8
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %81 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %79, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %49, %24
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

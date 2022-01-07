; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_get_eth_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_get_eth_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i32* }

@EFX_FILTER_VID_UNSPEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_get_eth_local(%struct.efx_filter_spec* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_filter_spec*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %9 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 129, label %14
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @EFX_FILTER_VID_UNSPEC, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 %12, i32* %13, align 4
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %16 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %71

24:                                               ; preds = %14, %11
  %25 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %26 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 8
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %34 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %41 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 24
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %49 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 16
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %57 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 8
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %65 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %24, %21
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

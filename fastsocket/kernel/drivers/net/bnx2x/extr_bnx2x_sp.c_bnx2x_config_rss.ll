; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_config_rss_params = type { i32, %struct.bnx2x_rss_config_obj* }
%struct.bnx2x_rss_config_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_config_rss_params.1*)*, %struct.bnx2x_raw_obj }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_config_rss_params.1 = type opaque
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x.2*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)* }
%struct.bnx2x.2 = type opaque

@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_rss(%struct.bnx2x* %0, %struct.bnx2x_config_rss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_config_rss_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %8 = alloca %struct.bnx2x_raw_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_config_rss_params* %1, %struct.bnx2x_config_rss_params** %5, align 8
  %9 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %10, align 8
  store %struct.bnx2x_rss_config_obj* %11, %struct.bnx2x_rss_config_obj** %7, align 8
  %12 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %12, i32 0, i32 1
  store %struct.bnx2x_raw_obj* %13, %struct.bnx2x_raw_obj** %8, align 8
  %14 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %15 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %22 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %21, i32 0, i32 2
  %23 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %22, align 8
  %24 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %25 = call i32 %23(%struct.bnx2x_raw_obj* %24)
  %26 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %27 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %26, i32 0, i32 0
  %28 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_config_rss_params.1*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_config_rss_params.1*)** %27, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = bitcast %struct.bnx2x* %29 to %struct.bnx2x.0*
  %31 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %32 = bitcast %struct.bnx2x_config_rss_params* %31 to %struct.bnx2x_config_rss_params.1*
  %33 = call i32 %28(%struct.bnx2x.0* %30, %struct.bnx2x_config_rss_params.1* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %20
  %37 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %38 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %37, i32 0, i32 1
  %39 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %38, align 8
  %40 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %41 = call i32 %39(%struct.bnx2x_raw_obj* %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %20
  %44 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %45 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %45, i32 0, i32 0
  %47 = call i64 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %51 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %50, i32 0, i32 0
  %52 = load i32 (%struct.bnx2x.2*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_raw_obj*)** %51, align 8
  %53 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %54 = bitcast %struct.bnx2x* %53 to %struct.bnx2x.2*
  %55 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %56 = call i32 %52(%struct.bnx2x.2* %54, %struct.bnx2x_raw_obj* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %43
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %36, %19
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

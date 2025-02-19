; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_ulp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_ulp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.tp_params = type { i32 }

@ISCSI = common dso_local global i32 0, align 4
@TDDP = common dso_local global i32 0, align 4
@TPT = common dso_local global i32 0, align 4
@STAG = common dso_local global i32 0, align 4
@RQ = common dso_local global i32 0, align 4
@PBL = common dso_local global i32 0, align 4
@A_ULPRX_TDDP_TAGMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.tp_params*)* @ulp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulp_config(%struct.adapter* %0, %struct.tp_params* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.tp_params*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.tp_params* %1, %struct.tp_params** %4, align 8
  %6 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %7 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = load i32, i32* @ISCSI, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %13 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = udiv i32 %14, 8
  %16 = call i32 @ulp_region(%struct.adapter* %9, i32 %10, i32 %11, i32 %15)
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = load i32, i32* @TDDP, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %21 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = udiv i32 %22, 8
  %24 = call i32 @ulp_region(%struct.adapter* %17, i32 %18, i32 %19, i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = load i32, i32* @TPT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %29 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = udiv i32 %30, 4
  %32 = call i32 @ulptx_region(%struct.adapter* %25, i32 %26, i32 %27, i32 %31)
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = load i32, i32* @STAG, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %37 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = udiv i32 %38, 4
  %40 = call i32 @ulp_region(%struct.adapter* %33, i32 %34, i32 %35, i32 %39)
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load i32, i32* @RQ, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %45 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = udiv i32 %46, 4
  %48 = call i32 @ulp_region(%struct.adapter* %41, i32 %42, i32 %43, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = load i32, i32* @PBL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %53 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = udiv i32 %54, 4
  %56 = call i32 @ulptx_region(%struct.adapter* %49, i32 %50, i32 %51, i32 %55)
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @PBL, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tp_params*, %struct.tp_params** %4, align 8
  %61 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = udiv i32 %62, 4
  %64 = call i32 @ulp_region(%struct.adapter* %57, i32 %58, i32 %59, i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* @A_ULPRX_TDDP_TAGMASK, align 4
  %67 = call i32 @t3_write_reg(%struct.adapter* %65, i32 %66, i32 -1)
  ret void
}

declare dso_local i32 @ulp_region(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @ulptx_region(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

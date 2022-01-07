; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_get_dcbx_drv_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_get_dcbx_drv_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.dcbx_features = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.dcbx_features*, i32)* @bnx2x_get_dcbx_drv_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_dcbx_drv_param(%struct.bnx2x* %0, %struct.dcbx_features* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.dcbx_features*, align 8
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.dcbx_features* %1, %struct.dcbx_features** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %8 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %9 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %8, i32 0, i32 2
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @bnx2x_dcbx_get_ap_feature(%struct.bnx2x* %7, i32* %9, i32 %10)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %14 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %13, i32 0, i32 1
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @bnx2x_dcbx_get_pfc_feature(%struct.bnx2x* %12, i32* %14, i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %18 = load %struct.dcbx_features*, %struct.dcbx_features** %5, align 8
  %19 = getelementptr inbounds %struct.dcbx_features, %struct.dcbx_features* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @bnx2x_dcbx_get_ets_feature(%struct.bnx2x* %17, i32* %19, i32 %20)
  ret void
}

declare dso_local i32 @bnx2x_dcbx_get_ap_feature(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_dcbx_get_pfc_feature(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @bnx2x_dcbx_get_ets_feature(%struct.bnx2x*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

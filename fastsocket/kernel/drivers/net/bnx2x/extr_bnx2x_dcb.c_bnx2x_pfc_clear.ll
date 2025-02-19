; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_pfc_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_dcb.c_bnx2x_pfc_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_nig_brb_pfc_port_params = type { i32, i32 }

@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_pfc_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pfc_clear(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_nig_brb_pfc_port_params, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = bitcast %struct.bnx2x_nig_brb_pfc_port_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = getelementptr inbounds %struct.bnx2x_nig_brb_pfc_port_params, %struct.bnx2x_nig_brb_pfc_port_params* %3, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %6)
  %8 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %9
  store i32 %14, i32* %12, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = call i32 @bnx2x_update_pfc(%struct.TYPE_2__* %16, i32* %18, %struct.bnx2x_nig_brb_pfc_port_params* %3)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %21 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_update_pfc(%struct.TYPE_2__*, i32*, %struct.bnx2x_nig_brb_pfc_port_params*) #2

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

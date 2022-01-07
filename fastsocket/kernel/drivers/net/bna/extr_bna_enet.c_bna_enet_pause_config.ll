; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_enet_pause_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_enet_pause_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_enet = type { void (%struct.bnad*)*, %struct.bna_pause_config }
%struct.bnad = type opaque
%struct.bna_pause_config = type { i32 }
%struct.bnad.0 = type opaque

@ENET_E_PAUSE_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_enet_pause_config(%struct.bna_enet* %0, %struct.bna_pause_config* %1, void (%struct.bnad.0*)* %2) #0 {
  %4 = alloca %struct.bna_enet*, align 8
  %5 = alloca %struct.bna_pause_config*, align 8
  %6 = alloca void (%struct.bnad.0*)*, align 8
  store %struct.bna_enet* %0, %struct.bna_enet** %4, align 8
  store %struct.bna_pause_config* %1, %struct.bna_pause_config** %5, align 8
  store void (%struct.bnad.0*)* %2, void (%struct.bnad.0*)** %6, align 8
  %7 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %8 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %7, i32 0, i32 1
  %9 = load %struct.bna_pause_config*, %struct.bna_pause_config** %5, align 8
  %10 = bitcast %struct.bna_pause_config* %8 to i8*
  %11 = bitcast %struct.bna_pause_config* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load void (%struct.bnad.0*)*, void (%struct.bnad.0*)** %6, align 8
  %13 = bitcast void (%struct.bnad.0*)* %12 to void (%struct.bnad*)*
  %14 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %15 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %14, i32 0, i32 0
  store void (%struct.bnad*)* %13, void (%struct.bnad*)** %15, align 8
  %16 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %17 = load i32, i32* @ENET_E_PAUSE_CFG, align 4
  %18 = call i32 @bfa_fsm_send_event(%struct.bna_enet* %16, i32 %17)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_enet*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

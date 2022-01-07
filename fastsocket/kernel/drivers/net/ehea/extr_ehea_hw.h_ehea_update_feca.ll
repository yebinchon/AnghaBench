; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_hw.h_ehea_update_feca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_hw.h_ehea_update_feca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.h_epa }
%struct.h_epa = type { i32 }

@cqx_feca = common dso_local global i32 0, align 4
@CQX_FECADDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_cq*, i32)* @ehea_update_feca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_update_feca(%struct.ehea_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.h_epa, align 4
  store %struct.ehea_cq* %0, %struct.ehea_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ehea_cq*, %struct.ehea_cq** %3, align 8
  %7 = getelementptr inbounds %struct.ehea_cq, %struct.ehea_cq* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = bitcast %struct.h_epa* %5 to i8*
  %10 = bitcast %struct.h_epa* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load i32, i32* @cqx_feca, align 4
  %12 = call i32 @CQTEMM_OFFSET(i32 %11)
  %13 = load i32, i32* @CQX_FECADDER, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @EHEA_BMASK_SET(i32 %13, i32 %14)
  %16 = getelementptr inbounds %struct.h_epa, %struct.h_epa* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @epa_store_acc(i32 %17, i32 %12, i32 %15)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @epa_store_acc(i32, i32, i32) #2

declare dso_local i32 @CQTEMM_OFFSET(i32) #2

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

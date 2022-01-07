; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hipz_fns_core.h_hipz_update_feca.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_hipz_fns_core.h_hipz_update_feca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@cqx_feca = common dso_local global i32 0, align 4
@CQX_FECADDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehca_cq*, i32)* @hipz_update_feca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hipz_update_feca(%struct.ehca_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ehca_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.ehca_cq* %0, %struct.ehca_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ehca_cq*, %struct.ehca_cq** %3, align 8
  %6 = getelementptr inbounds %struct.ehca_cq, %struct.ehca_cq* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @cqx_feca, align 4
  %10 = load i32, i32* @CQX_FECADDER, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @EHCA_BMASK_SET(i32 %10, i32 %11)
  %13 = call i32 @hipz_galpa_store_cq(i32 %8, i32 %9, i32 %12)
  ret void
}

declare dso_local i32 @hipz_galpa_store_cq(i32, i32, i32) #1

declare dso_local i32 @EHCA_BMASK_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

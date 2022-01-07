; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_rq_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_fnic_res.h_fnic_queue_rq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32 }
%struct.rq_enet_desc = type { i32 }

@VNIC_PADDR_TARGET = common dso_local global i32 0, align 4
@RQ_ENET_TYPE_ONLY_SOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_rq*, i8*, i64, i64)* @fnic_queue_rq_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_queue_rq_desc(%struct.vnic_rq* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vnic_rq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rq_enet_desc*, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %11 = call %struct.rq_enet_desc* @vnic_rq_next_desc(%struct.vnic_rq* %10)
  store %struct.rq_enet_desc* %11, %struct.rq_enet_desc** %9, align 8
  %12 = load %struct.rq_enet_desc*, %struct.rq_enet_desc** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @VNIC_PADDR_TARGET, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RQ_ENET_TYPE_ONLY_SOP, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @rq_enet_desc_enc(%struct.rq_enet_desc* %12, i32 %16, i32 %17, i64 %18)
  %20 = load %struct.vnic_rq*, %struct.vnic_rq** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @vnic_rq_post(%struct.vnic_rq* %20, i8* %21, i32 0, i64 %22, i64 %23)
  ret void
}

declare dso_local %struct.rq_enet_desc* @vnic_rq_next_desc(%struct.vnic_rq*) #1

declare dso_local i32 @rq_enet_desc_enc(%struct.rq_enet_desc*, i32, i32, i64) #1

declare dso_local i32 @vnic_rq_post(%struct.vnic_rq*, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

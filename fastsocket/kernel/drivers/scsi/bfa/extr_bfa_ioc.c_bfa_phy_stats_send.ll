; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_stats_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_phy_stats_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_phy_s = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_phy_stats_req_s = type { i32, i32, i32 }

@BFI_MC_PHY = common dso_local global i32 0, align 4
@BFI_PHY_H2I_STATS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_phy_stats_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_phy_stats_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_phy_s*, align 8
  %4 = alloca %struct.bfi_phy_stats_req_s*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_phy_s*
  store %struct.bfa_phy_s* %6, %struct.bfa_phy_s** %3, align 8
  %7 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.bfi_phy_stats_req_s*
  store %struct.bfi_phy_stats_req_s* %11, %struct.bfi_phy_stats_req_s** %4, align 8
  %12 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.bfi_phy_stats_req_s*, %struct.bfi_phy_stats_req_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfi_phy_stats_req_s, %struct.bfi_phy_stats_req_s* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bfi_phy_stats_req_s*, %struct.bfi_phy_stats_req_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_phy_stats_req_s, %struct.bfi_phy_stats_req_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BFI_MC_PHY, align 4
  %21 = load i32, i32* @BFI_PHY_H2I_STATS_REQ, align 4
  %22 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @bfa_ioc_portid(i32 %24)
  %26 = call i32 @bfi_h2i_set(i32 %19, i32 %20, i32 %21, i32 %25)
  %27 = load %struct.bfi_phy_stats_req_s*, %struct.bfi_phy_stats_req_s** %4, align 8
  %28 = getelementptr inbounds %struct.bfi_phy_stats_req_s, %struct.bfi_phy_stats_req_s* %27, i32 0, i32 0
  %29 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bfa_alen_set(i32* %28, i32 4, i32 %31)
  %33 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bfa_phy_s*, %struct.bfa_phy_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_phy_s, %struct.bfa_phy_s* %36, i32 0, i32 0
  %38 = call i32 @bfa_ioc_mbox_queue(i32 %35, %struct.TYPE_2__* %37)
  ret void
}

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_ioc_portid(i32) #1

declare dso_local i32 @bfa_alen_set(i32*, i32, i32) #1

declare dso_local i32 @bfa_ioc_mbox_queue(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

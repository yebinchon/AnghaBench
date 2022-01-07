; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_attr_get_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bna_enet.c_bna_bfi_attr_get_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ioceth = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i8*, i8*, i8* }
%struct.bfi_msgq_mhdr = type { i32 }
%struct.bfi_enet_attr_rsp = type { i32, i32, i32 }

@BFI_ENET_MAX_MCAM = common dso_local global i32 0, align 4
@IOCETH_E_ENET_ATTR_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ioceth*, %struct.bfi_msgq_mhdr*)* @bna_bfi_attr_get_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_attr_get_rsp(%struct.bna_ioceth* %0, %struct.bfi_msgq_mhdr* %1) #0 {
  %3 = alloca %struct.bna_ioceth*, align 8
  %4 = alloca %struct.bfi_msgq_mhdr*, align 8
  %5 = alloca %struct.bfi_enet_attr_rsp*, align 8
  store %struct.bna_ioceth* %0, %struct.bna_ioceth** %3, align 8
  store %struct.bfi_msgq_mhdr* %1, %struct.bfi_msgq_mhdr** %4, align 8
  %6 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %4, align 8
  %7 = bitcast %struct.bfi_msgq_mhdr* %6 to %struct.bfi_enet_attr_rsp*
  store %struct.bfi_enet_attr_rsp* %7, %struct.bfi_enet_attr_rsp** %5, align 8
  %8 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %9 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %2
  %14 = load %struct.bfi_enet_attr_rsp*, %struct.bfi_enet_attr_rsp** %5, align 8
  %15 = getelementptr inbounds %struct.bfi_enet_attr_rsp, %struct.bfi_enet_attr_rsp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @ntohl(i32 %16)
  %18 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %19 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i8* %17, i8** %20, align 8
  %21 = load %struct.bfi_enet_attr_rsp*, %struct.bfi_enet_attr_rsp** %5, align 8
  %22 = getelementptr inbounds %struct.bfi_enet_attr_rsp, %struct.bfi_enet_attr_rsp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @ntohl(i32 %23)
  %25 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %26 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i8* %24, i8** %27, align 8
  %28 = load %struct.bfi_enet_attr_rsp*, %struct.bfi_enet_attr_rsp** %5, align 8
  %29 = getelementptr inbounds %struct.bfi_enet_attr_rsp, %struct.bfi_enet_attr_rsp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %33 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i8* %31, i8** %34, align 8
  %35 = load i32, i32* @BFI_ENET_MAX_MCAM, align 4
  %36 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %37 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load %struct.bfi_enet_attr_rsp*, %struct.bfi_enet_attr_rsp** %5, align 8
  %40 = getelementptr inbounds %struct.bfi_enet_attr_rsp, %struct.bfi_enet_attr_rsp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @ntohl(i32 %41)
  %43 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %44 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %47 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %13, %2
  %50 = load %struct.bna_ioceth*, %struct.bna_ioceth** %3, align 8
  %51 = load i32, i32* @IOCETH_E_ENET_ATTR_RESP, align 4
  %52 = call i32 @bfa_fsm_send_event(%struct.bna_ioceth* %50, i32 %51)
  ret void
}

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ioceth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

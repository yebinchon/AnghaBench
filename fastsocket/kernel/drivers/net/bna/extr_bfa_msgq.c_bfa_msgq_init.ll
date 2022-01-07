; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq = type { %struct.TYPE_18__, i32, %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.bfi_msgq_cfg_req = type { %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@BFI_MC_MSGQ = common dso_local global i32 0, align 4
@BFI_MSGQ_H2I_INIT_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_msgq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_msgq*, align 8
  %4 = alloca %struct.bfi_msgq_cfg_req*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_msgq*
  store %struct.bfa_msgq* %6, %struct.bfa_msgq** %3, align 8
  %7 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = bitcast i32* %11 to %struct.bfi_msgq_cfg_req*
  store %struct.bfi_msgq_cfg_req* %12, %struct.bfi_msgq_cfg_req** %4, align 8
  %13 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %14 = call i32 @memset(%struct.bfi_msgq_cfg_req* %13, i32 0, i32 40)
  %15 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %16 = getelementptr inbounds %struct.bfi_msgq_cfg_req, %struct.bfi_msgq_cfg_req* %15, i32 0, i32 2
  %17 = load i32, i32* @BFI_MC_MSGQ, align 4
  %18 = load i32, i32* @BFI_MSGQ_H2I_INIT_REQ, align 4
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bfi_h2i_set(i64 %21, i32 %17, i32 %18, i32 0)
  %23 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %24 = getelementptr inbounds %struct.bfi_msgq_cfg_req, %struct.bfi_msgq_cfg_req* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %28 = getelementptr inbounds %struct.bfi_msgq_cfg_req, %struct.bfi_msgq_cfg_req* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bfa_dma_be_addr_set(i32 %30, i32 %35)
  %37 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %38 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @htons(i32 %40)
  %42 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %43 = getelementptr inbounds %struct.bfi_msgq_cfg_req, %struct.bfi_msgq_cfg_req* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_msgq_cfg_req, %struct.bfi_msgq_cfg_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bfa_dma_be_addr_set(i32 %48, i32 %53)
  %55 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @htons(i32 %58)
  %60 = load %struct.bfi_msgq_cfg_req*, %struct.bfi_msgq_cfg_req** %4, align 8
  %61 = getelementptr inbounds %struct.bfi_msgq_cfg_req, %struct.bfi_msgq_cfg_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.bfa_msgq*, %struct.bfa_msgq** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_msgq, %struct.bfa_msgq* %66, i32 0, i32 0
  %68 = call i32 @bfa_nw_ioc_mbox_queue(i32 %65, %struct.TYPE_18__* %67, i32* null, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.bfi_msgq_cfg_req*, i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i64, i32, i32, i32) #1

declare dso_local i32 @bfa_dma_be_addr_set(i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bfa_nw_ioc_mbox_queue(i32, %struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_rspq_pi_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_msgq.c_bfa_msgq_rspq_pi_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_rspq = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 (i32, %struct.bfi_msgq_mhdr*)* }
%struct.bfi_msgq_mhdr = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.bfi_mbmsg = type { i32 }
%struct.bfi_msgq_i2h_db = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BFI_MSGQ_RSP_ENTRY_SIZE = common dso_local global i32 0, align 4
@BFI_MC_MAX = common dso_local global i32 0, align 4
@RSPQ_E_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_rspq*, %struct.bfi_mbmsg*)* @bfa_msgq_rspq_pi_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_msgq_rspq_pi_update(%struct.bfa_msgq_rspq* %0, %struct.bfi_mbmsg* %1) #0 {
  %3 = alloca %struct.bfa_msgq_rspq*, align 8
  %4 = alloca %struct.bfi_mbmsg*, align 8
  %5 = alloca %struct.bfi_msgq_i2h_db*, align 8
  %6 = alloca %struct.bfi_msgq_mhdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bfa_msgq_rspq* %0, %struct.bfa_msgq_rspq** %3, align 8
  store %struct.bfi_mbmsg* %1, %struct.bfi_mbmsg** %4, align 8
  %10 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %11 = bitcast %struct.bfi_mbmsg* %10 to %struct.bfi_msgq_i2h_db*
  store %struct.bfi_msgq_i2h_db* %11, %struct.bfi_msgq_i2h_db** %5, align 8
  %12 = load %struct.bfi_msgq_i2h_db*, %struct.bfi_msgq_i2h_db** %5, align 8
  %13 = getelementptr inbounds %struct.bfi_msgq_i2h_db, %struct.bfi_msgq_i2h_db* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @ntohs(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %66, %2
  %21 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %20
  %29 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %30 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BFI_MSGQ_RSP_ENTRY_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32*, i32** %9, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = bitcast i32* %42 to %struct.bfi_msgq_mhdr*
  store %struct.bfi_msgq_mhdr* %43, %struct.bfi_msgq_mhdr** %6, align 8
  %44 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %6, align 8
  %45 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %6, align 8
  %48 = getelementptr inbounds %struct.bfi_msgq_mhdr, %struct.bfi_msgq_mhdr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ntohs(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BFI_MC_MAX, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %28
  %56 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %57 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32 (i32, %struct.bfi_msgq_mhdr*)*, i32 (i32, %struct.bfi_msgq_mhdr*)** %62, align 8
  %64 = icmp eq i32 (i32, %struct.bfi_msgq_mhdr*)* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %55, %28
  br label %93

66:                                               ; preds = %55
  %67 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %68 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32 (i32, %struct.bfi_msgq_mhdr*)*, i32 (i32, %struct.bfi_msgq_mhdr*)** %73, align 8
  %75 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %76 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.bfi_msgq_mhdr*, %struct.bfi_msgq_mhdr** %6, align 8
  %84 = call i32 %74(i32 %82, %struct.bfi_msgq_mhdr* %83)
  %85 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %86 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %90 = getelementptr inbounds %struct.bfa_msgq_rspq, %struct.bfa_msgq_rspq* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @BFA_MSGQ_INDX_ADD(i32 %87, i32 %88, i32 %91)
  br label %20

93:                                               ; preds = %65, %20
  %94 = load %struct.bfa_msgq_rspq*, %struct.bfa_msgq_rspq** %3, align 8
  %95 = load i32, i32* @RSPQ_E_RESP, align 4
  %96 = call i32 @bfa_fsm_send_event(%struct.bfa_msgq_rspq* %94, i32 %95)
  ret void
}

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @BFA_MSGQ_INDX_ADD(i32, i32, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_msgq_rspq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

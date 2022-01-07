; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_uf_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_uf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i64, i32 }
%struct.bfi_uf_frm_rcvd_s = type { i64, i32, i32 }
%struct.bfa_uf_mod_s = type { %struct.bfa_uf_s* }
%struct.bfa_uf_s = type { i32, i32, i32*, i32, i32 }
%struct.bfa_uf_buf_s = type { i32* }
%struct.fchs_s = type { i32 }

@BFA_PL_MID_HAL_UF = common dso_local global i32 0, align 4
@BFA_PL_EID_RX = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, %struct.bfi_uf_frm_rcvd_s*)* @uf_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uf_recv(%struct.bfa_s* %0, %struct.bfi_uf_frm_rcvd_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_uf_frm_rcvd_s*, align 8
  %5 = alloca %struct.bfa_uf_mod_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfa_uf_s*, align 8
  %8 = alloca %struct.bfa_uf_buf_s*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fchs_s*, align 8
  %11 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_uf_frm_rcvd_s* %1, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %12 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %13 = call %struct.bfa_uf_mod_s* @BFA_UF_MOD(%struct.bfa_s* %12)
  store %struct.bfa_uf_mod_s* %13, %struct.bfa_uf_mod_s** %5, align 8
  %14 = load %struct.bfi_uf_frm_rcvd_s*, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfi_uf_frm_rcvd_s, %struct.bfi_uf_frm_rcvd_s* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_uf_mod_s, %struct.bfa_uf_mod_s* %17, i32 0, i32 0
  %19 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %19, i64 %20
  store %struct.bfa_uf_s* %21, %struct.bfa_uf_s** %7, align 8
  %22 = load %struct.bfa_uf_mod_s*, %struct.bfa_uf_mod_s** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %25 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @bfa_mem_get_dmabuf_kva(%struct.bfa_uf_mod_s* %22, i64 %23, i32 %26)
  %28 = inttoptr i64 %27 to %struct.bfa_uf_buf_s*
  store %struct.bfa_uf_buf_s* %28, %struct.bfa_uf_buf_s** %8, align 8
  %29 = load %struct.bfa_uf_buf_s*, %struct.bfa_uf_buf_s** %8, align 8
  %30 = getelementptr inbounds %struct.bfa_uf_buf_s, %struct.bfa_uf_buf_s* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32* %32, i32** %9, align 8
  %33 = load %struct.bfi_uf_frm_rcvd_s*, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfi_uf_frm_rcvd_s, %struct.bfi_uf_frm_rcvd_s* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @be16_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.bfi_uf_frm_rcvd_s*, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %39 = getelementptr inbounds %struct.bfi_uf_frm_rcvd_s, %struct.bfi_uf_frm_rcvd_s* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bfi_uf_frm_rcvd_s*, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %41 = getelementptr inbounds %struct.bfi_uf_frm_rcvd_s, %struct.bfi_uf_frm_rcvd_s* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @be16_to_cpu(i32 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.bfi_uf_frm_rcvd_s*, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_uf_frm_rcvd_s, %struct.bfi_uf_frm_rcvd_s* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bfa_uf_buf_s*, %struct.bfa_uf_buf_s** %8, align 8
  %48 = bitcast %struct.bfa_uf_buf_s* %47 to %struct.fchs_s*
  store %struct.fchs_s* %48, %struct.fchs_s** %10, align 8
  %49 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %50 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %49, i32 0, i32 3
  %51 = call i32 @list_del(i32* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %54 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.bfi_uf_frm_rcvd_s*, %struct.bfi_uf_frm_rcvd_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfi_uf_frm_rcvd_s, %struct.bfi_uf_frm_rcvd_s* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %59 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %61 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %63, 4
  %65 = zext i1 %64 to i32
  %66 = call i32 @WARN_ON(i32 %65)
  %67 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %68 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %84

72:                                               ; preds = %2
  %73 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %74 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @BFA_PL_MID_HAL_UF, align 4
  %77 = load i32, i32* @BFA_PL_EID_RX, align 4
  %78 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %79 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = bitcast i32* %81 to %struct.fchs_s*
  %83 = call i32 @bfa_plog_fchdr(i32 %75, i32 %76, i32 %77, i32 %80, %struct.fchs_s* %82)
  br label %100

84:                                               ; preds = %2
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BFA_PL_MID_HAL_UF, align 4
  %92 = load i32, i32* @BFA_PL_EID_RX, align 4
  %93 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %94 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = bitcast i32* %96 to %struct.fchs_s*
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @bfa_plog_fchdr_and_pl(i32 %90, i32 %91, i32 %92, i32 %95, %struct.fchs_s* %97, i32 %98)
  br label %100

100:                                              ; preds = %84, %72
  %101 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %102 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %107 = load i32, i32* @BFA_TRUE, align 4
  %108 = call i32 @__bfa_cb_uf_recv(%struct.bfa_uf_s* %106, i32 %107)
  br label %115

109:                                              ; preds = %100
  %110 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %111 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %112 = getelementptr inbounds %struct.bfa_uf_s, %struct.bfa_uf_s* %111, i32 0, i32 1
  %113 = load %struct.bfa_uf_s*, %struct.bfa_uf_s** %7, align 8
  %114 = call i32 @bfa_cb_queue(%struct.bfa_s* %110, i32* %112, i32 (%struct.bfa_uf_s*, i32)* @__bfa_cb_uf_recv, %struct.bfa_uf_s* %113)
  br label %115

115:                                              ; preds = %109, %105
  ret void
}

declare dso_local %struct.bfa_uf_mod_s* @BFA_UF_MOD(%struct.bfa_s*) #1

declare dso_local i64 @bfa_mem_get_dmabuf_kva(%struct.bfa_uf_mod_s*, i64, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_plog_fchdr(i32, i32, i32, i32, %struct.fchs_s*) #1

declare dso_local i32 @bfa_plog_fchdr_and_pl(i32, i32, i32, i32, %struct.fchs_s*, i32) #1

declare dso_local i32 @__bfa_cb_uf_recv(%struct.bfa_uf_s*, i32) #1

declare dso_local i32 @bfa_cb_queue(%struct.bfa_s*, i32*, i32 (%struct.bfa_uf_s*, i32)*, %struct.bfa_uf_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

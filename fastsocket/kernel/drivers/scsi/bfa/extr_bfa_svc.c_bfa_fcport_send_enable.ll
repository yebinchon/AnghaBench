; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_send_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_send_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, i32, i32, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bfi_fcport_enable_req_s = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BFA_REQQ_PORT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_FCPORT = common dso_local global i32 0, align 4
@BFI_FCPORT_H2I_ENABLE_REQ = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_fcport_s*)* @bfa_fcport_send_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_fcport_send_enable(%struct.bfa_fcport_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca %struct.bfi_fcport_enable_req_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  %5 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BFA_REQQ_PORT, align 4
  %13 = call %struct.bfi_fcport_enable_req_s* @bfa_reqq_next(i32 %11, i32 %12)
  store %struct.bfi_fcport_enable_req_s* %13, %struct.bfi_fcport_enable_req_s** %4, align 8
  %14 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %15 = icmp ne %struct.bfi_fcport_enable_req_s* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BFA_REQQ_PORT, align 4
  %21 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %21, i32 0, i32 7
  %23 = call i32 @bfa_reqq_wait(i32 %19, i32 %20, i32* %22)
  %24 = load i32, i32* @BFA_FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %1
  %26 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BFI_MC_FCPORT, align 4
  %30 = load i32, i32* @BFI_FCPORT_H2I_ENABLE_REQ, align 4
  %31 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bfa_fn_lpu(i32 %33)
  %35 = call i32 @bfi_h2i_set(i32 %28, i32 %29, i32 %30, i32 %34)
  %36 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %45 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %46, i32 0, i32 3
  %48 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %48, i32 0, i32 3
  %50 = bitcast %struct.TYPE_4__* %47 to i8*
  %51 = bitcast %struct.TYPE_4__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %56 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cpu_to_be16(i32 %60)
  %62 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %63 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %69 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %71 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %70, i32 0, i32 1
  %72 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %73 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %76 = bitcast %struct.TYPE_5__* %75 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = call i32 @bfa_dma_be_addr_set(i64 %77, i32 %74)
  %79 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %83 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bfa_trc(i32 %81, i32 %86)
  %88 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %92 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @bfa_trc(i32 %90, i32 %95)
  %97 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %98 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @BFA_REQQ_PORT, align 4
  %101 = load %struct.bfi_fcport_enable_req_s*, %struct.bfi_fcport_enable_req_s** %4, align 8
  %102 = getelementptr inbounds %struct.bfi_fcport_enable_req_s, %struct.bfi_fcport_enable_req_s* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @bfa_reqq_produce(i32 %99, i32 %100, i32 %103)
  %105 = load i32, i32* @BFA_TRUE, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %25, %16
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.bfi_fcport_enable_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_dma_be_addr_set(i64, i32) #1

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

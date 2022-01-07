; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcxp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcxp_s = type { i32, i32, i32, i8*, i64, %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_req_info_s, %struct.TYPE_2__* }
%struct.bfa_fcxp_rsp_info_s = type { i8*, i8* }
%struct.bfa_fcxp_req_info_s = type { i32, i8*, %struct.fchs_s, i32, i8*, i32, %struct.bfa_rport_s* }
%struct.fchs_s = type { i32 }
%struct.TYPE_2__ = type { %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.bfa_rport_s = type { i32 }
%struct.bfi_fcxp_send_req_s = type { i32 }

@bfa_fcxp_null_comp = common dso_local global i64 0, align 8
@BFA_REQQ_FCXP = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcxp_send(%struct.bfa_fcxp_s* %0, %struct.bfa_rport_s* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, %struct.fchs_s* %7, i64 %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca %struct.bfa_fcxp_s*, align 8
  %14 = alloca %struct.bfa_rport_s*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.fchs_s*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.bfa_s*, align 8
  %26 = alloca %struct.bfa_fcxp_req_info_s*, align 8
  %27 = alloca %struct.bfa_fcxp_rsp_info_s*, align 8
  %28 = alloca %struct.bfi_fcxp_send_req_s*, align 8
  store %struct.bfa_fcxp_s* %0, %struct.bfa_fcxp_s** %13, align 8
  store %struct.bfa_rport_s* %1, %struct.bfa_rport_s** %14, align 8
  store i32 %2, i32* %15, align 4
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store %struct.fchs_s* %7, %struct.fchs_s** %20, align 8
  store i64 %8, i64* %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  store i8* %11, i8** %24, align 8
  %29 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %30 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %29, i32 0, i32 7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.bfa_s*, %struct.bfa_s** %32, align 8
  store %struct.bfa_s* %33, %struct.bfa_s** %25, align 8
  %34 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %35 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %34, i32 0, i32 6
  store %struct.bfa_fcxp_req_info_s* %35, %struct.bfa_fcxp_req_info_s** %26, align 8
  %36 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %37 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %36, i32 0, i32 5
  store %struct.bfa_fcxp_rsp_info_s* %37, %struct.bfa_fcxp_rsp_info_s** %27, align 8
  %38 = load %struct.bfa_s*, %struct.bfa_s** %25, align 8
  %39 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %40 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @bfa_trc(%struct.bfa_s* %38, i32 %41)
  %43 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %14, align 8
  %44 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %45 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %44, i32 0, i32 6
  store %struct.bfa_rport_s* %43, %struct.bfa_rport_s** %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %48 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %51 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %54 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i8*, i8** %24, align 8
  %56 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %27, align 8
  %57 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %60 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %62 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %61, i32 0, i32 2
  %63 = load %struct.fchs_s*, %struct.fchs_s** %20, align 8
  %64 = bitcast %struct.fchs_s* %62 to i8*
  %65 = bitcast %struct.fchs_s* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load i8*, i8** %19, align 8
  %67 = load %struct.bfa_fcxp_req_info_s*, %struct.bfa_fcxp_req_info_s** %26, align 8
  %68 = getelementptr inbounds %struct.bfa_fcxp_req_info_s, %struct.bfa_fcxp_req_info_s* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %23, align 8
  %70 = load %struct.bfa_fcxp_rsp_info_s*, %struct.bfa_fcxp_rsp_info_s** %27, align 8
  %71 = getelementptr inbounds %struct.bfa_fcxp_rsp_info_s, %struct.bfa_fcxp_rsp_info_s* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %21, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %12
  %75 = load i64, i64* %21, align 8
  br label %78

76:                                               ; preds = %12
  %77 = load i64, i64* @bfa_fcxp_null_comp, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i64 [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %81 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %84 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.bfa_s*, %struct.bfa_s** %25, align 8
  %86 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %87 = call %struct.bfi_fcxp_send_req_s* @bfa_reqq_next(%struct.bfa_s* %85, i32 %86)
  store %struct.bfi_fcxp_send_req_s* %87, %struct.bfi_fcxp_send_req_s** %28, align 8
  %88 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %28, align 8
  %89 = icmp ne %struct.bfi_fcxp_send_req_s* %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %78
  %91 = load %struct.bfa_s*, %struct.bfa_s** %25, align 8
  %92 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %93 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bfa_trc(%struct.bfa_s* %91, i32 %94)
  %96 = load i32, i32* @BFA_TRUE, align 4
  %97 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %98 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.bfa_s*, %struct.bfa_s** %25, align 8
  %100 = load i32, i32* @BFA_REQQ_FCXP, align 4
  %101 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %102 = getelementptr inbounds %struct.bfa_fcxp_s, %struct.bfa_fcxp_s* %101, i32 0, i32 0
  %103 = call i32 @bfa_reqq_wait(%struct.bfa_s* %99, i32 %100, i32* %102)
  br label %108

104:                                              ; preds = %78
  %105 = load %struct.bfa_fcxp_s*, %struct.bfa_fcxp_s** %13, align 8
  %106 = load %struct.bfi_fcxp_send_req_s*, %struct.bfi_fcxp_send_req_s** %28, align 8
  %107 = call i32 @bfa_fcxp_queue(%struct.bfa_fcxp_s* %105, %struct.bfi_fcxp_send_req_s* %106)
  br label %108

108:                                              ; preds = %104, %90
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.bfi_fcxp_send_req_s* @bfa_reqq_next(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_reqq_wait(%struct.bfa_s*, i32, i32*) #1

declare dso_local i32 @bfa_fcxp_queue(%struct.bfa_fcxp_s*, %struct.bfi_fcxp_send_req_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

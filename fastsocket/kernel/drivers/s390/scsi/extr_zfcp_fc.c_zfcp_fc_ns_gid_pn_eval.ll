; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_eval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_gid_pn_data = type { %struct.zfcp_port*, %struct.zfcp_send_ct }
%struct.zfcp_port = type { i64, i32 }
%struct.zfcp_send_ct = type { i64, i32, i32 }
%struct.ct_iu_gid_pn_req = type { i64 }
%struct.ct_iu_gid_pn_resp = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ZFCP_CT_ACCEPT = common dso_local global i64 0, align 8
@ZFCP_DID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @zfcp_fc_ns_gid_pn_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_ns_gid_pn_eval(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.zfcp_gid_pn_data*, align 8
  %4 = alloca %struct.zfcp_send_ct*, align 8
  %5 = alloca %struct.ct_iu_gid_pn_req*, align 8
  %6 = alloca %struct.ct_iu_gid_pn_resp*, align 8
  %7 = alloca %struct.zfcp_port*, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.zfcp_gid_pn_data*
  store %struct.zfcp_gid_pn_data* %9, %struct.zfcp_gid_pn_data** %3, align 8
  %10 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %10, i32 0, i32 1
  store %struct.zfcp_send_ct* %11, %struct.zfcp_send_ct** %4, align 8
  %12 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @sg_virt(i32 %14)
  %16 = bitcast i8* %15 to %struct.ct_iu_gid_pn_req*
  store %struct.ct_iu_gid_pn_req* %16, %struct.ct_iu_gid_pn_req** %5, align 8
  %17 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @sg_virt(i32 %19)
  %21 = bitcast i8* %20 to %struct.ct_iu_gid_pn_resp*
  store %struct.ct_iu_gid_pn_resp* %21, %struct.ct_iu_gid_pn_resp** %6, align 8
  %22 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %3, align 8
  %23 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %22, i32 0, i32 0
  %24 = load %struct.zfcp_port*, %struct.zfcp_port** %23, align 8
  store %struct.zfcp_port* %24, %struct.zfcp_port** %7, align 8
  %25 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %55

30:                                               ; preds = %1
  %31 = load %struct.ct_iu_gid_pn_resp*, %struct.ct_iu_gid_pn_resp** %6, align 8
  %32 = getelementptr inbounds %struct.ct_iu_gid_pn_resp, %struct.ct_iu_gid_pn_resp* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ZFCP_CT_ACCEPT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %55

38:                                               ; preds = %30
  %39 = load %struct.ct_iu_gid_pn_req*, %struct.ct_iu_gid_pn_req** %5, align 8
  %40 = getelementptr inbounds %struct.ct_iu_gid_pn_req, %struct.ct_iu_gid_pn_req* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %43 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %55

47:                                               ; preds = %38
  %48 = load %struct.ct_iu_gid_pn_resp*, %struct.ct_iu_gid_pn_resp** %6, align 8
  %49 = getelementptr inbounds %struct.ct_iu_gid_pn_resp, %struct.ct_iu_gid_pn_resp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ZFCP_DID_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.zfcp_port*, %struct.zfcp_port** %7, align 8
  %54 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %46, %37, %29
  ret void
}

declare dso_local i8* @sg_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

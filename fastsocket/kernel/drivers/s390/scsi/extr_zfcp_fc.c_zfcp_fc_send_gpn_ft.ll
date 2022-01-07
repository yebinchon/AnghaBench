; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_send_gpn_ft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_send_gpn_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_gpn_ft = type { i32, i32, %struct.zfcp_send_ct }
%struct.zfcp_send_ct = type { i64, i32, i32*, i32, i32* }
%struct.zfcp_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ct_iu_gpn_ft_req = type { i32, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.zfcp_fc_ns_handler_data = type { i32, i32* }

@ZFCP_CT_REVISION = common dso_local global i32 0, align 4
@ZFCP_CT_DIRECTORY_SERVICE = common dso_local global i32 0, align 4
@ZFCP_CT_NAME_SERVER = common dso_local global i32 0, align 4
@ZFCP_CT_SYNCHRONOUS = common dso_local global i32 0, align 4
@ZFCP_CT_GPN_FT = common dso_local global i32 0, align 4
@ZFCP_CT_SCSI_FCP = common dso_local global i32 0, align 4
@zfcp_fc_ns_handler = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_gpn_ft*, %struct.zfcp_adapter*, i32)* @zfcp_fc_send_gpn_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_send_gpn_ft(%struct.zfcp_gpn_ft* %0, %struct.zfcp_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_gpn_ft*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_send_ct*, align 8
  %8 = alloca %struct.ct_iu_gpn_ft_req*, align 8
  %9 = alloca %struct.zfcp_fc_ns_handler_data, align 8
  %10 = alloca i32, align 4
  store %struct.zfcp_gpn_ft* %0, %struct.zfcp_gpn_ft** %4, align 8
  store %struct.zfcp_adapter* %1, %struct.zfcp_adapter** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %11, i32 0, i32 2
  store %struct.zfcp_send_ct* %12, %struct.zfcp_send_ct** %7, align 8
  %13 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %14 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %13, i32 0, i32 1
  %15 = call %struct.ct_iu_gpn_ft_req* @sg_virt(i32* %14)
  store %struct.ct_iu_gpn_ft_req* %15, %struct.ct_iu_gpn_ft_req** %8, align 8
  %16 = load i32, i32* @ZFCP_CT_REVISION, align 4
  %17 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %18 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @ZFCP_CT_DIRECTORY_SERVICE, align 4
  %21 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %22 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  store i32 %20, i32* %23, align 8
  %24 = load i32, i32* @ZFCP_CT_NAME_SERVER, align 4
  %25 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %26 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @ZFCP_CT_SYNCHRONOUS, align 4
  %29 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %30 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @ZFCP_CT_GPN_FT, align 4
  %33 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %34 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 %36, 4
  %38 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %39 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %42 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %44 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %46 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @ZFCP_CT_SCSI_FCP, align 4
  %48 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %8, align 8
  %49 = getelementptr inbounds %struct.ct_iu_gpn_ft_req, %struct.ct_iu_gpn_ft_req* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %7, align 8
  %55 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  %56 = load i32, i32* @zfcp_fc_ns_handler, align 4
  %57 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %7, align 8
  %58 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = ptrtoint %struct.zfcp_fc_ns_handler_data* %9 to i64
  %60 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %7, align 8
  %61 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %63 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %62, i32 0, i32 1
  %64 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %7, align 8
  %65 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %67 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %7, align 8
  %70 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %9, i32 0, i32 0
  %72 = call i32 @init_completion(i32* %71)
  %73 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %9, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %7, align 8
  %75 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %76 = call i32 @zfcp_fsf_send_ct(%struct.zfcp_send_ct* %74, i32* null, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %3
  %80 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %9, i32 0, i32 0
  %81 = call i32 @wait_for_completion(i32* %80)
  br label %82

82:                                               ; preds = %79, %3
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local %struct.ct_iu_gpn_ft_req* @sg_virt(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_send_ct(%struct.zfcp_send_ct*, i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ns_gid_pn_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.zfcp_gid_pn_data = type { %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_10__, i32, i32, %struct.zfcp_port* }
%struct.TYPE_9__ = type { i64, i32*, i32*, i32, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.zfcp_fc_ns_handler_data = type { i64, i32, i32 }

@zfcp_fc_ns_handler = common dso_local global i32 0, align 4
@ZFCP_CT_REVISION = common dso_local global i32 0, align 4
@ZFCP_CT_DIRECTORY_SERVICE = common dso_local global i32 0, align 4
@ZFCP_CT_NAME_SERVER = common dso_local global i32 0, align 4
@ZFCP_CT_SYNCHRONOUS = common dso_local global i32 0, align 4
@ZFCP_CT_GID_PN = common dso_local global i32 0, align 4
@ZFCP_CT_SIZE_ONE_PAGE = common dso_local global i32 0, align 4
@zfcp_fc_ns_gid_pn_eval = common dso_local global i32 0, align 4
@ZFCP_FC_CTELS_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_port*, %struct.zfcp_gid_pn_data*)* @zfcp_fc_ns_gid_pn_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fc_ns_gid_pn_request(%struct.zfcp_port* %0, %struct.zfcp_gid_pn_data* %1) #0 {
  %3 = alloca %struct.zfcp_port*, align 8
  %4 = alloca %struct.zfcp_gid_pn_data*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_fc_ns_handler_data, align 8
  %7 = alloca i32, align 4
  store %struct.zfcp_port* %0, %struct.zfcp_port** %3, align 8
  store %struct.zfcp_gid_pn_data* %1, %struct.zfcp_gid_pn_data** %4, align 8
  %8 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %9 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %8, i32 0, i32 1
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %9, align 8
  store %struct.zfcp_adapter* %10, %struct.zfcp_adapter** %5, align 8
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %12 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %12, i32 0, i32 5
  store %struct.zfcp_port* %11, %struct.zfcp_port** %13, align 8
  %14 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %19 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 4
  store i32* %17, i32** %20, align 8
  %21 = load i32, i32* @zfcp_fc_ns_handler, align 4
  %22 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %23 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = ptrtoint %struct.zfcp_fc_ns_handler_data* %6 to i64
  %26 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %30 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %29, i32 0, i32 4
  %31 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %32 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i32* %30, i32** %33, align 8
  %34 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %34, i32 0, i32 3
  %36 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %37 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32* %35, i32** %38, align 8
  %39 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %40 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %39, i32 0, i32 4
  %41 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %42 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %41, i32 0, i32 1
  %43 = call i32 @sg_init_one(i32* %40, %struct.TYPE_10__* %42, i32 4)
  %44 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %45 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %44, i32 0, i32 3
  %46 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %47 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %46, i32 0, i32 2
  %48 = call i32 @sg_init_one(i32* %45, %struct.TYPE_10__* %47, i32 4)
  %49 = load i32, i32* @ZFCP_CT_REVISION, align 4
  %50 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %51 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @ZFCP_CT_DIRECTORY_SERVICE, align 4
  %55 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %56 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 4
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* @ZFCP_CT_NAME_SERVER, align 4
  %60 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %61 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @ZFCP_CT_SYNCHRONOUS, align 4
  %65 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %66 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @ZFCP_CT_GID_PN, align 4
  %70 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* @ZFCP_CT_SIZE_ONE_PAGE, align 4
  %75 = sdiv i32 %74, 4
  %76 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %77 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.zfcp_port*, %struct.zfcp_port** %3, align 8
  %81 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %84 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 8
  %86 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %6, i32 0, i32 1
  %87 = call i32 @init_completion(i32* %86)
  %88 = load i32, i32* @zfcp_fc_ns_gid_pn_eval, align 4
  %89 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %6, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %91 = ptrtoint %struct.zfcp_gid_pn_data* %90 to i64
  %92 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %6, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = load %struct.zfcp_gid_pn_data*, %struct.zfcp_gid_pn_data** %4, align 8
  %94 = getelementptr inbounds %struct.zfcp_gid_pn_data, %struct.zfcp_gid_pn_data* %93, i32 0, i32 0
  %95 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ZFCP_FC_CTELS_TMO, align 4
  %100 = call i32 @zfcp_fsf_send_ct(%struct.TYPE_9__* %94, i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %2
  %104 = getelementptr inbounds %struct.zfcp_fc_ns_handler_data, %struct.zfcp_fc_ns_handler_data* %6, i32 0, i32 1
  %105 = call i32 @wait_for_completion(i32* %104)
  br label %106

106:                                              ; preds = %103, %2
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @sg_init_one(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @zfcp_fsf_send_ct(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

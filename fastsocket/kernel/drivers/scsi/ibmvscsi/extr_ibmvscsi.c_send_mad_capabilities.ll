; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_send_mad_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvscsi.c_send_mad_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvscsi_host_data = type { %struct.TYPE_13__*, %struct.TYPE_14__*, %struct.TYPE_22__, i32, i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_22__ = type { i8*, i8*, %struct.TYPE_21__, %struct.TYPE_19__, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i8*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i8*, i32 }
%struct.viosrp_capabilities = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.srp_event_struct = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.viosrp_capabilities }

@capabilities_rsp = common dso_local global i32 0, align 4
@VIOSRP_MAD_FORMAT = common dso_local global i32 0, align 4
@info_timeout = common dso_local global i32 0, align 4
@CAP_LIST_SUPPORTED = common dso_local global i32 0, align 4
@CLIENT_MIGRATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ibm,loc-code\00", align 1
@VIOSRP_CAPABILITIES_TYPE = common dso_local global i32 0, align 4
@MIGRATION_CAPABILITIES = common dso_local global i32 0, align 4
@SERVER_SUPPORTS_CAP = common dso_local global i8* null, align 8
@client_reserve = common dso_local global i64 0, align 8
@RESERVATION_CAPABILITIES = common dso_local global i32 0, align 4
@CLIENT_RESERVE_SCSI_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't send CAPABILITIES_REQ!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvscsi_host_data*)* @send_mad_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_mad_capabilities(%struct.ibmvscsi_host_data* %0) #0 {
  %2 = alloca %struct.ibmvscsi_host_data*, align 8
  %3 = alloca %struct.viosrp_capabilities*, align 8
  %4 = alloca %struct.srp_event_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  store %struct.ibmvscsi_host_data* %0, %struct.ibmvscsi_host_data** %2, align 8
  %8 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %15 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %14, i32 0, i32 5
  %16 = call %struct.srp_event_struct* @get_event_struct(i32* %15)
  store %struct.srp_event_struct* %16, %struct.srp_event_struct** %4, align 8
  %17 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %18 = icmp ne %struct.srp_event_struct* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %23 = load i32, i32* @capabilities_rsp, align 4
  %24 = load i32, i32* @VIOSRP_MAD_FORMAT, align 4
  %25 = load i32, i32* @info_timeout, align 4
  %26 = call i32 @init_event_struct(%struct.srp_event_struct* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %28 = getelementptr inbounds %struct.srp_event_struct, %struct.srp_event_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store %struct.viosrp_capabilities* %30, %struct.viosrp_capabilities** %3, align 8
  %31 = load %struct.viosrp_capabilities*, %struct.viosrp_capabilities** %3, align 8
  %32 = call i32 @memset(%struct.viosrp_capabilities* %31, i32 0, i32 12)
  %33 = load i32, i32* @CAP_LIST_SUPPORTED, align 4
  %34 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %35 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 8
  %37 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %38 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %1
  %42 = load i32, i32* @CLIENT_MIGRATED, align 4
  %43 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %44 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %42
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %1
  %49 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %50 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %54 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = call i8* @dev_name(%struct.TYPE_14__* %56)
  %58 = call i32 @strncpy(i8* %52, i8* %57, i32 8)
  %59 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %60 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 7
  store i8 0, i8* %63, align 1
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i8* @of_get_property(%struct.device_node* %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i8*, i8** %7, align 8
  br label %75

70:                                               ; preds = %48
  %71 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %72 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i8* @dev_name(%struct.TYPE_14__* %73)
  br label %75

75:                                               ; preds = %70, %68
  %76 = phi i8* [ %69, %68 ], [ %74, %70 ]
  store i8* %76, i8** %7, align 8
  %77 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %78 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @strncpy(i8* %80, i8* %81, i32 8)
  %83 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %84 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 7
  store i8 0, i8* %87, align 1
  %88 = load i32, i32* @VIOSRP_CAPABILITIES_TYPE, align 4
  %89 = load %struct.viosrp_capabilities*, %struct.viosrp_capabilities** %3, align 8
  %90 = getelementptr inbounds %struct.viosrp_capabilities, %struct.viosrp_capabilities* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %93 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.viosrp_capabilities*, %struct.viosrp_capabilities** %3, align 8
  %96 = getelementptr inbounds %struct.viosrp_capabilities, %struct.viosrp_capabilities* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @MIGRATION_CAPABILITIES, align 4
  %98 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %99 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 2
  store i32 %97, i32* %102, align 8
  %103 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %104 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  store i32 32, i32* %107, align 8
  %108 = load i8*, i8** @SERVER_SUPPORTS_CAP, align 8
  %109 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %110 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  store i8* %108, i8** %113, align 8
  %114 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %115 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load i64, i64* @client_reserve, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %75
  %121 = load i32, i32* @RESERVATION_CAPABILITIES, align 4
  %122 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %123 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  store i32 %121, i32* %126, align 8
  %127 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %128 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  store i32 32, i32* %131, align 8
  %132 = load i8*, i8** @SERVER_SUPPORTS_CAP, align 8
  %133 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %134 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  store i8* %132, i8** %137, align 8
  %138 = load i32, i32* @CLIENT_RESERVE_SCSI_2, align 4
  %139 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %140 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  %143 = load %struct.viosrp_capabilities*, %struct.viosrp_capabilities** %3, align 8
  %144 = getelementptr inbounds %struct.viosrp_capabilities, %struct.viosrp_capabilities* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  store i32 88, i32* %145, align 4
  br label %150

146:                                              ; preds = %75
  %147 = load %struct.viosrp_capabilities*, %struct.viosrp_capabilities** %3, align 8
  %148 = getelementptr inbounds %struct.viosrp_capabilities, %struct.viosrp_capabilities* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  store i32 56, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %120
  %151 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %152 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %151, i32 0, i32 0
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @spin_lock_irqsave(i32 %155, i64 %156)
  %158 = load %struct.srp_event_struct*, %struct.srp_event_struct** %4, align 8
  %159 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %160 = load i32, i32* @info_timeout, align 4
  %161 = mul nsw i32 %160, 2
  %162 = call i64 @ibmvscsi_send_srp_event(%struct.srp_event_struct* %158, %struct.ibmvscsi_host_data* %159, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %150
  %165 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %166 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = call i32 @dev_err(%struct.TYPE_14__* %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %169

169:                                              ; preds = %164, %150
  %170 = load %struct.ibmvscsi_host_data*, %struct.ibmvscsi_host_data** %2, align 8
  %171 = getelementptr inbounds %struct.ibmvscsi_host_data, %struct.ibmvscsi_host_data* %170, i32 0, i32 0
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %5, align 8
  %176 = call i32 @spin_unlock_irqrestore(i32 %174, i64 %175)
  ret void
}

declare dso_local %struct.srp_event_struct* @get_event_struct(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @init_event_struct(%struct.srp_event_struct*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.viosrp_capabilities*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @dev_name(%struct.TYPE_14__*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @ibmvscsi_send_srp_event(%struct.srp_event_struct*, %struct.ibmvscsi_host_data*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

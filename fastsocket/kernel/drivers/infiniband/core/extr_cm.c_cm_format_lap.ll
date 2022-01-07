; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_lap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_lap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_lap_msg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cm_id_private = type { %struct.TYPE_8__, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_sa_path_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CM_LAP_ATTR_ID = common dso_local global i32 0, align 4
@CM_MSG_SEQUENCE_LAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_lap_msg*, %struct.cm_id_private*, %struct.ib_sa_path_rec*, i8*, i64)* @cm_format_lap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_lap(%struct.cm_lap_msg* %0, %struct.cm_id_private* %1, %struct.ib_sa_path_rec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.cm_lap_msg*, align 8
  %7 = alloca %struct.cm_id_private*, align 8
  %8 = alloca %struct.ib_sa_path_rec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.cm_lap_msg* %0, %struct.cm_lap_msg** %6, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %7, align 8
  store %struct.ib_sa_path_rec* %2, %struct.ib_sa_path_rec** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %12 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %11, i32 0, i32 8
  %13 = load i32, i32* @CM_LAP_ATTR_ID, align 4
  %14 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %15 = load i32, i32* @CM_MSG_SEQUENCE_LAP, align 4
  %16 = call i32 @cm_form_tid(%struct.cm_id_private* %14, i32 %15)
  %17 = call i32 @cm_format_mad_hdr(i32* %12, i32 %13, i32 %16)
  %18 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %19 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %23 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %25 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %29 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %31 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %32 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cm_lap_set_remote_qpn(%struct.cm_lap_msg* %30, i32 %33)
  %35 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %36 = call i32 @cm_lap_set_remote_resp_timeout(%struct.cm_lap_msg* %35, i32 31)
  %37 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %38 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %41 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %43 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %46 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %48 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %51 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %53 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %56 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %58 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %59 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cm_lap_set_flow_label(%struct.cm_lap_msg* %57, i32 %60)
  %62 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %63 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %64 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cm_lap_set_traffic_class(%struct.cm_lap_msg* %62, i32 %65)
  %67 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %68 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %71 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %73 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %74 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cm_lap_set_packet_rate(%struct.cm_lap_msg* %72, i32 %75)
  %77 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %78 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %79 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cm_lap_set_sl(%struct.cm_lap_msg* %77, i32 %80)
  %82 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %83 = call i32 @cm_lap_set_subnet_local(%struct.cm_lap_msg* %82, i32 1)
  %84 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %85 = load %struct.cm_id_private*, %struct.cm_id_private** %7, align 8
  %86 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_sa_path_rec*, %struct.ib_sa_path_rec** %8, align 8
  %94 = getelementptr inbounds %struct.ib_sa_path_rec, %struct.ib_sa_path_rec* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cm_ack_timeout(i32 %92, i32 %95)
  %97 = call i32 @cm_lap_set_local_ack_timeout(%struct.cm_lap_msg* %84, i32 %96)
  %98 = load i8*, i8** %9, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %5
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.cm_lap_msg*, %struct.cm_lap_msg** %6, align 8
  %105 = getelementptr inbounds %struct.cm_lap_msg, %struct.cm_lap_msg* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @memcpy(i32 %106, i8* %107, i64 %108)
  br label %110

110:                                              ; preds = %103, %100, %5
  ret void
}

declare dso_local i32 @cm_format_mad_hdr(i32*, i32, i32) #1

declare dso_local i32 @cm_form_tid(%struct.cm_id_private*, i32) #1

declare dso_local i32 @cm_lap_set_remote_qpn(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_remote_resp_timeout(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_flow_label(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_traffic_class(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_packet_rate(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_sl(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_subnet_local(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_lap_set_local_ack_timeout(%struct.cm_lap_msg*, i32) #1

declare dso_local i32 @cm_ack_timeout(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

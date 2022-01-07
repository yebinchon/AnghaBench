; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_req_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_req_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_12__, i32*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ib_cm_req_event_param }
%struct.ib_cm_req_event_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32*, i32*, i32, %struct.ib_cm_id* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.cm_id_private = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.cm_req_msg = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.cm_id_private*, %struct.ib_cm_id*)* @cm_format_req_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_req_event(%struct.cm_work* %0, %struct.cm_id_private* %1, %struct.ib_cm_id* %2) #0 {
  %4 = alloca %struct.cm_work*, align 8
  %5 = alloca %struct.cm_id_private*, align 8
  %6 = alloca %struct.ib_cm_id*, align 8
  %7 = alloca %struct.cm_req_msg*, align 8
  %8 = alloca %struct.ib_cm_req_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %4, align 8
  store %struct.cm_id_private* %1, %struct.cm_id_private** %5, align 8
  store %struct.ib_cm_id* %2, %struct.ib_cm_id** %6, align 8
  %9 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %10 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.cm_req_msg*
  store %struct.cm_req_msg* %15, %struct.cm_req_msg** %7, align 8
  %16 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %17 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store %struct.ib_cm_req_event_param* %19, %struct.ib_cm_req_event_param** %8, align 8
  %20 = load %struct.ib_cm_id*, %struct.ib_cm_id** %6, align 8
  %21 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %22 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %21, i32 0, i32 16
  store %struct.ib_cm_id* %20, %struct.ib_cm_id** %22, align 8
  %23 = load %struct.cm_id_private*, %struct.cm_id_private** %5, align 8
  %24 = getelementptr inbounds %struct.cm_id_private, %struct.cm_id_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %30 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %29, i32 0, i32 15
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %32 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %36 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %35, i32 0, i32 14
  store i32* %34, i32** %36, align 8
  %37 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %38 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %3
  %42 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %43 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %47 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %46, i32 0, i32 13
  store i32* %45, i32** %47, align 8
  br label %51

48:                                               ; preds = %3
  %49 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %50 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %49, i32 0, i32 13
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %53 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %56 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %58 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @be32_to_cpu(i32 %59)
  %61 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %62 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %61, i32 0, i32 11
  store i8* %60, i8** %62, align 8
  %63 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %64 = call i32 @cm_req_get_local_qpn(%struct.cm_req_msg* %63)
  %65 = call i8* @be32_to_cpu(i32 %64)
  %66 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %67 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %66, i32 0, i32 10
  store i8* %65, i8** %67, align 8
  %68 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %69 = call i32 @cm_req_get_qp_type(%struct.cm_req_msg* %68)
  %70 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %71 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 8
  %72 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %73 = call i32 @cm_req_get_starting_psn(%struct.cm_req_msg* %72)
  %74 = call i8* @be32_to_cpu(i32 %73)
  %75 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %76 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %75, i32 0, i32 8
  store i8* %74, i8** %76, align 8
  %77 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %78 = call i32 @cm_req_get_init_depth(%struct.cm_req_msg* %77)
  %79 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %80 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %82 = call i32 @cm_req_get_resp_res(%struct.cm_req_msg* %81)
  %83 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %84 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %86 = call i32 @cm_req_get_remote_resp_timeout(%struct.cm_req_msg* %85)
  %87 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %88 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %90 = call i32 @cm_req_get_flow_ctrl(%struct.cm_req_msg* %89)
  %91 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %92 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %94 = call i32 @cm_req_get_local_resp_timeout(%struct.cm_req_msg* %93)
  %95 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %96 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %98 = call i32 @cm_req_get_retry_count(%struct.cm_req_msg* %97)
  %99 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %100 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %102 = call i32 @cm_req_get_rnr_retry_count(%struct.cm_req_msg* %101)
  %103 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %104 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %106 = call i32 @cm_req_get_srq(%struct.cm_req_msg* %105)
  %107 = load %struct.ib_cm_req_event_param*, %struct.ib_cm_req_event_param** %8, align 8
  %108 = getelementptr inbounds %struct.ib_cm_req_event_param, %struct.ib_cm_req_event_param* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.cm_req_msg*, %struct.cm_req_msg** %7, align 8
  %110 = getelementptr inbounds %struct.cm_req_msg, %struct.cm_req_msg* %109, i32 0, i32 0
  %111 = load %struct.cm_work*, %struct.cm_work** %4, align 8
  %112 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store i32* %110, i32** %113, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @cm_req_get_local_qpn(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_qp_type(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_starting_psn(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_init_depth(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_resp_res(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_remote_resp_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_flow_ctrl(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_local_resp_timeout(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_retry_count(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_rnr_retry_count(%struct.cm_req_msg*) #1

declare dso_local i32 @cm_req_get_srq(%struct.cm_req_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

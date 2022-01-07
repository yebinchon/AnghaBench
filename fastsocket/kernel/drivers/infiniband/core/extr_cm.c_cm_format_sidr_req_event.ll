; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_sidr_req_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_sidr_req_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ib_cm_sidr_req_event_param }
%struct.ib_cm_sidr_req_event_param = type { i32, %struct.ib_cm_id*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.ib_cm_id = type { i32 }
%struct.cm_sidr_req_msg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, %struct.ib_cm_id*)* @cm_format_sidr_req_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_sidr_req_event(%struct.cm_work* %0, %struct.ib_cm_id* %1) #0 {
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca %struct.ib_cm_id*, align 8
  %5 = alloca %struct.cm_sidr_req_msg*, align 8
  %6 = alloca %struct.ib_cm_sidr_req_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store %struct.ib_cm_id* %1, %struct.ib_cm_id** %4, align 8
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_sidr_req_msg*
  store %struct.cm_sidr_req_msg* %13, %struct.cm_sidr_req_msg** %5, align 8
  %14 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %15 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.ib_cm_sidr_req_event_param* %17, %struct.ib_cm_sidr_req_event_param** %6, align 8
  %18 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %5, align 8
  %19 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__be16_to_cpu(i32 %20)
  %22 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %6, align 8
  %23 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ib_cm_id*, %struct.ib_cm_id** %4, align 8
  %25 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %6, align 8
  %26 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %25, i32 0, i32 1
  store %struct.ib_cm_id* %24, %struct.ib_cm_id** %26, align 8
  %27 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %28 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_cm_sidr_req_event_param*, %struct.ib_cm_sidr_req_event_param** %6, align 8
  %33 = getelementptr inbounds %struct.ib_cm_sidr_req_event_param, %struct.ib_cm_sidr_req_event_param* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.cm_sidr_req_msg*, %struct.cm_sidr_req_msg** %5, align 8
  %35 = getelementptr inbounds %struct.cm_sidr_req_msg, %struct.cm_sidr_req_msg* %34, i32 0, i32 0
  %36 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %37 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  ret void
}

declare dso_local i32 @__be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

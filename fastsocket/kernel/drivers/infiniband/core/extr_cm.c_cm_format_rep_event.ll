; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_rep_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_cm.c_cm_format_rep_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_work = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ib_cm_rep_event_param }
%struct.ib_cm_rep_event_param = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.cm_rep_msg = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm_work*, i32)* @cm_format_rep_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm_format_rep_event(%struct.cm_work* %0, i32 %1) #0 {
  %3 = alloca %struct.cm_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cm_rep_msg*, align 8
  %6 = alloca %struct.ib_cm_rep_event_param*, align 8
  store %struct.cm_work* %0, %struct.cm_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %8 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cm_rep_msg*
  store %struct.cm_rep_msg* %13, %struct.cm_rep_msg** %5, align 8
  %14 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %15 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store %struct.ib_cm_rep_event_param* %17, %struct.ib_cm_rep_event_param** %6, align 8
  %18 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %19 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %22 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %24 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @be32_to_cpu(i32 %25)
  %27 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %28 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @cm_rep_get_qpn(%struct.cm_rep_msg* %29, i32 %30)
  %32 = call i8* @be32_to_cpu(i32 %31)
  %33 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %34 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %36 = call i32 @cm_rep_get_starting_psn(%struct.cm_rep_msg* %35)
  %37 = call i8* @be32_to_cpu(i32 %36)
  %38 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %39 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %38, i32 0, i32 7
  store i8* %37, i8** %39, align 8
  %40 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %41 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %44 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %46 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %49 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %51 = call i32 @cm_rep_get_target_ack_delay(%struct.cm_rep_msg* %50)
  %52 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %53 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %55 = call i32 @cm_rep_get_failover(%struct.cm_rep_msg* %54)
  %56 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %57 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %59 = call i32 @cm_rep_get_flow_ctrl(%struct.cm_rep_msg* %58)
  %60 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %61 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %63 = call i32 @cm_rep_get_rnr_retry_count(%struct.cm_rep_msg* %62)
  %64 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %65 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %67 = call i32 @cm_rep_get_srq(%struct.cm_rep_msg* %66)
  %68 = load %struct.ib_cm_rep_event_param*, %struct.ib_cm_rep_event_param** %6, align 8
  %69 = getelementptr inbounds %struct.ib_cm_rep_event_param, %struct.ib_cm_rep_event_param* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.cm_rep_msg*, %struct.cm_rep_msg** %5, align 8
  %71 = getelementptr inbounds %struct.cm_rep_msg, %struct.cm_rep_msg* %70, i32 0, i32 0
  %72 = load %struct.cm_work*, %struct.cm_work** %3, align 8
  %73 = getelementptr inbounds %struct.cm_work, %struct.cm_work* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32* %71, i32** %74, align 8
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @cm_rep_get_qpn(%struct.cm_rep_msg*, i32) #1

declare dso_local i32 @cm_rep_get_starting_psn(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_target_ack_delay(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_failover(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_flow_ctrl(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_rnr_retry_count(%struct.cm_rep_msg*) #1

declare dso_local i32 @cm_rep_get_srq(%struct.cm_rep_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

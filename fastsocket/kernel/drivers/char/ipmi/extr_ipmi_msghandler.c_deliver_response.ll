; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_deliver_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_deliver_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_recv_msg = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ipmi_recv_msg*, i32)* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.ipmi_recv_msg*)* }

@handled_local_responses = common dso_local global i32 0, align 4
@unhandled_local_responses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipmi_recv_msg*)* @deliver_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deliver_response(%struct.ipmi_recv_msg* %0) #0 {
  %2 = alloca %struct.ipmi_recv_msg*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.ipmi_recv_msg* %0, %struct.ipmi_recv_msg** %2, align 8
  %5 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %2, align 8
  %6 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %2, align 8
  %11 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %3, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_8__*, %struct.ipmi_recv_msg*)*, i32 (%struct.TYPE_8__*, %struct.ipmi_recv_msg*)** %14, align 8
  %16 = icmp ne i32 (%struct.TYPE_8__*, %struct.ipmi_recv_msg*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_8__*, %struct.ipmi_recv_msg*)*, i32 (%struct.TYPE_8__*, %struct.ipmi_recv_msg*)** %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %2, align 8
  %23 = call i32 %20(%struct.TYPE_8__* %21, %struct.ipmi_recv_msg* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i32, i32* @handled_local_responses, align 4
  %26 = call i32 @ipmi_inc_stat(%struct.TYPE_8__* %24, i32 %25)
  br label %31

27:                                               ; preds = %9
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i32, i32* @unhandled_local_responses, align 4
  %30 = call i32 @ipmi_inc_stat(%struct.TYPE_8__* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %17
  %32 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %2, align 8
  %33 = call i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg* %32)
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %2, align 8
  %36 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ipmi_recv_msg*, i32)*, i32 (%struct.ipmi_recv_msg*, i32)** %41, align 8
  %43 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %2, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 %42(%struct.ipmi_recv_msg* %43, i32 %46)
  br label %48

48:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @ipmi_inc_stat(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ipmi_free_recv_msg(%struct.ipmi_recv_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

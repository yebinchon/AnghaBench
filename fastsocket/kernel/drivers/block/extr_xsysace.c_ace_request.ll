; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ace_device* }
%struct.ace_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @ace_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.ace_device*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = call %struct.request* @ace_get_next_request(%struct.request_queue* %5)
  store %struct.request* %6, %struct.request** %3, align 8
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = icmp ne %struct.request* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.ace_device*, %struct.ace_device** %13, align 8
  store %struct.ace_device* %14, %struct.ace_device** %4, align 8
  %15 = load %struct.ace_device*, %struct.ace_device** %4, align 8
  %16 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %15, i32 0, i32 0
  %17 = call i32 @tasklet_schedule(i32* %16)
  br label %18

18:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.request* @ace_get_next_request(%struct.request_queue*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

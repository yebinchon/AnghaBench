; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_wait_for_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_wait_for_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qeth_cmd_buffer* @qeth_wait_for_buffer(%struct.qeth_channel* %0) #0 {
  %2 = alloca %struct.qeth_channel*, align 8
  %3 = alloca %struct.qeth_cmd_buffer*, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %2, align 8
  %4 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %5 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %8 = call %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel* %7)
  store %struct.qeth_cmd_buffer* %8, %struct.qeth_cmd_buffer** %3, align 8
  %9 = icmp ne %struct.qeth_cmd_buffer* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @wait_event(i32 %6, i32 %10)
  %12 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %3, align 8
  ret %struct.qeth_cmd_buffer* %12
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

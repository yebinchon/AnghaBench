; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_get_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_cmd_buffer = type { i32 }
%struct.qeth_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_cmd_buffer* (%struct.qeth_channel*)* @qeth_get_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_cmd_buffer* @qeth_get_buffer(%struct.qeth_channel* %0) #0 {
  %2 = alloca %struct.qeth_channel*, align 8
  %3 = alloca %struct.qeth_cmd_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.qeth_channel* %0, %struct.qeth_channel** %2, align 8
  store %struct.qeth_cmd_buffer* null, %struct.qeth_cmd_buffer** %3, align 8
  %5 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %6 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %10 = call %struct.qeth_cmd_buffer* @__qeth_get_buffer(%struct.qeth_channel* %9)
  store %struct.qeth_cmd_buffer* %10, %struct.qeth_cmd_buffer** %3, align 8
  %11 = load %struct.qeth_channel*, %struct.qeth_channel** %2, align 8
  %12 = getelementptr inbounds %struct.qeth_channel, %struct.qeth_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_unlock_irqrestore(i32* %12, i64 %13)
  %15 = load %struct.qeth_cmd_buffer*, %struct.qeth_cmd_buffer** %3, align 8
  ret %struct.qeth_cmd_buffer* %15
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.qeth_cmd_buffer* @__qeth_get_buffer(%struct.qeth_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

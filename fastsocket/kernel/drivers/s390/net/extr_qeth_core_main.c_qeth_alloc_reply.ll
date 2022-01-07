; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_reply = type { %struct.qeth_card*, i32, i32 }
%struct.qeth_card = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_reply* (%struct.qeth_card*)* @qeth_alloc_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_reply* @qeth_alloc_reply(%struct.qeth_card* %0) #0 {
  %2 = alloca %struct.qeth_card*, align 8
  %3 = alloca %struct.qeth_reply*, align 8
  store %struct.qeth_card* %0, %struct.qeth_card** %2, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.qeth_reply* @kzalloc(i32 16, i32 %4)
  store %struct.qeth_reply* %5, %struct.qeth_reply** %3, align 8
  %6 = load %struct.qeth_reply*, %struct.qeth_reply** %3, align 8
  %7 = icmp ne %struct.qeth_reply* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.qeth_reply*, %struct.qeth_reply** %3, align 8
  %10 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %9, i32 0, i32 2
  %11 = call i32 @atomic_set(i32* %10, i32 1)
  %12 = load %struct.qeth_reply*, %struct.qeth_reply** %3, align 8
  %13 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %12, i32 0, i32 1
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  %15 = load %struct.qeth_card*, %struct.qeth_card** %2, align 8
  %16 = load %struct.qeth_reply*, %struct.qeth_reply** %3, align 8
  %17 = getelementptr inbounds %struct.qeth_reply, %struct.qeth_reply* %16, i32 0, i32 0
  store %struct.qeth_card* %15, %struct.qeth_card** %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.qeth_reply*, %struct.qeth_reply** %3, align 8
  ret %struct.qeth_reply* %19
}

declare dso_local %struct.qeth_reply* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

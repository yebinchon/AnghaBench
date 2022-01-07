; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_mccq_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_cmd_mccq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.be_queue_info = type { i32 }

@.str = private unnamed_addr constant [101 x i8] c"Upgrade to F/W ver 2.102.235.0 or newer to avoid conflicting priorities between NIC and FCoE traffic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_mccq_create(%struct.be_adapter* %0, %struct.be_queue_info* %1, %struct.be_queue_info* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca %struct.be_queue_info*, align 8
  %6 = alloca %struct.be_queue_info*, align 8
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store %struct.be_queue_info* %1, %struct.be_queue_info** %5, align 8
  store %struct.be_queue_info* %2, %struct.be_queue_info** %6, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %9 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %10 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %11 = call i32 @be_cmd_mccq_ext_create(%struct.be_adapter* %8, %struct.be_queue_info* %9, %struct.be_queue_info* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %16 = call i32 @lancer_chip(%struct.be_adapter* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %25 = load %struct.be_queue_info*, %struct.be_queue_info** %5, align 8
  %26 = load %struct.be_queue_info*, %struct.be_queue_info** %6, align 8
  %27 = call i32 @be_cmd_mccq_org_create(%struct.be_adapter* %24, %struct.be_queue_info* %25, %struct.be_queue_info* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %18, %14, %3
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local i32 @be_cmd_mccq_ext_create(%struct.be_adapter*, %struct.be_queue_info*, %struct.be_queue_info*) #1

declare dso_local i32 @lancer_chip(%struct.be_adapter*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @be_cmd_mccq_org_create(%struct.be_adapter*, %struct.be_queue_info*, %struct.be_queue_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

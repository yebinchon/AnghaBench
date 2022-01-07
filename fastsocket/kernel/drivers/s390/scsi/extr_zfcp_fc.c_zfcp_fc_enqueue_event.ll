; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_enqueue_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_enqueue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.zfcp_fc_event = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fc_enqueue_event(%struct.zfcp_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_fc_event*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.zfcp_fc_event* @kmalloc(i32 12, i32 %8)
  store %struct.zfcp_fc_event* %9, %struct.zfcp_fc_event** %7, align 8
  %10 = load %struct.zfcp_fc_event*, %struct.zfcp_fc_event** %7, align 8
  %11 = icmp ne %struct.zfcp_fc_event* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %41

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.zfcp_fc_event*, %struct.zfcp_fc_event** %7, align 8
  %16 = getelementptr inbounds %struct.zfcp_fc_event, %struct.zfcp_fc_event* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.zfcp_fc_event*, %struct.zfcp_fc_event** %7, align 8
  %19 = getelementptr inbounds %struct.zfcp_fc_event, %struct.zfcp_fc_event* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.zfcp_fc_event*, %struct.zfcp_fc_event** %7, align 8
  %25 = getelementptr inbounds %struct.zfcp_fc_event, %struct.zfcp_fc_event* %24, i32 0, i32 1
  %26 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = call i32 @list_add_tail(i32* %25, i32* %28)
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @queue_work(i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.zfcp_fc_event* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

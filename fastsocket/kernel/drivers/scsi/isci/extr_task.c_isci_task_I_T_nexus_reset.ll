; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_task.c_isci_task_I_T_nexus_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_task.c_isci_task_I_T_nexus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i32 }
%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isci_task_I_T_nexus_reset(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %8 = call %struct.isci_host* @dev_to_ihost(%struct.domain_device* %7)
  store %struct.isci_host* %8, %struct.isci_host** %3, align 8
  %9 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %10 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.isci_remote_device* @isci_get_device(i32 %15)
  store %struct.isci_remote_device* %16, %struct.isci_remote_device** %4, align 8
  %17 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %18 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %22 = icmp ne %struct.isci_remote_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %31

26:                                               ; preds = %1
  %27 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %29 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %30 = call i32 @isci_reset_device(%struct.isci_host* %27, %struct.domain_device* %28, %struct.isci_remote_device* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %33 = call i32 @isci_put_device(%struct.isci_remote_device* %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.isci_host* @dev_to_ihost(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.isci_remote_device* @isci_get_device(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @isci_reset_device(%struct.isci_host*, %struct.domain_device*, %struct.isci_remote_device*) #1

declare dso_local i32 @isci_put_device(%struct.isci_remote_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_isci_remote_device_test_resume_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.c_isci_remote_device_test_resume_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_host = type { i32 }
%struct.isci_remote_device = type { i32, i32 }

@IDEV_ABORT_PATH_RESUME_PENDING = common dso_local global i32 0, align 4
@IDEV_STOP_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isci_host*, %struct.isci_remote_device*)* @isci_remote_device_test_resume_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isci_remote_device_test_resume_done(%struct.isci_host* %0, %struct.isci_remote_device* %1) #0 {
  %3 = alloca %struct.isci_host*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.isci_host* %0, %struct.isci_host** %3, align 8
  store %struct.isci_remote_device* %1, %struct.isci_remote_device** %4, align 8
  %7 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %8 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load i32, i32* @IDEV_ABORT_PATH_RESUME_PENDING, align 4
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %13 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* @IDEV_STOP_PENDING, align 4
  %18 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %19 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %24 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %23, i32 0, i32 0
  %25 = call i64 @sci_remote_node_context_is_being_destroyed(i32* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %16, %2
  %28 = phi i1 [ true, %16 ], [ true, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.isci_host*, %struct.isci_host** %3, align 8
  %31 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @sci_remote_node_context_is_being_destroyed(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.h_isci_lookup_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/isci/extr_remote_device.h_isci_lookup_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_remote_device = type { i32, i32 }
%struct.domain_device = type { %struct.isci_remote_device* }

@IDEV_GONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isci_remote_device* (%struct.domain_device*)* @isci_lookup_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isci_remote_device* @isci_lookup_device(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.isci_remote_device*, align 8
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.isci_remote_device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %5 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %6 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %5, i32 0, i32 0
  %7 = load %struct.isci_remote_device*, %struct.isci_remote_device** %6, align 8
  store %struct.isci_remote_device* %7, %struct.isci_remote_device** %4, align 8
  %8 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %9 = icmp ne %struct.isci_remote_device* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load i32, i32* @IDEV_GONE, align 4
  %12 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %13 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  %18 = getelementptr inbounds %struct.isci_remote_device, %struct.isci_remote_device* %17, i32 0, i32 0
  %19 = call i32 @kref_get(i32* %18)
  %20 = load %struct.isci_remote_device*, %struct.isci_remote_device** %4, align 8
  store %struct.isci_remote_device* %20, %struct.isci_remote_device** %2, align 8
  br label %22

21:                                               ; preds = %10, %1
  store %struct.isci_remote_device* null, %struct.isci_remote_device** %2, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.isci_remote_device*, %struct.isci_remote_device** %2, align 8
  ret %struct.isci_remote_device* %23
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

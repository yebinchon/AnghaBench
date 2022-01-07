; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c_mpt2sas_device_remove_by_sas_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt2sas/extr_mpt2sas_scsih.c_mpt2sas_device_remove_by_sas_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT2SAS_ADAPTER = type { i32, i64 }
%struct._sas_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt2sas_device_remove_by_sas_address(%struct.MPT2SAS_ADAPTER* %0, i32 %1) #0 {
  %3 = alloca %struct.MPT2SAS_ADAPTER*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._sas_device*, align 8
  %6 = alloca i64, align 8
  store %struct.MPT2SAS_ADAPTER* %0, %struct.MPT2SAS_ADAPTER** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %8 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %37

12:                                               ; preds = %2
  %13 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %14 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER* %17, i32 %18)
  store %struct._sas_device* %19, %struct._sas_device** %5, align 8
  %20 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %21 = icmp ne %struct._sas_device* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %24 = getelementptr inbounds %struct._sas_device, %struct._sas_device* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  br label %26

26:                                               ; preds = %22, %12
  %27 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %28 = getelementptr inbounds %struct.MPT2SAS_ADAPTER, %struct.MPT2SAS_ADAPTER* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %32 = icmp ne %struct._sas_device* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.MPT2SAS_ADAPTER*, %struct.MPT2SAS_ADAPTER** %3, align 8
  %35 = load %struct._sas_device*, %struct._sas_device** %5, align 8
  %36 = call i32 @_scsih_remove_device(%struct.MPT2SAS_ADAPTER* %34, %struct._sas_device* %35)
  br label %37

37:                                               ; preds = %11, %33, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct._sas_device* @mpt2sas_scsih_sas_device_find_by_sas_address(%struct.MPT2SAS_ADAPTER*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_scsih_remove_device(%struct.MPT2SAS_ADAPTER*, %struct._sas_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

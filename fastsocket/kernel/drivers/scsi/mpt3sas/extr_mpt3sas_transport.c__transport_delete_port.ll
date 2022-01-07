; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_delete_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_transport.c__transport_delete_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32 }
%struct._sas_port = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"remove: sas_addr(0x%016llx)\0A\00", align 1
@MPT_DEBUG_TRANSPORT = common dso_local global i32 0, align 4
@SAS_END_DEVICE = common dso_local global i32 0, align 4
@SAS_EDGE_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@SAS_FANOUT_EXPANDER_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct._sas_port*)* @_transport_delete_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_transport_delete_port(%struct.MPT3SAS_ADAPTER* %0, %struct._sas_port* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct._sas_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct._sas_port* %1, %struct._sas_port** %4, align 8
  %7 = load %struct._sas_port*, %struct._sas_port** %4, align 8
  %8 = getelementptr inbounds %struct._sas_port, %struct._sas_port* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct._sas_port*, %struct._sas_port** %4, align 8
  %12 = getelementptr inbounds %struct._sas_port, %struct._sas_port* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @KERN_INFO, align 4
  %16 = load %struct._sas_port*, %struct._sas_port** %4, align 8
  %17 = getelementptr inbounds %struct._sas_port, %struct._sas_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @dev_printk(i32 %15, i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32, i32* @MPT_DEBUG_TRANSPORT, align 4
  %23 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %24 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SAS_END_DEVICE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @mpt3sas_device_remove_by_sas_address(%struct.MPT3SAS_ADAPTER* %31, i64 %32)
  br label %47

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SAS_EDGE_EXPANDER_DEVICE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @SAS_FANOUT_EXPANDER_DEVICE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %34
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @mpt3sas_expander_remove(%struct.MPT3SAS_ADAPTER* %43, i64 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* @MPT_DEBUG_TRANSPORT, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %51 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  ret void
}

declare dso_local i32 @dev_printk(i32, i32*, i8*, i64) #1

declare dso_local i32 @mpt3sas_device_remove_by_sas_address(%struct.MPT3SAS_ADAPTER*, i64) #1

declare dso_local i32 @mpt3sas_expander_remove(%struct.MPT3SAS_ADAPTER*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

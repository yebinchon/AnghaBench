; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_slave_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_slave_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.scsi_device = type { %struct.zfcp_unit*, i32, i32, i32, %struct.TYPE_3__* }
%struct.zfcp_unit = type { %struct.scsi_device* }
%struct.TYPE_3__ = type { i64* }
%struct.zfcp_adapter = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @zfcp_scsi_slave_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_scsi_slave_alloc(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca %struct.zfcp_unit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %7 = load i32, i32* @ENXIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.zfcp_adapter*
  store %struct.zfcp_adapter* %16, %struct.zfcp_adapter** %3, align 8
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %18 = icmp ne %struct.zfcp_adapter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %48

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @read_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0), i64 %21)
  %23 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %24 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %28 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.zfcp_unit* @zfcp_unit_lookup(%struct.zfcp_adapter* %23, i32 %26, i32 %29, i32 %32)
  store %struct.zfcp_unit* %33, %struct.zfcp_unit** %4, align 8
  %34 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %35 = icmp ne %struct.zfcp_unit* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 0
  store %struct.zfcp_unit* %37, %struct.zfcp_unit** %39, align 8
  %40 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %41 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %42 = getelementptr inbounds %struct.zfcp_unit, %struct.zfcp_unit* %41, i32 0, i32 0
  store %struct.scsi_device* %40, %struct.scsi_device** %42, align 8
  %43 = load %struct.zfcp_unit*, %struct.zfcp_unit** %4, align 8
  %44 = call i32 @zfcp_unit_get(%struct.zfcp_unit* %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %36, %20
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @read_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zfcp_data, i32 0, i32 0), i64 %46)
  br label %48

48:                                               ; preds = %45, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local %struct.zfcp_unit* @zfcp_unit_lookup(%struct.zfcp_adapter*, i32, i32, i32) #1

declare dso_local i32 @zfcp_unit_get(%struct.zfcp_unit*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

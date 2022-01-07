; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_set_ddb_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_dev.c_asd_set_ddb_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.asd_ha_struct* }
%struct.asd_ha_struct = type { i32 }

@SATA_PM_PORT = common dso_local global i64 0, align 8
@DDB_TYPE = common dso_local global i32 0, align 4
@DDB_TYPE_PM_PORT = common dso_local global i32 0, align 4
@DDB_TYPE_TARGET = common dso_local global i32 0, align 4
@DDB_TYPE_INITIATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*)* @asd_set_ddb_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_set_ddb_type(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %5 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %6 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %10, align 8
  store %struct.asd_ha_struct* %11, %struct.asd_ha_struct** %3, align 8
  %12 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %13 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %17 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SATA_PM_PORT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @DDB_TYPE, align 4
  %25 = load i32, i32* @DDB_TYPE_PM_PORT, align 4
  %26 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %22, i32 %23, i32 %24, i32 %25)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DDB_TYPE, align 4
  %36 = load i32, i32* @DDB_TYPE_TARGET, align 4
  %37 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %33, i32 %34, i32 %35, i32 %36)
  br label %44

38:                                               ; preds = %27
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DDB_TYPE, align 4
  %42 = load i32, i32* @DDB_TYPE_INITIATOR, align 4
  %43 = call i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct* %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44, %21
  ret void
}

declare dso_local i32 @asd_ddbsite_write_byte(%struct.asd_ha_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

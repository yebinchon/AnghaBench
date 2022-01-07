; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_park_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-scsi.c_ata_scsi_park_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32 }
%struct.ata_port = type { i32, i32 }
%struct.ata_device = type { i64, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ATA_TMOUT_MAX_PARK = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ATA_DFLAG_NO_UNLOAD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ATA_EH_PARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ata_scsi_park_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_scsi_park_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_device*, align 8
  %11 = alloca %struct.ata_port*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.scsi_device* @to_scsi_device(%struct.device* %16)
  store %struct.scsi_device* %17, %struct.scsi_device** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strict_strtol(i8* %18, i32 10, i64* %13)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i64, i64* %13, align 8
  %24 = icmp slt i64 %23, -2
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %137

28:                                               ; preds = %22
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @ATA_TMOUT_MAX_PARK, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @EOVERFLOW, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* @ATA_TMOUT_MAX_PARK, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %38 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ata_port* @ata_shost_to_port(i32 %39)
  store %struct.ata_port* %40, %struct.ata_port** %11, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @spin_lock_irqsave(i32 %43, i64 %44)
  %46 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %47 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  %48 = call %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port* %46, %struct.scsi_device* %47)
  store %struct.ata_device* %48, %struct.ata_device** %12, align 8
  %49 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %50 = icmp ne %struct.ata_device* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %121

58:                                               ; preds = %36
  %59 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %60 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ATA_DEV_ATA, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %15, align 4
  br label %121

67:                                               ; preds = %58
  %68 = load i64, i64* %13, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %67
  %71 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %72 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %121

80:                                               ; preds = %70
  %81 = load i32, i32* @jiffies, align 4
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @ata_deadline(i32 %81, i64 %82)
  %84 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %85 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @ATA_EH_PARK, align 4
  %87 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %88 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %94 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %86
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %100 = call i32 @ata_port_schedule_eh(%struct.ata_port* %99)
  %101 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %102 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %101, i32 0, i32 1
  %103 = call i32 @complete(i32* %102)
  br label %120

104:                                              ; preds = %67
  %105 = load i64, i64* %13, align 8
  switch i64 %105, label %119 [
    i64 -1, label %106
    i64 -2, label %113
  ]

106:                                              ; preds = %104
  %107 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %110 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %119

113:                                              ; preds = %104
  %114 = load i32, i32* @ATA_DFLAG_NO_UNLOAD, align 4
  %115 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %116 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %104, %113, %106
  br label %120

120:                                              ; preds = %119, %80
  br label %121

121:                                              ; preds = %120, %77, %64, %55
  %122 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  %123 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i64, i64* %14, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32 %124, i64 %125)
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  br label %134

132:                                              ; preds = %121
  %133 = load i64, i64* %9, align 8
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i64 [ %131, %129 ], [ %133, %132 ]
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %134, %25
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @strict_strtol(i8*, i32, i64*) #1

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.ata_device* @ata_scsi_find_dev(%struct.ata_port*, %struct.scsi_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_deadline(i32, i64) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

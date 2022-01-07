; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_knobble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_dev_knobble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_port = type { i64 }

@ATA_HORKAGE_BRIDGE_OK = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_dev_knobble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_knobble(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %5 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %6 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %4, align 8
  %10 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %11 = call i32 @ata_dev_blacklisted(%struct.ata_device* %10)
  %12 = load i32, i32* @ATA_HORKAGE_BRIDGE_OK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ATA_CBL_SATA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %24 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ata_id_is_sata(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %22, %16
  %30 = phi i1 [ false, %16 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ata_dev_blacklisted(%struct.ata_device*) #1

declare dso_local i32 @ata_id_is_sata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

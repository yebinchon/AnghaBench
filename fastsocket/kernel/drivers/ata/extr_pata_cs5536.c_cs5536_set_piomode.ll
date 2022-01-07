; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cs5536.c_cs5536_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cs5536.c_cs5536_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@cs5536_set_piomode.drv_timings = internal constant [5 x i32] [i32 152, i32 85, i32 50, i32 33, i32 32], align 16
@cs5536_set_piomode.addr_timings = internal constant [5 x i32] [i32 2, i32 1, i32 0, i32 0, i32 0], align 16
@cs5536_set_piomode.cmd_timings = internal constant [5 x i32] [i32 153, i32 146, i32 144, i32 34, i32 32], align 16
@XFER_PIO_0 = common dso_local global i32 0, align 4
@IDE_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_D0_SHIFT = common dso_local global i32 0, align 4
@IDE_CAST_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_CAST_D0_SHIFT = common dso_local global i32 0, align 4
@DTC = common dso_local global i32 0, align 4
@CAST = common dso_local global i32 0, align 4
@ETC = common dso_local global i32 0, align 4
@IDE_DRV_MASK = common dso_local global i32 0, align 4
@IDE_CAST_DRV_MASK = common dso_local global i32 0, align 4
@IDE_CAST_CMD_MASK = common dso_local global i32 0, align 4
@IDE_CAST_CMD_SHIFT = common dso_local global i32 0, align 4
@IDE_ETC_NODMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @cs5536_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5536_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %5, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %21 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %20)
  store %struct.ata_device* %21, %struct.ata_device** %6, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XFER_PIO_0, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @IDE_D1_SHIFT, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @IDE_D0_SHIFT, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %9, align 4
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @IDE_CAST_D1_SHIFT, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @IDE_CAST_D0_SHIFT, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %49 = icmp ne %struct.ata_device* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XFER_PIO_0, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @min(i32 %51, i32 %56)
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = load i32, i32* @DTC, align 4
  %61 = call i32 @cs5536_read(%struct.pci_dev* %59, i32 %60, i32* %11)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %63 = load i32, i32* @CAST, align 4
  %64 = call i32 @cs5536_read(%struct.pci_dev* %62, i32 %63, i32* %12)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = load i32, i32* @ETC, align 4
  %67 = call i32 @cs5536_read(%struct.pci_dev* %65, i32 %66, i32* %13)
  %68 = load i32, i32* @IDE_DRV_MASK, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_piomode.drv_timings, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* @IDE_CAST_DRV_MASK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = shl i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_piomode.addr_timings, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @IDE_CAST_CMD_MASK, align 4
  %97 = load i32, i32* @IDE_CAST_CMD_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_piomode.cmd_timings, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IDE_CAST_CMD_SHIFT, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @IDE_DRV_MASK, align 4
  %111 = load i32, i32* %9, align 4
  %112 = shl i32 %110, %111
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* @IDE_ETC_NODMA, align 4
  %117 = load i32, i32* %9, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %122 = load i32, i32* @DTC, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @cs5536_write(%struct.pci_dev* %121, i32 %122, i32 %123)
  %125 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %126 = load i32, i32* @CAST, align 4
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @cs5536_write(%struct.pci_dev* %125, i32 %126, i32 %127)
  %129 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %130 = load i32, i32* @ETC, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @cs5536_write(%struct.pci_dev* %129, i32 %130, i32 %131)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @cs5536_read(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cs5536_write(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

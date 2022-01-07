; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atp867x.c_atp867x_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_atp867x.c_atp867x_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.atp867x_priv* }
%struct.atp867x_priv = type { i32, i32, i32, i32 }
%struct.ata_device = type { i32, i32 }
%struct.ata_timing = type { i32, i32, i32, i32 }

@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_SLAVE_MASK = common dso_local global i32 0, align 4
@ATP867X_IO_DMAMODE_MSTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @atp867x_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp867x_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca %struct.atp867x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_timing, align 4
  %9 = alloca %struct.ata_timing, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %13)
  store %struct.ata_device* %14, %struct.ata_device** %5, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load %struct.atp867x_priv*, %struct.atp867x_priv** %16, align 8
  store %struct.atp867x_priv* %17, %struct.atp867x_priv** %6, align 8
  %18 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %19 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  store i32 30000, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sdiv i32 %21, 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @ata_timing_compute(%struct.ata_device* %23, i32 %24, %struct.ata_timing* %8, i32 %25, i32 %26)
  %28 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %29 = icmp ne %struct.ata_device* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %37 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ata_timing_compute(%struct.ata_device* %36, i32 %39, %struct.ata_timing* %9, i32 %40, i32 %41)
  %43 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %44 = call i32 @ata_timing_merge(%struct.ata_timing* %9, %struct.ata_timing* %8, %struct.ata_timing* %8, i32 %43)
  br label %45

45:                                               ; preds = %35, %30, %2
  %46 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %47 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ioread8(i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ATP867X_IO_DMAMODE_SLAVE_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  store i32 %59, i32* %12, align 4
  br label %65

60:                                               ; preds = %45
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @ATP867X_IO_DMAMODE_MSTR_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %68 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @iowrite8(i32 %66, i32 %69)
  %71 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %72 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @atp867x_get_active_clocks_shifted(%struct.ata_port* %71, i32 %73)
  %75 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @atp867x_get_recover_clocks_shifted(i32 %76)
  %78 = or i32 %74, %77
  store i32 %78, i32* %12, align 4
  %79 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %80 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %65
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %87 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @iowrite8(i32 %85, i32 %88)
  br label %96

90:                                               ; preds = %65
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %93 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @iowrite8(i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %98 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @atp867x_get_active_clocks_shifted(%struct.ata_port* %97, i32 %99)
  %101 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %8, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @atp867x_get_recover_clocks_shifted(i32 %102)
  %104 = or i32 %100, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.atp867x_priv*, %struct.atp867x_priv** %6, align 8
  %107 = getelementptr inbounds %struct.atp867x_priv, %struct.atp867x_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @iowrite8(i32 %105, i32 %108)
  ret void
}

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @atp867x_get_active_clocks_shifted(%struct.ata_port*, i32) #1

declare dso_local i32 @atp867x_get_recover_clocks_shifted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_winbond_set_piomode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_legacy.c_winbond_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.legacy_data* }
%struct.legacy_data = type { i32 }
%struct.ata_device = type { i32, i64, i32 }
%struct.ata_timing = type { i32, i32, i32 }

@ATA_DEV_ATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @winbond_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @winbond_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_timing, align 4
  %6 = alloca %struct.legacy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.legacy_data*, %struct.legacy_data** %14, align 8
  store %struct.legacy_data* %15, %struct.legacy_data** %6, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 4
  %20 = add nsw i32 136, %19
  %21 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %22 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %27 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @winbond_readcfg(i32 %28, i32 129)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 64
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ata_timing_compute(%struct.ata_device* %34, i32 %37, %struct.ata_timing* %5, i32 20000, i32 1000)
  br label %45

39:                                               ; preds = %2
  %40 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %41 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %42 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ata_timing_compute(%struct.ata_device* %40, i32 %43, %struct.ata_timing* %5, i32 30303, i32 1000)
  br label %45

45:                                               ; preds = %39, %33
  %46 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clamp_val(i32 %47, i32 3, i32 17)
  %49 = sub nsw i32 %48, 1
  %50 = and i32 %49, 15
  store i32 %50, i32* %7, align 4
  %51 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clamp_val(i32 %52, i32 1, i32 15)
  %54 = add nsw i32 %53, 1
  %55 = and i32 %54, 15
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %61 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @winbond_writecfg(i32 %62, i32 %63, i32 %64)
  store i32 53, i32* %9, align 4
  %66 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %67 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ATA_DEV_ATA, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %45
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, 8
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %45
  %75 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %76 = call i32 @ata_pio_need_iordy(%struct.ata_device* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, 2
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clamp_val(i32 %83, i32 0, i32 3)
  %85 = shl i32 %84, 6
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.legacy_data*, %struct.legacy_data** %6, align 8
  %89 = getelementptr inbounds %struct.legacy_data, %struct.legacy_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @winbond_writecfg(i32 %90, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @winbond_readcfg(i32, i32) #1

declare dso_local i32 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @winbond_writecfg(i32, i32, i32) #1

declare dso_local i32 @ata_pio_need_iordy(%struct.ata_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

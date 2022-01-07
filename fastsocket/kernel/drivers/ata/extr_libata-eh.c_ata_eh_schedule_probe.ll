; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_schedule_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_schedule_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { i32, i32, i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ata_link = type { i32 }

@ATA_EH_RESET = common dso_local global i32 0, align 4
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@ata_count_probe_trials_cb = common dso_local global i32 0, align 4
@ATA_EH_PROBE_TRIALS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_eh_schedule_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_schedule_probe(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_eh_context*, align 8
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %7 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %8 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.ata_eh_context* %10, %struct.ata_eh_context** %4, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = call %struct.ata_link* @ata_dev_phys_link(%struct.ata_device* %11)
  store %struct.ata_link* %12, %struct.ata_link** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %14 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %18 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %25 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = and i32 %26, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %1
  store i32 0, i32* %2, align 4
  br label %85

34:                                               ; preds = %23
  %35 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %36 = call i32 @ata_eh_detach_dev(%struct.ata_device* %35)
  %37 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %38 = call i32 @ata_dev_init(%struct.ata_device* %37)
  %39 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 1, %41
  %43 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %44 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @ATA_EH_RESET, align 4
  %48 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %49 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %54 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %57 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  store i64 0, i64* %60, align 8
  %61 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %67 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %71 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %70, i32 0, i32 1
  %72 = load i32, i32* @AC_ERR_OTHER, align 4
  %73 = call i32 @ata_ering_record(i32* %71, i32 0, i32 %72)
  %74 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %75 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %74, i32 0, i32 1
  %76 = load i32, i32* @ata_count_probe_trials_cb, align 4
  %77 = call i32 @ata_ering_map(i32* %75, i32 %76, i32* %6)
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @ATA_EH_PROBE_TRIALS, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %34
  %82 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %83 = call i32 @sata_down_spd_limit(%struct.ata_link* %82, i32 1)
  br label %84

84:                                               ; preds = %81, %34
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %33
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.ata_link* @ata_dev_phys_link(%struct.ata_device*) #1

declare dso_local i32 @ata_eh_detach_dev(%struct.ata_device*) #1

declare dso_local i32 @ata_dev_init(%struct.ata_device*) #1

declare dso_local i32 @ata_ering_record(i32*, i32, i32) #1

declare dso_local i32 @ata_ering_map(i32*, i32, i32*) #1

declare dso_local i32 @sata_down_spd_limit(%struct.ata_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

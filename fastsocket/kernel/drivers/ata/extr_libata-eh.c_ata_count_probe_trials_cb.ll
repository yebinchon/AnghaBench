; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_count_probe_trials_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_count_probe_trials_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ering_entry = type { i64 }

@ATA_EH_PROBE_TRIAL_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_ering_entry*, i8*)* @ata_count_probe_trials_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_count_probe_trials_cb(%struct.ata_ering_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_ering_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.ata_ering_entry* %0, %struct.ata_ering_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @ATA_EH_PROBE_TRIAL_INTERVAL, align 4
  %10 = call i64 @msecs_to_jiffies(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = call i64 (...) @get_jiffies_64()
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %4, align 8
  %15 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @min(i64 %18, i64 %19)
  %21 = sub nsw i64 %17, %20
  %22 = icmp slt i64 %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @get_jiffies_64(...) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_get_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.MR_FW_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_arm(%struct.megasas_instance* %0, i64 %1, i64 %2, i32 %3, %struct.MR_FW_RAID_MAP_ALL* %4) #0 {
  %6 = alloca %struct.megasas_instance*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.MR_FW_RAID_MAP_ALL*, align 8
  %11 = alloca %struct.MR_LD_RAID*, align 8
  %12 = alloca i64, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.MR_FW_RAID_MAP_ALL* %4, %struct.MR_FW_RAID_MAP_ALL** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %10, align 8
  %15 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i64 %13, %struct.MR_FW_RAID_MAP_ALL* %14)
  store %struct.MR_LD_RAID* %15, %struct.MR_LD_RAID** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %11, align 8
  %17 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %38 [
    i32 0, label %19
    i32 5, label %19
    i32 6, label %19
    i32 1, label %26
  ]

19:                                               ; preds = %5, %5, %5
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL* %21, i64 %22, i64 %23)
  %25 = call i64 @mega_mod64(i32 %20, i32 %24)
  store i64 %25, i64* %12, align 8
  br label %38

26:                                               ; preds = %5
  %27 = load %struct.megasas_instance*, %struct.megasas_instance** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.MR_FW_RAID_MAP_ALL*, %struct.MR_FW_RAID_MAP_ALL** %10, align 8
  %31 = call i64 @get_arm_from_strip(%struct.megasas_instance* %27, i64 %28, i32 %29, %struct.MR_FW_RAID_MAP_ALL* %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i64, i64* %12, align 8
  %36 = mul i64 %35, 2
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %34, %26
  br label %38

38:                                               ; preds = %5, %37, %19
  %39 = load i64, i64* %12, align 8
  ret i64 %39
}

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i64, %struct.MR_FW_RAID_MAP_ALL*) #1

declare dso_local i64 @mega_mod64(i32, i32) #1

declare dso_local i32 @SPAN_ROW_SIZE(%struct.MR_FW_RAID_MAP_ALL*, i64, i64) #1

declare dso_local i64 @get_arm_from_strip(%struct.megasas_instance*, i64, i32, %struct.MR_FW_RAID_MAP_ALL*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_lookup_phase_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_lookup_phase_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_phase_table_entry = type { i32 }

@ahc_phase_table = common dso_local global %struct.ahc_phase_table_entry* null, align 8
@num_phases = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ahc_phase_table_entry* (i32)* @ahc_lookup_phase_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ahc_phase_table_entry* @ahc_lookup_phase_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_phase_table_entry*, align 8
  %4 = alloca %struct.ahc_phase_table_entry*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** @ahc_phase_table, align 8
  %6 = load i64, i64* @num_phases, align 8
  %7 = getelementptr inbounds %struct.ahc_phase_table_entry, %struct.ahc_phase_table_entry* %5, i64 %6
  store %struct.ahc_phase_table_entry* %7, %struct.ahc_phase_table_entry** %4, align 8
  %8 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** @ahc_phase_table, align 8
  store %struct.ahc_phase_table_entry* %8, %struct.ahc_phase_table_entry** %3, align 8
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** %3, align 8
  %11 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** %4, align 8
  %12 = icmp ult %struct.ahc_phase_table_entry* %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** %3, align 8
  %16 = getelementptr inbounds %struct.ahc_phase_table_entry, %struct.ahc_phase_table_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** %3, align 8
  %23 = getelementptr inbounds %struct.ahc_phase_table_entry, %struct.ahc_phase_table_entry* %22, i32 1
  store %struct.ahc_phase_table_entry* %23, %struct.ahc_phase_table_entry** %3, align 8
  br label %9

24:                                               ; preds = %19, %9
  %25 = load %struct.ahc_phase_table_entry*, %struct.ahc_phase_table_entry** %3, align 8
  ret %struct.ahc_phase_table_entry* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-rs.c_il3945_get_rate_idx_by_rssi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-rs.c_il3945_get_rate_idx_by_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il3945_tpt_entry = type { i64, i32 }

@IL_MIN_RSSI_VAL = common dso_local global i64 0, align 8
@IL_MAX_RSSI_VAL = common dso_local global i64 0, align 8
@il3945_tpt_table_g = common dso_local global %struct.il3945_tpt_entry* null, align 8
@il3945_tpt_table_a = common dso_local global %struct.il3945_tpt_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @il3945_get_rate_idx_by_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_get_rate_idx_by_rssi(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.il3945_tpt_entry*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store %struct.il3945_tpt_entry* null, %struct.il3945_tpt_entry** %7, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @IL_MIN_RSSI_VAL, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @IL_MAX_RSSI_VAL, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i64, i64* @IL_MIN_RSSI_VAL, align 8
  store i64 %16, i64* %3, align 8
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %27 [
    i32 129, label %19
    i32 128, label %23
  ]

19:                                               ; preds = %17
  %20 = load %struct.il3945_tpt_entry*, %struct.il3945_tpt_entry** @il3945_tpt_table_g, align 8
  store %struct.il3945_tpt_entry* %20, %struct.il3945_tpt_entry** %7, align 8
  %21 = load %struct.il3945_tpt_entry*, %struct.il3945_tpt_entry** @il3945_tpt_table_g, align 8
  %22 = call i64 @ARRAY_SIZE(%struct.il3945_tpt_entry* %21)
  store i64 %22, i64* %6, align 8
  br label %29

23:                                               ; preds = %17
  %24 = load %struct.il3945_tpt_entry*, %struct.il3945_tpt_entry** @il3945_tpt_table_a, align 8
  store %struct.il3945_tpt_entry* %24, %struct.il3945_tpt_entry** %7, align 8
  %25 = load %struct.il3945_tpt_entry*, %struct.il3945_tpt_entry** @il3945_tpt_table_a, align 8
  %26 = call i64 @ARRAY_SIZE(%struct.il3945_tpt_entry* %25)
  store i64 %26, i64* %6, align 8
  br label %29

27:                                               ; preds = %17
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %23, %19
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.il3945_tpt_entry*, %struct.il3945_tpt_entry** %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.il3945_tpt_entry, %struct.il3945_tpt_entry* %36, i64 %37
  %39 = getelementptr inbounds %struct.il3945_tpt_entry, %struct.il3945_tpt_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %35, %40
  br label %42

42:                                               ; preds = %34, %30
  %43 = phi i1 [ false, %30 ], [ %41, %34 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %30

47:                                               ; preds = %42
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = sub i64 %49, 1
  %51 = call i64 @min(i64 %48, i64 %50)
  store i64 %51, i64* %5, align 8
  %52 = load %struct.il3945_tpt_entry*, %struct.il3945_tpt_entry** %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds %struct.il3945_tpt_entry, %struct.il3945_tpt_entry* %52, i64 %53
  %55 = getelementptr inbounds %struct.il3945_tpt_entry, %struct.il3945_tpt_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  ret i32 %56
}

declare dso_local i64 @ARRAY_SIZE(%struct.il3945_tpt_entry*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

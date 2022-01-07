; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_table_clear_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_table_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_filter_table = type { i64, i32, i64, i32*, i32, i32 }

@efx_filter_table_clear_entry.filter = internal global i32 0, align 4
@EFX_FILTER_TABLE_RX_DEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_filter_table*, i32)* @efx_filter_table_clear_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_filter_table_clear_entry(%struct.efx_nic* %0, %struct.efx_filter_table* %1, i32 %2) #0 {
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_filter_table*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.efx_filter_table* %1, %struct.efx_filter_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %8 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EFX_FILTER_TABLE_RX_DEF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @efx_filter_reset_rx_def(%struct.efx_nic* %13, i32 %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %17 = call i32 @efx_filter_push_rx_config(%struct.efx_nic* %16)
  br label %55

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %21 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %28 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__clear_bit(i32 %26, i32 %29)
  %31 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %32 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %36 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call i32 @memset(i32* %40, i32 0, i32 4)
  %42 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %43 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %44 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %47 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = call i32 @efx_writeo(%struct.efx_nic* %42, i32* @efx_filter_table_clear_entry.filter, i64 %52)
  br label %54

54:                                               ; preds = %25, %18
  br label %55

55:                                               ; preds = %54, %12
  ret void
}

declare dso_local i32 @efx_filter_reset_rx_def(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_filter_push_rx_config(%struct.efx_nic*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

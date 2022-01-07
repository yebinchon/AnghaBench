; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_table_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_table_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_filter_state* }
%struct.efx_filter_state = type { i32, %struct.efx_filter_table* }
%struct.efx_filter_table = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32, i32)* @efx_filter_table_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_filter_table_clear(%struct.efx_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_filter_state*, align 8
  %8 = alloca %struct.efx_filter_table*, align 8
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load %struct.efx_filter_state*, %struct.efx_filter_state** %11, align 8
  store %struct.efx_filter_state* %12, %struct.efx_filter_state** %7, align 8
  %13 = load %struct.efx_filter_state*, %struct.efx_filter_state** %7, align 8
  %14 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %13, i32 0, i32 1
  %15 = load %struct.efx_filter_table*, %struct.efx_filter_table** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %15, i64 %17
  store %struct.efx_filter_table* %18, %struct.efx_filter_table** %8, align 8
  %19 = load %struct.efx_filter_state*, %struct.efx_filter_state** %7, align 8
  %20 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_bh(i32* %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %45, %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.efx_filter_table*, %struct.efx_filter_table** %8, align 8
  %25 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = load %struct.efx_filter_table*, %struct.efx_filter_table** %8, align 8
  %30 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %41 = load %struct.efx_filter_table*, %struct.efx_filter_table** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @efx_filter_table_clear_entry(%struct.efx_nic* %40, %struct.efx_filter_table* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load %struct.efx_filter_table*, %struct.efx_filter_table** %8, align 8
  %50 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.efx_filter_table*, %struct.efx_filter_table** %8, align 8
  %55 = call i32 @efx_filter_table_reset_search_depth(%struct.efx_filter_table* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.efx_filter_state*, %struct.efx_filter_state** %7, align 8
  %58 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @efx_filter_table_clear_entry(%struct.efx_nic*, %struct.efx_filter_table*, i32) #1

declare dso_local i32 @efx_filter_table_reset_search_depth(%struct.efx_filter_table*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_remove_id_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_remove_id_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_filter_state* }
%struct.efx_filter_state = type { i32, %struct.efx_filter_table* }
%struct.efx_filter_table = type { i32, i64, i32, %struct.efx_filter_spec* }
%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_filter_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_filter_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_filter_spec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = load %struct.efx_filter_state*, %struct.efx_filter_state** %16, align 8
  store %struct.efx_filter_state* %17, %struct.efx_filter_state** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @efx_filter_id_table_id(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @EFX_FILTER_TABLE_COUNT, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load %struct.efx_filter_state*, %struct.efx_filter_state** %8, align 8
  %28 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %27, i32 0, i32 1
  %29 = load %struct.efx_filter_table*, %struct.efx_filter_table** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %29, i64 %31
  store %struct.efx_filter_table* %32, %struct.efx_filter_table** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @efx_filter_id_index(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.efx_filter_table*, %struct.efx_filter_table** %10, align 8
  %37 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %88

43:                                               ; preds = %26
  %44 = load %struct.efx_filter_table*, %struct.efx_filter_table** %10, align 8
  %45 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %44, i32 0, i32 3
  %46 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %46, i64 %48
  store %struct.efx_filter_spec* %49, %struct.efx_filter_spec** %12, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @efx_filter_id_flags(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.efx_filter_state*, %struct.efx_filter_state** %8, align 8
  %53 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_bh(i32* %53)
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.efx_filter_table*, %struct.efx_filter_table** %10, align 8
  %57 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @test_bit(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %43
  %62 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %12, align 8
  %63 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %61
  %68 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %69 = load %struct.efx_filter_table*, %struct.efx_filter_table** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @efx_filter_table_clear_entry(%struct.efx_nic* %68, %struct.efx_filter_table* %69, i32 %70)
  %72 = load %struct.efx_filter_table*, %struct.efx_filter_table** %10, align 8
  %73 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.efx_filter_table*, %struct.efx_filter_table** %10, align 8
  %78 = call i32 @efx_filter_table_reset_search_depth(%struct.efx_filter_table* %77)
  br label %79

79:                                               ; preds = %76, %67
  store i32 0, i32* %14, align 4
  br label %83

80:                                               ; preds = %61, %43
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.efx_filter_state*, %struct.efx_filter_state** %8, align 8
  %85 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %84, i32 0, i32 0
  %86 = call i32 @spin_unlock_bh(i32* %85)
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %40, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @efx_filter_id_table_id(i32) #1

declare dso_local i32 @efx_filter_id_index(i32) #1

declare dso_local i32 @efx_filter_id_flags(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @efx_filter_table_clear_entry(%struct.efx_nic*, %struct.efx_filter_table*, i32) #1

declare dso_local i32 @efx_filter_table_reset_search_depth(%struct.efx_filter_table*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

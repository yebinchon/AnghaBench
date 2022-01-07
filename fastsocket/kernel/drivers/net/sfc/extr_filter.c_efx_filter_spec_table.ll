; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_spec_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_spec_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_table = type { i32 }
%struct.efx_filter_state = type { %struct.efx_filter_table* }
%struct.efx_filter_spec = type { i64 }

@EFX_FILTER_UNSPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efx_filter_table* (%struct.efx_filter_state*, %struct.efx_filter_spec*)* @efx_filter_spec_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efx_filter_table* @efx_filter_spec_table(%struct.efx_filter_state* %0, %struct.efx_filter_spec* %1) #0 {
  %3 = alloca %struct.efx_filter_table*, align 8
  %4 = alloca %struct.efx_filter_state*, align 8
  %5 = alloca %struct.efx_filter_spec*, align 8
  store %struct.efx_filter_state* %0, %struct.efx_filter_state** %4, align 8
  store %struct.efx_filter_spec* %1, %struct.efx_filter_spec** %5, align 8
  %6 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %7 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EFX_FILTER_UNSPEC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.efx_filter_table* null, %struct.efx_filter_table** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.efx_filter_state*, %struct.efx_filter_state** %4, align 8
  %14 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %13, i32 0, i32 0
  %15 = load %struct.efx_filter_table*, %struct.efx_filter_table** %14, align 8
  %16 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %17 = call i64 @efx_filter_spec_table_id(%struct.efx_filter_spec* %16)
  %18 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %15, i64 %17
  store %struct.efx_filter_table* %18, %struct.efx_filter_table** %3, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load %struct.efx_filter_table*, %struct.efx_filter_table** %3, align 8
  ret %struct.efx_filter_table* %20
}

declare dso_local i64 @efx_filter_spec_table_id(%struct.efx_filter_spec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

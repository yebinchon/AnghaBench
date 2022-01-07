; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_get_filter_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_get_filter_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_filter_state* }
%struct.efx_filter_state = type { i32, %struct.efx_filter_table* }
%struct.efx_filter_table = type { i32, i32, %struct.efx_filter_spec* }
%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_TABLE_COUNT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_filter_get_filter_safe(%struct.efx_nic* %0, i32 %1, i32 %2, %struct.efx_filter_spec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.efx_filter_spec*, align 8
  %10 = alloca %struct.efx_filter_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.efx_filter_table*, align 8
  %13 = alloca %struct.efx_filter_spec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.efx_filter_spec* %3, %struct.efx_filter_spec** %9, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load %struct.efx_filter_state*, %struct.efx_filter_state** %18, align 8
  store %struct.efx_filter_state* %19, %struct.efx_filter_state** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @efx_filter_id_table_id(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @EFX_FILTER_TABLE_COUNT, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %82

28:                                               ; preds = %4
  %29 = load %struct.efx_filter_state*, %struct.efx_filter_state** %10, align 8
  %30 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %29, i32 0, i32 1
  %31 = load %struct.efx_filter_table*, %struct.efx_filter_table** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %31, i64 %33
  store %struct.efx_filter_table* %34, %struct.efx_filter_table** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @efx_filter_id_index(i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.efx_filter_table*, %struct.efx_filter_table** %12, align 8
  %39 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @ENOENT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %82

45:                                               ; preds = %28
  %46 = load %struct.efx_filter_table*, %struct.efx_filter_table** %12, align 8
  %47 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %46, i32 0, i32 2
  %48 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %48, i64 %50
  store %struct.efx_filter_spec* %51, %struct.efx_filter_spec** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @efx_filter_id_flags(i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.efx_filter_state*, %struct.efx_filter_state** %10, align 8
  %55 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_bh(i32* %55)
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.efx_filter_table*, %struct.efx_filter_table** %12, align 8
  %59 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @test_bit(i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %45
  %64 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %13, align 8
  %65 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %9, align 8
  %71 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %13, align 8
  %72 = bitcast %struct.efx_filter_spec* %70 to i8*
  %73 = bitcast %struct.efx_filter_spec* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  store i32 0, i32* %16, align 4
  br label %77

74:                                               ; preds = %63, %45
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %16, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.efx_filter_state*, %struct.efx_filter_state** %10, align 8
  %79 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %77, %42, %25
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @efx_filter_id_table_id(i32) #1

declare dso_local i32 @efx_filter_id_index(i32) #1

declare dso_local i32 @efx_filter_id_flags(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

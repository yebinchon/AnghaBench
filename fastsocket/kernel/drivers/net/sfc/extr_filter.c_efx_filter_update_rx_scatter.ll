; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_update_rx_scatter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_filter.c_efx_filter_update_rx_scatter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i64, %struct.efx_filter_state* }
%struct.efx_filter_state = type { i32, %struct.efx_filter_table* }
%struct.efx_filter_table = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EFX_FILTER_TABLE_RX_IP = common dso_local global i32 0, align 4
@EFX_FILTER_TABLE_RX_DEF = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_SCATTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_filter_update_rx_scatter(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_filter_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_filter_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 2
  %10 = load %struct.efx_filter_state*, %struct.efx_filter_state** %9, align 8
  store %struct.efx_filter_state* %10, %struct.efx_filter_state** %3, align 8
  %11 = load %struct.efx_filter_state*, %struct.efx_filter_state** %3, align 8
  %12 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load i32, i32* @EFX_FILTER_TABLE_RX_IP, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %110, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EFX_FILTER_TABLE_RX_DEF, align 4
  %18 = icmp ule i32 %16, %17
  br i1 %18, label %19, label %113

19:                                               ; preds = %15
  %20 = load %struct.efx_filter_state*, %struct.efx_filter_state** %3, align 8
  %21 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %20, i32 0, i32 1
  %22 = load %struct.efx_filter_table*, %struct.efx_filter_table** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %22, i64 %24
  store %struct.efx_filter_table* %25, %struct.efx_filter_table** %5, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %106, %19
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %29 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %109

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %35 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %41 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39, %32
  br label %106

53:                                               ; preds = %39
  %54 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load i32, i32* @EFX_FILTER_FLAG_RX_SCATTER, align 4
  %60 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %61 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %60, i32 0, i32 3
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %59
  store i32 %68, i32* %66, align 8
  br label %81

69:                                               ; preds = %53
  %70 = load i32, i32* @EFX_FILTER_FLAG_RX_SCATTER, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %73 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %71
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %69, %58
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @EFX_FILTER_TABLE_RX_DEF, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %106

86:                                               ; preds = %81
  %87 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %88 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = call i32 @efx_filter_build(i32* %6, %struct.TYPE_2__* %92)
  %94 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %95 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %96 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.efx_filter_table*, %struct.efx_filter_table** %5, align 8
  %99 = getelementptr inbounds %struct.efx_filter_table, %struct.efx_filter_table* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = mul i32 %100, %101
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %97, %103
  %105 = call i32 @efx_writeo(%struct.efx_nic* %94, i32* %6, i64 %104)
  br label %106

106:                                              ; preds = %86, %85, %52
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %26

109:                                              ; preds = %26
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %15

113:                                              ; preds = %15
  %114 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %115 = call i32 @efx_filter_push_rx_config(%struct.efx_nic* %114)
  %116 = load %struct.efx_filter_state*, %struct.efx_filter_state** %3, align 8
  %117 = getelementptr inbounds %struct.efx_filter_state, %struct.efx_filter_state* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock_bh(i32* %117)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @efx_filter_build(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i64) #1

declare dso_local i32 @efx_filter_push_rx_config(%struct.efx_nic*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

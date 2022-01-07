; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_allocate_int_sta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_allocate_int_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32*, i32 }
%struct.iwl_mvm_int_sta = type { i64, i32 }

@IWL_MVM_STATUS_IN_HW_RESTART = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_allocate_int_sta(%struct.iwl_mvm* %0, %struct.iwl_mvm_int_sta* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_mvm_int_sta*, align 8
  %7 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm_int_sta* %1, %struct.iwl_mvm_int_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @IWL_MVM_STATUS_IN_HW_RESTART, align 4
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = call i64 @iwl_mvm_find_free_sta_id(%struct.iwl_mvm* %14)
  %16 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %46

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.iwl_mvm_int_sta*, %struct.iwl_mvm_int_sta** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_mvm_int_sta, %struct.iwl_mvm_int_sta* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @ERR_PTR(i32 %43)
  %45 = call i32 @rcu_assign_pointer(i32 %41, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %30, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @iwl_mvm_find_free_sta_id(%struct.iwl_mvm*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

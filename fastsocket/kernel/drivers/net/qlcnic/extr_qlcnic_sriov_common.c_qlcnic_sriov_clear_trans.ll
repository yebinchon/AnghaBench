; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_clear_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_clear_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_vf_info = type { i32, i32*, %struct.qlcnic_trans_list }
%struct.qlcnic_trans_list = type { i64, i32 }
%struct.qlcnic_bc_trans = type { i32 }

@QLC_BC_RESPONSE = common dso_local global i64 0, align 8
@QLC_BC_COMMAND = common dso_local global i64 0, align 8
@QLC_BC_VF_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_vf_info*, %struct.qlcnic_bc_trans*, i64)* @qlcnic_sriov_clear_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_clear_trans(%struct.qlcnic_vf_info* %0, %struct.qlcnic_bc_trans* %1, i64 %2) #0 {
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.qlcnic_bc_trans*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlcnic_trans_list*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_vf_info* %0, %struct.qlcnic_vf_info** %4, align 8
  store %struct.qlcnic_bc_trans* %1, %struct.qlcnic_bc_trans** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @QLC_BC_RESPONSE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %3
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 2
  store %struct.qlcnic_trans_list* %15, %struct.qlcnic_trans_list** %7, align 8
  %16 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %17 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %16, i32 0, i32 1
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %21 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %24, i32 0, i32 0
  %26 = call i32 @list_del(i32* %25)
  %27 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %28 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.qlcnic_trans_list*, %struct.qlcnic_trans_list** %7, align 8
  %34 = getelementptr inbounds %struct.qlcnic_trans_list, %struct.qlcnic_trans_list* %33, i32 0, i32 1
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %32, %3
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @QLC_BC_COMMAND, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i32, i32* @QLC_BC_VF_SEND, align 4
  %44 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %45 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %44, i32 0, i32 0
  %46 = call i64 @test_and_set_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @msleep(i32 100)
  br label %42

50:                                               ; preds = %42
  %51 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %52 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* @QLC_BC_VF_SEND, align 4
  %54 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %55 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %54, i32 0, i32 0
  %56 = call i32 @clear_bit(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %50, %37
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

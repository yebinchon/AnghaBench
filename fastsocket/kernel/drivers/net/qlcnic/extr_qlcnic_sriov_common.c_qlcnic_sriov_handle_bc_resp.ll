; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_bc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_hdr = type { i64 }
%struct.qlcnic_vf_info = type { i32, i32, %struct.qlcnic_bc_trans* }
%struct.qlcnic_bc_trans = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@QLC_BC_VF_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_bc_hdr*, %struct.qlcnic_vf_info*)* @qlcnic_sriov_handle_bc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_handle_bc_resp(%struct.qlcnic_bc_hdr* %0, %struct.qlcnic_vf_info* %1) #0 {
  %3 = alloca %struct.qlcnic_bc_hdr*, align 8
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.qlcnic_bc_trans*, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_bc_hdr* %0, %struct.qlcnic_bc_hdr** %3, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %4, align 8
  %7 = load i32, i32* @QLC_BC_VF_SEND, align 4
  %8 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %8, i32 0, i32 0
  %10 = call i64 @test_and_set_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %81

13:                                               ; preds = %2
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 2
  %16 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %15, align 8
  store %struct.qlcnic_bc_trans* %16, %struct.qlcnic_bc_trans** %5, align 8
  %17 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %18 = icmp eq %struct.qlcnic_bc_trans* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %76

20:                                               ; preds = %13
  %21 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %3, align 8
  %25 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %76

29:                                               ; preds = %20
  %30 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %31 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %34 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %38 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %41 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %46
  %48 = bitcast %struct.TYPE_2__* %47 to i32*
  %49 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %50 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %53 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @qlcnic_sriov_pull_bc_msg(i32 %39, i32* %48, i32* %57, i32 %58)
  %60 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %61 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %63 to i64
  %65 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %29
  br label %76

72:                                               ; preds = %29
  %73 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %5, align 8
  %74 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %73, i32 0, i32 3
  %75 = call i32 @complete(i32* %74)
  br label %76

76:                                               ; preds = %72, %71, %28, %19
  %77 = load i32, i32* @QLC_BC_VF_SEND, align 4
  %78 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %79 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %78, i32 0, i32 0
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %12
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_get_bc_paysize(i32, i32) #1

declare dso_local i32 @qlcnic_sriov_pull_bc_msg(i32, i32*, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

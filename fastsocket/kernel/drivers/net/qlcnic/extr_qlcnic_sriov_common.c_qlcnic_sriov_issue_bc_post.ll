; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_issue_bc_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_issue_bc_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i64, i64, i32, i64, i64, i64, i32, i64, i64, %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QLC_BC_COMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, i64)* @qlcnic_sriov_issue_bc_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_issue_bc_post(%struct.qlcnic_bc_trans* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %14 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %13, i32 0, i32 9
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %14, align 8
  store %struct.qlcnic_vf_info* %15, %struct.qlcnic_vf_info** %6, align 8
  %16 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %17 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  %19 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %20 = call i64 @__qlcnic_sriov_issue_bc_post(%struct.qlcnic_vf_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %95

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @QLC_BC_COMMAND, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %31 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %39 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %42 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %10, align 8
  store i32 1, i32* %8, align 4
  %46 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %47 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %50 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %48, i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %85

57:                                               ; preds = %25
  %58 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %59 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %62 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %9, align 8
  %66 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %67 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %70 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %10, align 8
  store i32 1, i32* %8, align 4
  %74 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %78 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @qlcnic_sriov_get_bc_paysize(i32 %76, i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %57, %29
  %86 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %87 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @qlcnic_sriov_post_bc_msg(i32 %88, i32* %89, i32* %90, i64 %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %85, %22
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @__qlcnic_sriov_issue_bc_post(%struct.qlcnic_vf_info*) #1

declare dso_local i32 @qlcnic_sriov_get_bc_paysize(i32, i64) #1

declare dso_local i32 @qlcnic_sriov_post_bc_msg(i32, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

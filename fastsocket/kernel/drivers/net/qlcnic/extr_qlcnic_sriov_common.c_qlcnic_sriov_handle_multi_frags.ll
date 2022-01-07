; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_multi_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_handle_multi_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i64, i64, i8*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@QLC_BC_RESPONSE = common dso_local global i64 0, align 8
@QLC_INIT = common dso_local global i8* null, align 8
@QLC_END = common dso_local global i8* null, align 8
@QLC_WAIT_FOR_RESP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_bc_trans*, i64)* @qlcnic_sriov_handle_multi_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_handle_multi_frags(%struct.qlcnic_bc_trans* %0, i64 %1) #0 {
  %3 = alloca %struct.qlcnic_bc_trans*, align 8
  %4 = alloca i64, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @QLC_BC_RESPONSE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %8
  %23 = load i8*, i8** @QLC_INIT, align 8
  %24 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %25 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %30

26:                                               ; preds = %8
  %27 = load i8*, i8** @QLC_END, align 8
  %28 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %29 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  br label %54

31:                                               ; preds = %2
  %32 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %37 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i8*, i8** @QLC_INIT, align 8
  %47 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %48 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %53

49:                                               ; preds = %31
  %50 = load i8*, i8** @QLC_WAIT_FOR_RESP, align 8
  %51 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %52 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

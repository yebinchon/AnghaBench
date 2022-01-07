; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_set_vport_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_set_vport_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, i8*, i64)* @qlcnic_sriov_pf_set_vport_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_sriov_pf_set_vport_handle(%struct.qlcnic_adapter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlcnic_sriov*, align 8
  %8 = alloca %struct.qlcnic_vport*, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %13, align 8
  store %struct.qlcnic_sriov* %14, %struct.qlcnic_sriov** %7, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %7, align 8
  %25 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %45

26:                                               ; preds = %3
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter* %27, i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %45

33:                                               ; preds = %26
  %34 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %7, align 8
  %35 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %40, align 8
  store %struct.qlcnic_vport* %41, %struct.qlcnic_vport** %8, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %8, align 8
  %44 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %32, %33, %22
  ret void
}

declare dso_local i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

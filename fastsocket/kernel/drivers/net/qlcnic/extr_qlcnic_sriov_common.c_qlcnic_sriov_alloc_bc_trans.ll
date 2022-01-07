; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_alloc_bc_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_alloc_bc_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans**)* @qlcnic_sriov_alloc_bc_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_alloc_bc_trans(%struct.qlcnic_bc_trans** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_bc_trans**, align 8
  store %struct.qlcnic_bc_trans** %0, %struct.qlcnic_bc_trans*** %3, align 8
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.qlcnic_bc_trans* @kzalloc(i32 4, i32 %4)
  %6 = load %struct.qlcnic_bc_trans**, %struct.qlcnic_bc_trans*** %3, align 8
  store %struct.qlcnic_bc_trans* %5, %struct.qlcnic_bc_trans** %6, align 8
  %7 = load %struct.qlcnic_bc_trans**, %struct.qlcnic_bc_trans*** %3, align 8
  %8 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %7, align 8
  %9 = icmp ne %struct.qlcnic_bc_trans* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_bc_trans**, %struct.qlcnic_bc_trans*** %3, align 8
  %15 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %14, align 8
  %16 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %15, i32 0, i32 0
  %17 = call i32 @init_completion(i32* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.qlcnic_bc_trans* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_vf* }
%struct.efx_vf = type { i32 }
%struct.efx_buffer = type { i32 }

@EFX_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_sriov_reset(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_buffer, align 4
  %5 = alloca %struct.efx_vf*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %14 = call i32 @efx_sriov_usrev(%struct.efx_nic* %13, i32 1)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = call i32 @efx_sriov_cmd(%struct.efx_nic* %15, i32 1, i32* null, i32* null)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = load i32, i32* @EFX_PAGE_SIZE, align 4
  %19 = call i64 @efx_nic_alloc_buffer(%struct.efx_nic* %17, %struct.efx_buffer* %4, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %44

22:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 1
  %32 = load %struct.efx_vf*, %struct.efx_vf** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %32, i64 %34
  store %struct.efx_vf* %35, %struct.efx_vf** %5, align 8
  %36 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %37 = call i32 @efx_sriov_reset_vf(%struct.efx_vf* %36, %struct.efx_buffer* %4)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %43 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %42, %struct.efx_buffer* %4)
  br label %44

44:                                               ; preds = %41, %21, %11
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @efx_sriov_usrev(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

declare dso_local i64 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.efx_buffer*, i32) #1

declare dso_local i32 @efx_sriov_reset_vf(%struct.efx_vf*, %struct.efx_buffer*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.efx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

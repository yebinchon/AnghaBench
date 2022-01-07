; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_tx_flush_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_tx_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_vf = type { i32, i32, i32 }

@FSF_AZ_DRIVER_EV_SUBDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_sriov_tx_flush_done(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.efx_vf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FSF_AZ_DRIVER_EV_SUBDATA, align 4
  %11 = call i32 @EFX_QWORD_FIELD(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @map_vi_index(%struct.efx_nic* %12, i32 %13, %struct.efx_vf** %5, i32* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %20 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %42

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %28 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @__clear_bit(i32 %26, i32 %29)
  %31 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %32 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %36 = call i64 @efx_vfdi_flush_wake(%struct.efx_vf* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %40 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %39, i32 0, i32 0
  %41 = call i32 @wake_up(i32* %40)
  br label %42

42:                                               ; preds = %16, %24, %38, %25
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i64 @map_vi_index(%struct.efx_nic*, i32, %struct.efx_vf**, i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @efx_vfdi_flush_wake(%struct.efx_vf*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

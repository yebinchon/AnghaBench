; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_map_vi_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_map_vi_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_vf* }
%struct.efx_vf = type { i32 }

@EFX_VI_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, %struct.efx_vf**, i32*)* @map_vi_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_vi_index(%struct.efx_nic* %0, i32 %1, %struct.efx_vf** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_vf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.efx_vf** %2, %struct.efx_vf*** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @EFX_VI_BASE, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %49

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EFX_VI_BASE, align 4
  %18 = sub i32 %16, %17
  %19 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %20 = call i32 @efx_vf_size(%struct.efx_nic* %19)
  %21 = udiv i32 %18, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp uge i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %49

28:                                               ; preds = %15
  %29 = load %struct.efx_vf**, %struct.efx_vf*** %8, align 8
  %30 = icmp ne %struct.efx_vf** %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load %struct.efx_vf*, %struct.efx_vf** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %34, i64 %36
  %38 = load %struct.efx_vf**, %struct.efx_vf*** %8, align 8
  store %struct.efx_vf* %37, %struct.efx_vf** %38, align 8
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %45 = call i32 @efx_vf_size(%struct.efx_nic* %44)
  %46 = urem i32 %43, %45
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %39
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %27, %14
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

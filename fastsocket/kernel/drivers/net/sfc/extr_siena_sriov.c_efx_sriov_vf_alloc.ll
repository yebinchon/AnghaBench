; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_vf_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_vf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_vf* }
%struct.efx_vf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.efx_nic* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VF_TX_FILTER_AUTO = common dso_local global i32 0, align 4
@efx_sriov_vfdi = common dso_local global i32 0, align 4
@efx_sriov_reset_vf_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_sriov_vf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_sriov_vf_alloc(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_vf*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 48, %9
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.efx_vf* @kzalloc(i32 %11, i32 %12)
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 1
  store %struct.efx_vf* %13, %struct.efx_vf** %15, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 1
  %18 = load %struct.efx_vf*, %struct.efx_vf** %17, align 8
  %19 = icmp ne %struct.efx_vf* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %67, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  %33 = load %struct.efx_vf*, %struct.efx_vf** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %33, i64 %35
  store %struct.efx_vf* %36, %struct.efx_vf** %5, align 8
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %39 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %38, i32 0, i32 9
  store %struct.efx_nic* %37, %struct.efx_nic** %39, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %42 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %44 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = load i32, i32* @VF_TX_FILTER_AUTO, align 4
  %46 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %47 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %49 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %48, i32 0, i32 2
  store i32 -1, i32* %49, align 8
  %50 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %51 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %50, i32 0, i32 7
  %52 = load i32, i32* @efx_sriov_vfdi, align 4
  %53 = call i32 @INIT_WORK(i32* %51, i32 %52)
  %54 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %55 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %54, i32 0, i32 6
  %56 = load i32, i32* @efx_sriov_reset_vf_work, align 4
  %57 = call i32 @INIT_WORK(i32* %55, i32 %56)
  %58 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %59 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %58, i32 0, i32 5
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %62 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %61, i32 0, i32 4
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %65 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %64, i32 0, i32 3
  %66 = call i32 @mutex_init(i32* %65)
  br label %67

67:                                               ; preds = %30
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %24

70:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.efx_vf* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

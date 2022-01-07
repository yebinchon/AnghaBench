; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_probe_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_probe_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i64, i64 }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to create NIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to create port\0A\00", align 1
@EFX_DEFAULT_DMAQ_SIZE = common dso_local global i64 0, align 8
@EFX_RXQ_MIN_ENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to create filter tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_probe_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_probe_all(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call i32 @efx_probe_nic(%struct.efx_nic* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = load i32, i32* @probe, align 4
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_err(%struct.efx_nic* %10, i32 %11, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = call i32 @efx_probe_port(%struct.efx_nic* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %23 = load i32, i32* @probe, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netif_err(%struct.efx_nic* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %74

28:                                               ; preds = %16
  %29 = load i64, i64* @EFX_DEFAULT_DMAQ_SIZE, align 8
  %30 = load i64, i64* @EFX_RXQ_MIN_ENT, align 8
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUILD_BUG_ON(i32 %32)
  %34 = load i64, i64* @EFX_DEFAULT_DMAQ_SIZE, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = call i64 @EFX_TXQ_MIN_ENT(%struct.efx_nic* %35)
  %37 = icmp slt i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %71

44:                                               ; preds = %28
  %45 = load i64, i64* @EFX_DEFAULT_DMAQ_SIZE, align 8
  %46 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 2
  store i64 %45, i64* %49, align 8
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = call i32 @efx_probe_filters(%struct.efx_nic* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = load i32, i32* @probe, align 4
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @netif_err(%struct.efx_nic* %55, i32 %56, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %71

61:                                               ; preds = %44
  %62 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %63 = call i32 @efx_probe_channels(%struct.efx_nic* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %68

67:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %79

68:                                               ; preds = %66
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = call i32 @efx_remove_filters(%struct.efx_nic* %69)
  br label %71

71:                                               ; preds = %68, %54, %41
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = call i32 @efx_remove_port(%struct.efx_nic* %72)
  br label %74

74:                                               ; preds = %71, %21
  %75 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %76 = call i32 @efx_remove_nic(%struct.efx_nic* %75)
  br label %77

77:                                               ; preds = %74, %9
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %67
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @efx_probe_nic(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_probe_port(%struct.efx_nic*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @EFX_TXQ_MIN_ENT(%struct.efx_nic*) #1

declare dso_local i32 @efx_probe_filters(%struct.efx_nic*) #1

declare dso_local i32 @efx_probe_channels(%struct.efx_nic*) #1

declare dso_local i32 @efx_remove_filters(%struct.efx_nic*) #1

declare dso_local i32 @efx_remove_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_remove_nic(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

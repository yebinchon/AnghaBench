; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_reset_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_reset_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)* }
%struct.TYPE_3__ = type { i32 (%struct.efx_nic*)*, i64 (%struct.efx_nic*)* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialise NIC\0A\00", align 1
@RESET_TYPE_INVISIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not restore PHY settings\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_reset_up(%struct.efx_nic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %10 = call i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic* %9)
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %17 = call i32 %15(%struct.efx_nic* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %22 = load i32, i32* @drv, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @netif_err(%struct.efx_nic* %21, i32 %22, i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %87

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %87

31:                                               ; preds = %27
  %32 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RESET_TYPE_INVISIBLE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %44, align 8
  %46 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %47 = call i32 %45(%struct.efx_nic* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %87

51:                                               ; preds = %40
  %52 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i64 (%struct.efx_nic*)*, i64 (%struct.efx_nic*)** %55, align 8
  %57 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %58 = call i64 %56(%struct.efx_nic* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %64 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netif_err(%struct.efx_nic* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %60, %51
  br label %68

68:                                               ; preds = %67, %36, %31
  %69 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %70 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %72, align 8
  %74 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %75 = call i32 %73(%struct.efx_nic* %74)
  %76 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %77 = call i32 @efx_start_interrupts(%struct.efx_nic* %76, i32 0)
  %78 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %79 = call i32 @efx_restore_filters(%struct.efx_nic* %78)
  %80 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %81 = call i32 @efx_sriov_reset(%struct.efx_nic* %80)
  %82 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %83 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %86 = call i32 @efx_start_all(%struct.efx_nic* %85)
  store i32 0, i32* %4, align 4
  br label %94

87:                                               ; preds = %50, %30, %20
  %88 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %87, %68
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @EFX_ASSERT_RESET_SERIALISED(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_start_interrupts(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_restore_filters(%struct.efx_nic*) #1

declare dso_local i32 @efx_sriov_reset(%struct.efx_nic*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @efx_start_all(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

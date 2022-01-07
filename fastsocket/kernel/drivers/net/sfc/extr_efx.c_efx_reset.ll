; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, i32)* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"resetting (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to reset hardware\0A\00", align 1
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@RESET_TYPE_RECOVER_OR_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"has been disabled\0A\00", align 1
@STATE_DISABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"reset complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_reset(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = load i32, i32* @drv, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @RESET_TYPE(i32 %13)
  %15 = call i32 @netif_info(%struct.efx_nic* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = call i32 @efx_device_detach_sync(%struct.efx_nic* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @efx_reset_down(%struct.efx_nic* %18, i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.efx_nic*, i32)*, i32 (%struct.efx_nic*, i32)** %24, align 8
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %25(%struct.efx_nic* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = load i32, i32* @drv, align 4
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netif_err(%struct.efx_nic* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %51

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  %41 = shl i32 1, %40
  %42 = sub nsw i32 0, %41
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pci_set_master(i32 %49)
  br label %51

51:                                               ; preds = %38, %31
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @RESET_TYPE_RECOVER_OR_DISABLE, align 4
  %61 = icmp eq i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54, %51
  %63 = phi i1 [ true, %54 ], [ true, %51 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @efx_reset_up(%struct.efx_nic* %65, i32 %66, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  store i32 1, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %74
  br label %80

80:                                               ; preds = %79, %62
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %85 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_close(i32 %86)
  %88 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %89 = load i32, i32* @drv, align 4
  %90 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @netif_err(%struct.efx_nic* %88, i32 %89, i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @STATE_DISABLED, align 4
  %95 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %96 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %108

97:                                               ; preds = %80
  %98 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %99 = load i32, i32* @drv, align 4
  %100 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %101 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @netif_dbg(%struct.efx_nic* %98, i32 %99, i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %105 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netif_device_attach(i32 %106)
  br label %108

108:                                              ; preds = %97, %83
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @RESET_TYPE(i32) #1

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #1

declare dso_local i32 @efx_reset_down(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @efx_reset_up(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @dev_close(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Using default conversion factor for interrupt coalesce timer\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Get vNIC configuration failed, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Failed to set intr mode based on resource counts and system capabilities, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to alloc vNIC resources, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to config nic, aborting\0A\00", align 1
@enic_poll = common dso_local global i32 0, align 4
@enic_poll_msix = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*)* @enic_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_dev_init(%struct.enic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enic*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %3, align 8
  %8 = load %struct.enic*, %struct.enic** %3, align 8
  %9 = call %struct.device* @enic_get_dev(%struct.enic* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.enic*, %struct.enic** %3, align 8
  %11 = getelementptr inbounds %struct.enic, %struct.enic* %10, i32 0, i32 3
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.enic*, %struct.enic** %3, align 8
  %14 = call i32 @enic_dev_intr_coal_timer_info(%struct.enic* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_warn(%struct.device* %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.enic*, %struct.enic** %3, align 8
  %21 = getelementptr inbounds %struct.enic, %struct.enic* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vnic_dev_intr_coal_timer_info_default(i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.enic*, %struct.enic** %3, align 8
  %26 = call i32 @enic_get_vnic_config(%struct.enic* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %103

33:                                               ; preds = %24
  %34 = load %struct.enic*, %struct.enic** %3, align 8
  %35 = call i32 @enic_get_res_counts(%struct.enic* %34)
  %36 = load %struct.enic*, %struct.enic** %3, align 8
  %37 = call i32 @enic_set_intr_mode(%struct.enic* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %103

44:                                               ; preds = %33
  %45 = load %struct.enic*, %struct.enic** %3, align 8
  %46 = call i32 @enic_alloc_vnic_resources(%struct.enic* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %97

52:                                               ; preds = %44
  %53 = load %struct.enic*, %struct.enic** %3, align 8
  %54 = call i32 @enic_init_vnic_resources(%struct.enic* %53)
  %55 = load %struct.enic*, %struct.enic** %3, align 8
  %56 = call i32 @enic_set_rss_nic_cfg(%struct.enic* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %97

62:                                               ; preds = %52
  %63 = load %struct.enic*, %struct.enic** %3, align 8
  %64 = getelementptr inbounds %struct.enic, %struct.enic* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @vnic_dev_get_intr_mode(i32 %65)
  switch i32 %66, label %67 [
    i32 128, label %75
  ]

67:                                               ; preds = %62
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load %struct.enic*, %struct.enic** %3, align 8
  %70 = getelementptr inbounds %struct.enic, %struct.enic* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* @enic_poll, align 4
  %74 = call i32 @netif_napi_add(%struct.net_device* %68, i32* %72, i32 %73, i32 64)
  br label %96

75:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %92, %75
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.enic*, %struct.enic** %3, align 8
  %79 = getelementptr inbounds %struct.enic, %struct.enic* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load %struct.enic*, %struct.enic** %3, align 8
  %85 = getelementptr inbounds %struct.enic, %struct.enic* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* @enic_poll_msix, align 4
  %91 = call i32 @netif_napi_add(%struct.net_device* %83, i32* %89, i32 %90, i32 64)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %76

95:                                               ; preds = %76
  br label %96

96:                                               ; preds = %95, %67
  store i32 0, i32* %2, align 4
  br label %103

97:                                               ; preds = %59, %49
  %98 = load %struct.enic*, %struct.enic** %3, align 8
  %99 = call i32 @enic_clear_intr_mode(%struct.enic* %98)
  %100 = load %struct.enic*, %struct.enic** %3, align 8
  %101 = call i32 @enic_free_vnic_resources(%struct.enic* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %96, %40, %29
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.device* @enic_get_dev(%struct.enic*) #1

declare dso_local i32 @enic_dev_intr_coal_timer_info(%struct.enic*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @vnic_dev_intr_coal_timer_info_default(i32) #1

declare dso_local i32 @enic_get_vnic_config(%struct.enic*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @enic_get_res_counts(%struct.enic*) #1

declare dso_local i32 @enic_set_intr_mode(%struct.enic*) #1

declare dso_local i32 @enic_alloc_vnic_resources(%struct.enic*) #1

declare dso_local i32 @enic_init_vnic_resources(%struct.enic*) #1

declare dso_local i32 @enic_set_rss_nic_cfg(%struct.enic*) #1

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @enic_clear_intr_mode(%struct.enic*) #1

declare dso_local i32 @enic_free_vnic_resources(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

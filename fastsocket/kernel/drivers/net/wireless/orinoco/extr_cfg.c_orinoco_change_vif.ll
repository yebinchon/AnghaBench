; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_cfg.c_orinoco_change_vif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_cfg.c_orinoco_change_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.vif_params = type { i32 }
%struct.orinoco_private = type { i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@force_monitor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Monitor mode support is buggy in this firmware, not enabling\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32, i32*, %struct.vif_params*)* @orinoco_change_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_change_vif(%struct.wiphy* %0, %struct.net_device* %1, i32 %2, i32* %3, %struct.vif_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vif_params*, align 8
  %12 = alloca %struct.orinoco_private*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.vif_params* %4, %struct.vif_params** %11, align 8
  %15 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %16 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %15)
  store %struct.orinoco_private* %16, %struct.orinoco_private** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %18 = call i64 @orinoco_lock(%struct.orinoco_private* %17, i64* %14)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %72

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %54 [
    i32 130, label %25
    i32 128, label %39
    i32 129, label %40
  ]

25:                                               ; preds = %23
  %26 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %27 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %32 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %35, %30, %25
  br label %57

39:                                               ; preds = %23
  br label %57

40:                                               ; preds = %23
  %41 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %42 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @force_monitor, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.wiphy*, %struct.wiphy** %7, align 8
  %50 = call i32 @wiphy_warn(%struct.wiphy* %49, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %48, %45, %40
  br label %57

54:                                               ; preds = %23
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %54, %53, %39, %38
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %63 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %65 = call i32 @set_port_type(%struct.orinoco_private* %64)
  %66 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %67 = call i32 @orinoco_commit(%struct.orinoco_private* %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %60, %57
  %69 = load %struct.orinoco_private*, %struct.orinoco_private** %12, align 8
  %70 = call i32 @orinoco_unlock(%struct.orinoco_private* %69, i64* %14)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %20
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i64 @orinoco_lock(%struct.orinoco_private*, i64*) #1

declare dso_local i32 @wiphy_warn(%struct.wiphy*, i8*) #1

declare dso_local i32 @set_port_type(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_commit(%struct.orinoco_private*) #1

declare dso_local i32 @orinoco_unlock(%struct.orinoco_private*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

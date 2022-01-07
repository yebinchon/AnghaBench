; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, i64, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32, i32, i64 }

@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Killing VID:%d (vlgrp:%p vlgrp entry:%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"could not find vid %d in cache\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed configuring VLAN filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i16)* @mlx4_en_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_vlan_rx_kill_vid(%struct.net_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %5, align 8
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 3
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %6, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %94

19:                                               ; preds = %2
  %20 = load i32, i32* @HW, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %22 = load i16, i16* %4, align 2
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i16, i16* %4, align 2
  %30 = call i32 @vlan_group_get_device(i32 %28, i16 zeroext %29)
  %31 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i16, ...) @en_dbg(i32 %20, %struct.mlx4_en_priv* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i16 zeroext %22, i32 %25, i32 %30)
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i16, i16* %4, align 2
  %36 = call i32 @vlan_group_set_device(i32 %34, i16 zeroext %35, i32* null)
  %37 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i16, i16* %4, align 2
  %47 = call i32 @mlx4_find_cached_vlan(i32 %42, i32 %45, i16 zeroext %46, i32* %8)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %19
  %50 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @mlx4_unregister_vlan(i32 %52, i32 %55, i32 %56)
  br label %63

58:                                               ; preds = %19
  %59 = load i32, i32* @HW, align 4
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %61 = load i16, i16* %4, align 2
  %62 = call i32 (i32, %struct.mlx4_en_priv*, i8*, i16, ...) @en_dbg(i32 %59, %struct.mlx4_en_priv* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %61)
  br label %63

63:                                               ; preds = %58, %49
  %64 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %63
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @mlx4_SET_VLAN_FLTR(i32 %76, i32 %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %88 = call i32 @en_err(%struct.mlx4_en_priv* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %73
  br label %90

90:                                               ; preds = %89, %68, %63
  %91 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %18
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @vlan_group_get_device(i32, i16 zeroext) #1

declare dso_local i32 @vlan_group_set_device(i32, i16 zeroext, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_find_cached_vlan(i32, i32, i16 zeroext, i32*) #1

declare dso_local i32 @mlx4_unregister_vlan(i32, i32, i32) #1

declare dso_local i32 @mlx4_SET_VLAN_FLTR(i32, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

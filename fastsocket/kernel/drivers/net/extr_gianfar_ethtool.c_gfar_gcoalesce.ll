; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_gcoalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_gcoalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8* }
%struct.gfar_private = type { i32, i32, i32, i32* }

@FSL_GIANFAR_DEV_HAS_COALESCE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @gfar_gcoalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_gcoalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %11)
  store %struct.gfar_private* %12, %struct.gfar_private** %6, align 8
  %13 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %14 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FSL_GIANFAR_DEV_HAS_COALESCE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %89

22:                                               ; preds = %2
  %23 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %24 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* null, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %89

30:                                               ; preds = %22
  %31 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %32 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @get_ictt_value(i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %36 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @get_icft_value(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %40 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @get_ictt_value(i32 %41)
  store i64 %42, i64* %9, align 8
  %43 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %44 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @get_icft_value(i32 %45)
  store i64 %46, i64* %10, align 8
  %47 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i8* @gfar_ticks2usecs(%struct.gfar_private* %47, i64 %48)
  %50 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %50, i32 0, i32 16
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i8* @gfar_ticks2usecs(%struct.gfar_private* %55, i64 %56)
  %58 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %58, i32 0, i32 15
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 14
  store i64 0, i64* %64, align 8
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 13
  store i64 0, i64* %66, align 8
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 12
  store i64 0, i64* %68, align 8
  %69 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %69, i32 0, i32 11
  store i64 0, i64* %70, align 8
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 10
  store i64 0, i64* %72, align 8
  %73 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %73, i32 0, i32 9
  store i64 0, i64* %74, align 8
  %75 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %75, i32 0, i32 8
  store i64 0, i64* %76, align 8
  %77 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %79, i32 0, i32 6
  store i64 0, i64* %80, align 8
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %30, %27, %19
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @get_ictt_value(i32) #1

declare dso_local i64 @get_icft_value(i32) #1

declare dso_local i8* @gfar_ticks2usecs(%struct.gfar_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

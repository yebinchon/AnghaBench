; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setpfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setpfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_pfc = type { i64, i32, i32, i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_2__*, i64, i32, %struct.mlx4_en_dev* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.mlx4_en_dev = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cap: 0x%x en: 0x%x mbc: 0x%x delay: %d\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed setting pause params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_pfc*)* @mlx4_en_dcbnl_ieee_setpfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_ieee_setpfc(%struct.net_device* %0, %struct.ieee_pfc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee_pfc*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee_pfc* %1, %struct.ieee_pfc** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %5, align 8
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 3
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %11, align 8
  store %struct.mlx4_en_dev* %12, %struct.mlx4_en_dev** %6, align 8
  %13 = load i32, i32* @DRV, align 4
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %15 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %16 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %19 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %22 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %25 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @en_dbg(i32 %13, %struct.mlx4_en_priv* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i32 %23, i32 %26)
  %28 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %29 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 8
  %43 = load %struct.ieee_pfc*, %struct.ieee_pfc** %4, align 8
  %44 = getelementptr inbounds %struct.ieee_pfc, %struct.ieee_pfc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i64 %45, i64* %49, align 8
  %50 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i64 %45, i64* %53, align 8
  %54 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %6, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ETH_FCS_LEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mlx4_SET_PORT_general(i32 %56, i32 %59, i64 %64, i32 %69, i64 %74, i32 %79, i64 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %2
  %89 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %90 = call i32 @en_err(%struct.mlx4_en_priv* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %2
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @mlx4_SET_PORT_general(i32, i32, i64, i32, i64, i32, i64) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

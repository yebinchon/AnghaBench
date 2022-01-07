; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ethtool_cmd = type { i32, i64, i64, i64, i32, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mdio_set_settings(%struct.efx_nic* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.ethtool_cmd, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = bitcast %struct.ethtool_cmd* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 5
  %9 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.efx_nic*, %struct.ethtool_cmd*)**
  %15 = load i32 (%struct.efx_nic*, %struct.ethtool_cmd*)*, i32 (%struct.efx_nic*, %struct.ethtool_cmd*)** %14, align 8
  %16 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %17 = call i32 %15(%struct.efx_nic* %16, %struct.ethtool_cmd* %6)
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %2
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %26 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %25)
  %27 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %6)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %29
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %94

51:                                               ; preds = %43, %36, %29, %24, %2
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PORT_TP, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PORT_TP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %51
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %94

65:                                               ; preds = %56
  %66 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %75 = or i32 %73, %74
  %76 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = xor i32 %77, -1
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70, %65
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %94

84:                                               ; preds = %70
  %85 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %86 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @efx_link_set_advertising(%struct.efx_nic* %85, i32 %90)
  %92 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %93 = call i32 @efx_mdio_an_reconfigure(%struct.efx_nic* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %81, %62, %50
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #2

declare dso_local i32 @efx_link_set_advertising(%struct.efx_nic*, i32) #2

declare dso_local i32 @efx_mdio_an_reconfigure(%struct.efx_nic*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

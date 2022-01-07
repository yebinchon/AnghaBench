; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c___de_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c___de_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, i64, i32, i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@XCVR_INTERNAL = common dso_local global i32 0, align 4
@PORT_AUI = common dso_local global i32 0, align 4
@PORT_BNC = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@MacMode = common dso_local global i32 0, align 4
@FullDuplex = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*, %struct.ethtool_cmd*)* @__de_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__de_get_settings(%struct.de_private* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %5 = load %struct.de_private*, %struct.de_private** %3, align 8
  %6 = getelementptr inbounds %struct.de_private, %struct.de_private* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @XCVR_INTERNAL, align 4
  %11 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.de_private*, %struct.de_private** %3, align 8
  %16 = getelementptr inbounds %struct.de_private, %struct.de_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.de_private*, %struct.de_private** %3, align 8
  %21 = getelementptr inbounds %struct.de_private, %struct.de_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %35 [
    i32 129, label %23
    i32 128, label %29
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @PORT_AUI, align 4
  %25 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 0
  store i32 5, i32* %28, align 8
  br label %42

29:                                               ; preds = %2
  %30 = load i32, i32* @PORT_BNC, align 4
  %31 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  br label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @PORT_TP, align 4
  %37 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SPEED_10, align 4
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %29, %23
  %43 = load i32, i32* @MacMode, align 4
  %44 = call i32 @dr32(i32 %43)
  %45 = load i32, i32* @FullDuplex, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @DUPLEX_FULL, align 4
  %50 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %56

52:                                               ; preds = %42
  %53 = load i32, i32* @DUPLEX_HALF, align 4
  %54 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.de_private*, %struct.de_private** %3, align 8
  %58 = getelementptr inbounds %struct.de_private, %struct.de_private* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @AUTONEG_DISABLE, align 4
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @AUTONEG_ENABLE, align 4
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  ret i32 0
}

declare dso_local i32 @dr32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

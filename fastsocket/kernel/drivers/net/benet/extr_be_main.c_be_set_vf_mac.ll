; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.be_adapter = type { i32, %struct.TYPE_2__*, %struct.be_vf_cfg* }
%struct.TYPE_2__ = type { i32 }
%struct.be_vf_cfg = type { i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MAC %pM set on VF %d Failed\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @be_set_vf_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_vf_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.be_adapter* %12, %struct.be_adapter** %8, align 8
  %13 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %14 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %13, i32 0, i32 2
  %15 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %15, i64 %17
  store %struct.be_vf_cfg* %18, %struct.be_vf_cfg** %9, align 8
  %19 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %20 = call i32 @sriov_enabled(%struct.be_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %92

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @is_valid_ether_addr(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %92

38:                                               ; preds = %29
  %39 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %40 = call i64 @BEx_chip(%struct.be_adapter* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %44 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %45 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %48 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i32 @be_cmd_pmac_del(%struct.be_adapter* %43, i32 %46, i32 %49, i32 %51)
  %53 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %56 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %59 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %58, i32 0, i32 2
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @be_cmd_pmac_add(%struct.be_adapter* %53, i32* %54, i32 %57, i32* %59, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %72

63:                                               ; preds = %38
  %64 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %67 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @be_cmd_set_mac(%struct.be_adapter* %64, i32* %65, i32 %68, i32 %70)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %63, %42
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %77 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %80, i32 %81)
  br label %90

83:                                               ; preds = %72
  %84 = load %struct.be_vf_cfg*, %struct.be_vf_cfg** %9, align 8
  %85 = getelementptr inbounds %struct.be_vf_cfg, %struct.be_vf_cfg* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(i32 %86, i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %83, %75
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %35, %22
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sriov_enabled(%struct.be_adapter*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_pmac_del(%struct.be_adapter*, i32, i32, i32) #1

declare dso_local i32 @be_cmd_pmac_add(%struct.be_adapter*, i32*, i32, i32*, i32) #1

declare dso_local i32 @be_cmd_set_mac(%struct.be_adapter*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

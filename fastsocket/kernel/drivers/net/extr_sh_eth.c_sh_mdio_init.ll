; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_mdio_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bb_info = type { i32, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.net_device = type { i32, i64 }
%struct.sh_eth_private = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.bb_info*, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIR = common dso_local global i64 0, align 8
@bb_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sh_mii\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global %struct.bb_info zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sh_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mdio_init(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bb_info*, align 8
  %9 = alloca %struct.sh_eth_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sh_eth_private* %11, %struct.sh_eth_private** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bb_info* @kzalloc(i32 32, i32 %12)
  store %struct.bb_info* %13, %struct.bb_info** %8, align 8
  %14 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %15 = icmp ne %struct.bb_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %136

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PIR, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %26 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %25, i32 0, i32 5
  store i64 %24, i64* %26, align 8
  %27 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %28 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %27, i32 0, i32 0
  store i32 8, i32* %28, align 8
  %29 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %30 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %29, i32 0, i32 1
  store i32 4, i32* %30, align 4
  %31 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %32 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %31, i32 0, i32 2
  store i32 2, i32* %32, align 8
  %33 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %34 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %33, i32 0, i32 3
  store i32 1, i32* %34, align 4
  %35 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %36 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32* @bb_ops, i32** %37, align 8
  %38 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %39 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %38, i32 0, i32 4
  %40 = call %struct.TYPE_6__* @alloc_mdio_bitbang(%struct.TYPE_7__* %39)
  %41 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %42 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %41, i32 0, i32 0
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %44 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %19
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %133

50:                                               ; preds = %19
  %51 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %52 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %58 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32* %56, i32** %60, align 8
  %61 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %62 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @snprintf(i32 %65, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @PHY_MAX_ADDR, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 4, %70
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call %struct.bb_info* @kmalloc(i32 %72, i32 %73)
  %75 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %76 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store %struct.bb_info* %74, %struct.bb_info** %78, align 8
  %79 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %80 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.bb_info*, %struct.bb_info** %82, align 8
  %84 = icmp ne %struct.bb_info* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %50
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %128

88:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PHY_MAX_ADDR, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %95 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load %struct.bb_info*, %struct.bb_info** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %98, i64 %100
  %102 = bitcast %struct.bb_info* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 bitcast (%struct.bb_info* @PHY_POLL to i8*), i64 32, i1 false)
  br label %103

103:                                              ; preds = %93
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %89

106:                                              ; preds = %89
  %107 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %108 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @mdiobus_register(%struct.TYPE_6__* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %121

114:                                              ; preds = %106
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = getelementptr inbounds %struct.net_device, %struct.net_device* %115, i32 0, i32 0
  %117 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %118 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = call i32 @dev_set_drvdata(i32* %116, %struct.TYPE_6__* %119)
  store i32 0, i32* %3, align 4
  br label %138

121:                                              ; preds = %113
  %122 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %123 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load %struct.bb_info*, %struct.bb_info** %125, align 8
  %127 = call i32 @kfree(%struct.bb_info* %126)
  br label %128

128:                                              ; preds = %121, %85
  %129 = load %struct.sh_eth_private*, %struct.sh_eth_private** %9, align 8
  %130 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = call i32 @free_mdio_bitbang(%struct.TYPE_6__* %131)
  br label %133

133:                                              ; preds = %128, %47
  %134 = load %struct.bb_info*, %struct.bb_info** %8, align 8
  %135 = call i32 @kfree(%struct.bb_info* %134)
  br label %136

136:                                              ; preds = %133, %16
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %114
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.bb_info* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @alloc_mdio_bitbang(%struct.TYPE_7__*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local %struct.bb_info* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mdiobus_register(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.bb_info*) #1

declare dso_local i32 @free_mdio_bitbang(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

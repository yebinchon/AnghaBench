; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { %struct.TYPE_9__*, i32*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32*, i32, i32, %struct.smsc9420_pdata*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRV_MDIONAME = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@smsc9420_mii_read = common dso_local global i32 0, align 4
@smsc9420_mii_write = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error registering mii bus\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Error probing mii bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc9420_pdata* %8, %struct.smsc9420_pdata** %4, align 8
  %9 = load i32, i32* @ENXIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = call %struct.TYPE_9__* (...) @mdiobus_alloc()
  %12 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %13 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %12, i32 0, i32 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %13, align 8
  %14 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %15 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = icmp ne %struct.TYPE_9__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %118

21:                                               ; preds = %1
  %22 = load i32, i32* @DRV_MDIONAME, align 4
  %23 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %24 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  store i32 %22, i32* %26, align 4
  %27 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %28 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %33 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %34 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %33, i32 0, i32 2
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %42 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %40, %45
  %47 = call i32 @snprintf(i32 %31, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %50 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  store %struct.smsc9420_pdata* %48, %struct.smsc9420_pdata** %52, align 8
  %53 = load i32, i32* @smsc9420_mii_read, align 4
  %54 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %55 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @smsc9420_mii_write, align 4
  %59 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %60 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %64 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %67 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32* %65, i32** %69, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %84, %21
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @PHY_MAX_ADDR, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load i32, i32* @PHY_POLL, align 4
  %76 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %77 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %75, i32* %83, align 4
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %70

87:                                               ; preds = %70
  %88 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %89 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  store i32 -3, i32* %91, align 8
  %92 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %93 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = call i64 @mdiobus_register(%struct.TYPE_9__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %87
  %98 = load i32, i32* @PROBE, align 4
  %99 = call i32 @smsc_warn(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %113

100:                                              ; preds = %87
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i64 @smsc9420_mii_probe(%struct.net_device* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @PROBE, align 4
  %106 = call i32 @smsc_warn(i32 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %108

107:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %120

108:                                              ; preds = %104
  %109 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %110 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i32 @mdiobus_unregister(%struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %108, %97
  %114 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %115 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = call i32 @mdiobus_free(%struct.TYPE_9__* %116)
  br label %118

118:                                              ; preds = %113, %18
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %107
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i64 @mdiobus_register(%struct.TYPE_9__*) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

declare dso_local i64 @smsc9420_mii_probe(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

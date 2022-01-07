; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tc35815.c_tc_mii_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tc35815.c_tc_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tc35815_local = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i32*, i32*, %struct.net_device*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tc35815_mii_bus\00", align 1
@tc_mdio_read = common dso_local global i32 0, align 4
@tc_mdio_write = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @tc_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_mii_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.tc35815_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.tc35815_local* @netdev_priv(%struct.net_device* %7)
  store %struct.tc35815_local* %8, %struct.tc35815_local** %4, align 8
  %9 = call %struct.TYPE_9__* (...) @mdiobus_alloc()
  %10 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %11 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %10, i32 0, i32 0
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %11, align 8
  %12 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %13 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = icmp eq %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %21 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @tc_mdio_read, align 4
  %25 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %26 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  store i32 %24, i32* %28, align 8
  %29 = load i32, i32* @tc_mdio_write, align 4
  %30 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %31 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 5
  store i32 %29, i32* %33, align 4
  %34 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %35 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %40 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %41 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %49 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %47, %52
  %54 = call i32 @snprintf(i32 %38, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %57 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store %struct.net_device* %55, %struct.net_device** %59, align 8
  %60 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %61 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %60, i32 0, i32 1
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %65 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32* %63, i32** %67, align 8
  %68 = load i32, i32* @PHY_MAX_ADDR, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32* @kmalloc(i32 %71, i32 %72)
  %74 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %75 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32* %73, i32** %77, align 8
  %78 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %79 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %19
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %132

87:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @PHY_MAX_ADDR, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i32, i32* @PHY_POLL, align 4
  %94 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %95 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %93, i32* %101, align 4
  br label %102

102:                                              ; preds = %92
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %88

105:                                              ; preds = %88
  %106 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %107 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = call i32 @mdiobus_register(%struct.TYPE_9__* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %125

113:                                              ; preds = %105
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = call i32 @tc_mii_probe(%struct.net_device* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %120

119:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %139

120:                                              ; preds = %118
  %121 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %122 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %121, i32 0, i32 0
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = call i32 @mdiobus_unregister(%struct.TYPE_9__* %123)
  br label %125

125:                                              ; preds = %120, %112
  %126 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %127 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @kfree(i32* %130)
  br label %132

132:                                              ; preds = %125, %84
  %133 = load %struct.tc35815_local*, %struct.tc35815_local** %4, align 8
  %134 = getelementptr inbounds %struct.tc35815_local, %struct.tc35815_local* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i32 @mdiobus_free(%struct.TYPE_9__* %135)
  br label %137

137:                                              ; preds = %132, %16
  %138 = load i32, i32* %5, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %119
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.tc35815_local* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_9__*) #1

declare dso_local i32 @tc_mii_probe(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

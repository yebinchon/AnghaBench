; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_mdio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdrv_private = type { i8* }

@Config4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@mii_2_8139_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"EXIT after directly using 8139 internal regs\0A\00", align 1
@MDIO_WRITE1 = common dso_local global i32 0, align 4
@MDIO_WRITE0 = common dso_local global i32 0, align 4
@MDIO_CLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netdrv_private*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %14)
  store %struct.netdrv_private* %15, %struct.netdrv_private** %9, align 8
  %16 = load %struct.netdrv_private*, %struct.netdrv_private** %9, align 8
  %17 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @Config4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 23
  %24 = or i32 1342308352, %23
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 18
  %27 = or i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %31, 31
  br i1 %32, label %33, label %69

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32*, i32** @mii_2_8139_map, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.netdrv_private*, %struct.netdrv_private** %9, align 8
  %46 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32*, i32** @mii_2_8139_map, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %47, i64 %53
  %55 = call i32 @writew(i32 %44, i8* %54)
  %56 = load %struct.netdrv_private*, %struct.netdrv_private** %9, align 8
  %57 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** @mii_2_8139_map, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr i8, i8* %58, i64 %64
  %66 = call i32 @readw(i8* %65)
  br label %67

67:                                               ; preds = %43, %36, %33
  %68 = call i32 @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %117

69:                                               ; preds = %4
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @mdio_sync(i8* %70)
  store i32 31, i32* %12, align 4
  br label %72

72:                                               ; preds = %97, %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 1, %77
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @MDIO_WRITE1, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @MDIO_WRITE0, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @writeb(i32 %87, i8* %88)
  %90 = call i32 (...) @mdio_delay()
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @MDIO_CLK, align 4
  %93 = or i32 %91, %92
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @writeb(i32 %93, i8* %94)
  %96 = call i32 (...) @mdio_delay()
  br label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %12, align 4
  br label %72

100:                                              ; preds = %72
  store i32 2, i32* %12, align 4
  br label %101

101:                                              ; preds = %112, %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @writeb(i32 0, i8* %105)
  %107 = call i32 (...) @mdio_delay()
  %108 = load i32, i32* @MDIO_CLK, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @writeb(i32 %108, i8* %109)
  %111 = call i32 (...) @mdio_delay()
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %12, align 4
  br label %101

115:                                              ; preds = %101
  %116 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %67
  ret void
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @writew(i32, i8*) #1

declare dso_local i32 @readw(i8*) #1

declare dso_local i32 @mdio_sync(i8*) #1

declare dso_local i32 @writeb(i32, i8*) #1

declare dso_local i32 @mdio_delay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

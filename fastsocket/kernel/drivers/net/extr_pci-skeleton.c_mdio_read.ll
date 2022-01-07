; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_mdio_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdrv_private = type { i8* }

@Config4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"EXIT after directly using 8139 internal regs\0A\00", align 1
@mii_2_8139_map = common dso_local global i32* null, align 8
@MDIO_DATA_OUT = common dso_local global i32 0, align 4
@MDIO_DIR = common dso_local global i32 0, align 4
@MDIO_CLK = common dso_local global i32 0, align 4
@MDIO_DATA_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"EXIT, returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netdrv_private*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %14)
  store %struct.netdrv_private* %15, %struct.netdrv_private** %8, align 8
  %16 = load %struct.netdrv_private*, %struct.netdrv_private** %8, align 8
  %17 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @Config4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  store i8* %21, i8** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 5
  %24 = or i32 251904, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %27 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 31
  br i1 %29, label %30, label %56

30:                                               ; preds = %3
  %31 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = load i32*, i32** @mii_2_8139_map, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load %struct.netdrv_private*, %struct.netdrv_private** %8, align 8
  %43 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32*, i32** @mii_2_8139_map, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr i8, i8* %44, i64 %50
  %52 = call i32 @readw(i8* %51)
  br label %54

53:                                               ; preds = %34, %30
  br label %54

54:                                               ; preds = %53, %41
  %55 = phi i32 [ %52, %41 ], [ 0, %53 ]
  store i32 %55, i32* %4, align 4
  br label %123

56:                                               ; preds = %3
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @mdio_sync(i8* %57)
  store i32 15, i32* %12, align 4
  br label %59

59:                                               ; preds = %87, %56
  %60 = load i32, i32* %12, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @MDIO_DATA_OUT, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* @MDIO_DIR, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %73, %74
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @writeb(i32 %75, i8* %76)
  %78 = call i32 (...) @mdio_delay()
  %79 = load i32, i32* @MDIO_DIR, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @MDIO_CLK, align 4
  %83 = or i32 %81, %82
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @writeb(i32 %83, i8* %84)
  %86 = call i32 (...) @mdio_delay()
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  br label %59

90:                                               ; preds = %59
  store i32 19, i32* %12, align 4
  br label %91

91:                                               ; preds = %112, %90
  %92 = load i32, i32* %12, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %91
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @writeb(i32 0, i8* %95)
  %97 = call i32 (...) @mdio_delay()
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 %98, 1
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @readb(i8* %100)
  %102 = load i32, i32* @MDIO_DATA_IN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 1, i32 0
  %107 = or i32 %99, %106
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* @MDIO_CLK, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @writeb(i32 %108, i8* %109)
  %111 = call i32 (...) @mdio_delay()
  br label %112

112:                                              ; preds = %94
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %12, align 4
  br label %91

115:                                              ; preds = %91
  %116 = load i32, i32* %11, align 4
  %117 = ashr i32 %116, 1
  %118 = and i32 %117, 65535
  %119 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = ashr i32 %120, 1
  %122 = and i32 %121, 65535
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %115, %54
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @readw(i8*) #1

declare dso_local i32 @mdio_sync(i8*) #1

declare dso_local i32 @writeb(i32, i8*) #1

declare dso_local i32 @mdio_delay(...) #1

declare dso_local i32 @readb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

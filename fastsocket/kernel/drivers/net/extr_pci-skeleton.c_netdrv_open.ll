; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.netdrv_private = type { i32, %struct.TYPE_3__, i64, i32, i64, i32, i32*, i32, i32*, i8* }
%struct.TYPE_3__ = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@netdrv_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EXIT, returning %d\0A\00", align 1
@TX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@RX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"EXIT, returning -ENOMEM\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TX_FIFO_THRESH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"%s: netdrv_open() ioaddr %#lx IRQ %d GP Pins %2.2x %s-duplex.\0A\00", align 1
@MediaStatus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@netdrv_timer = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"EXIT, returning 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdrv_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdrv_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netdrv_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdrv_private* %7, %struct.netdrv_private** %4, align 8
  %8 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @netdrv_interrupt, align 4
  %13 = load i32, i32* @IRQF_SHARED, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @request_irq(i32 %11, i32 %12, i32 %13, i32 %16, %struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %155

25:                                               ; preds = %1
  %26 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %27 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %30 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %31 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %30, i32 0, i32 7
  %32 = call i8* @pci_alloc_consistent(i32 %28, i32 %29, i32* %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %35 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %34, i32 0, i32 8
  store i32* %33, i32** %35, align 8
  %36 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %37 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RX_BUF_TOT_LEN, align 4
  %40 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %41 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %40, i32 0, i32 5
  %42 = call i8* @pci_alloc_consistent(i32 %38, i32 %39, i32* %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %45 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %44, i32 0, i32 6
  store i32* %43, i32** %45, align 8
  %46 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %47 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %25
  %51 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %52 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %98

55:                                               ; preds = %50, %25
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @free_irq(i32 %58, %struct.net_device* %59)
  %61 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %62 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %61, i32 0, i32 8
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %55
  %66 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %67 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %70 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %71 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %70, i32 0, i32 8
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %74 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pci_free_consistent(i32 %68, i32 %69, i32* %72, i32 %75)
  br label %77

77:                                               ; preds = %65, %55
  %78 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %79 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %84 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RX_BUF_TOT_LEN, align 4
  %87 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %88 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %91 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @pci_free_consistent(i32 %85, i32 %86, i32* %89, i32 %92)
  br label %94

94:                                               ; preds = %82, %77
  %95 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %155

98:                                               ; preds = %50
  %99 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %100 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %103 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %102, i32 0, i32 2
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @TX_FIFO_THRESH, align 4
  %105 = shl i32 %104, 11
  %106 = and i32 %105, 4128768
  %107 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %108 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = call i32 @netdrv_init_ring(%struct.net_device* %109)
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = call i32 @netdrv_hw_start(%struct.net_device* %111)
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %117 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @pci_resource_start(i32 %118, i32 1)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MediaStatus, align 4
  %124 = call i32 @NETDRV_R8(i32 %123)
  %125 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %126 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %131 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %119, i32 %122, i32 %124, i8* %130)
  %132 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %133 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %132, i32 0, i32 1
  %134 = call i32 @init_timer(%struct.TYPE_3__* %133)
  %135 = load i64, i64* @jiffies, align 8
  %136 = load i32, i32* @HZ, align 4
  %137 = mul nsw i32 3, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %141 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  store i64 %139, i64* %142, align 8
  %143 = load %struct.net_device*, %struct.net_device** %3, align 8
  %144 = ptrtoint %struct.net_device* %143 to i64
  %145 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %146 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  %148 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %149 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  store i32* @netdrv_timer, i32** %150, align 8
  %151 = load %struct.netdrv_private*, %struct.netdrv_private** %4, align 8
  %152 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %151, i32 0, i32 1
  %153 = call i32 @add_timer(%struct.TYPE_3__* %152)
  %154 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %98, %94, %21
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @netdrv_init_ring(%struct.net_device*) #1

declare dso_local i32 @netdrv_hw_start(%struct.net_device*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @NETDRV_R8(i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

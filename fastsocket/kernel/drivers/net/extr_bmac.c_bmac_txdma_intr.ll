; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_txdma_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bmac.c_bmac_txdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bmac_data = type { i64, i64, i32, i64, i32**, %struct.TYPE_3__*, %struct.dbdma_cmd* }
%struct.TYPE_3__ = type { i32 }
%struct.dbdma_cmd = type { i32 }

@txintcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"bmac_txdma_intr\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"bmac_txdma_xfer_stat=%#0x\0A\00", align 1
@ACTIVE = common dso_local global i32 0, align 4
@N_TX_RING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"bmac_txdma_intr done->bmac_start\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bmac_txdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmac_txdma_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.bmac_data*, align 8
  %7 = alloca %struct.dbdma_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.bmac_data* @netdev_priv(%struct.net_device* %12)
  store %struct.bmac_data* %13, %struct.bmac_data** %6, align 8
  %14 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %15 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %14, i32 0, i32 2
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @txintcount, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @txintcount, align 4
  %20 = icmp slt i32 %18, 10
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @XXDEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %2
  br label %24

24:                                               ; preds = %23, %113
  %25 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %26 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %25, i32 0, i32 6
  %27 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %26, align 8
  %28 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %29 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %27, i64 %30
  store %struct.dbdma_cmd* %31, %struct.dbdma_cmd** %7, align 8
  %32 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.dbdma_cmd, %struct.dbdma_cmd* %32, i32 0, i32 0
  %34 = call i32 @ld_le16(i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @txintcount, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @XXDEBUG(i8* %40)
  br label %42

42:                                               ; preds = %37, %24
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ACTIVE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.dbdma_cmd*, %struct.dbdma_cmd** %7, align 8
  %49 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %50 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @in_le32(i32* %52)
  %54 = call %struct.dbdma_cmd* @bus_to_virt(i32 %53)
  %55 = icmp eq %struct.dbdma_cmd* %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %114

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %60 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %59, i32 0, i32 4
  %61 = load i32**, i32*** %60, align 8
  %62 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %63 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32*, i32** %61, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %58
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %75 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %74, i32 0, i32 4
  %76 = load i32**, i32*** %75, align 8
  %77 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %78 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32*, i32** %76, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @dev_kfree_skb_irq(i32* %81)
  br label %83

83:                                               ; preds = %68, %58
  %84 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %85 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %84, i32 0, i32 4
  %86 = load i32**, i32*** %85, align 8
  %87 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %88 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  store i32* null, i32** %90, align 8
  %91 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %92 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = call i32 @netif_wake_queue(%struct.net_device* %93)
  %95 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %96 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* @N_TX_RING, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %83
  %102 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %103 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %83
  %105 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %106 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %109 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %114

113:                                              ; preds = %104
  br label %24

114:                                              ; preds = %112, %56
  %115 = load %struct.bmac_data*, %struct.bmac_data** %6, align 8
  %116 = getelementptr inbounds %struct.bmac_data, %struct.bmac_data* %115, i32 0, i32 2
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load i32, i32* @txintcount, align 4
  %120 = icmp slt i32 %119, 10
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = call i32 @XXDEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %114
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = call i32 @bmac_start(%struct.net_device* %124)
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %126
}

declare dso_local %struct.bmac_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @XXDEBUG(i8*) #1

declare dso_local i32 @ld_le16(i32*) #1

declare dso_local %struct.dbdma_cmd* @bus_to_virt(i32) #1

declare dso_local i32 @in_le32(i32*) #1

declare dso_local i32 @dev_kfree_skb_irq(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bmac_start(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

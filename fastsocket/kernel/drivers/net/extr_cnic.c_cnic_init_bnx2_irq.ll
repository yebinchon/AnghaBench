; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_init_bnx2_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_init_bnx2_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.TYPE_4__, i32, i32, %struct.cnic_eth_dev* }
%struct.TYPE_4__ = type { %struct.status_block*, %struct.TYPE_3__* }
%struct.status_block = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.cnic_eth_dev = type { i32 }

@CNIC_DRV_STATE_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_SIZE = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_1 = common dso_local global i32 0, align 4
@BNX2_HC_SB_CONFIG_1_ONE_SHOT = common dso_local global i32 0, align 4
@BNX2_HC_COMP_PROD_TRIP_OFF = common dso_local global i32 0, align 4
@BNX2_HC_COM_TICKS_OFF = common dso_local global i32 0, align 4
@BNX2_HC_CMD_TICKS_OFF = common dso_local global i32 0, align 4
@cnic_service_bnx2_msix = common dso_local global i32 0, align 4
@BNX2_HC_COALESCE_NOW = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@BNX2_HC_COMMAND_COAL_NOW_WO_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"KCQ index not resetting to 0\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_init_bnx2_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_init_bnx2_irq(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.cnic_eth_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.status_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 1
  %15 = load %struct.cnic_local*, %struct.cnic_local** %14, align 8
  store %struct.cnic_local* %15, %struct.cnic_local** %4, align 8
  %16 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %17 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %16, i32 0, i32 4
  %18 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %17, align 8
  store %struct.cnic_eth_dev* %18, %struct.cnic_eth_dev** %5, align 8
  %19 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %20 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %111

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %26 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %27 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @BNX2_HC_SB_CONFIG_SIZE, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* @BNX2_HC_SB_CONFIG_1, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @BNX2_HC_SB_CONFIG_1_ONE_SHOT, align 4
  %38 = call i32 @CNIC_WR(%struct.cnic_dev* %35, i32 %36, i32 %37)
  %39 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BNX2_HC_COMP_PROD_TRIP_OFF, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @CNIC_WR(%struct.cnic_dev* %39, i32 %42, i32 131080)
  %44 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BNX2_HC_COM_TICKS_OFF, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i32 @CNIC_WR(%struct.cnic_dev* %44, i32 %47, i32 4194524)
  %49 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @BNX2_HC_CMD_TICKS_OFF, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @CNIC_WR(%struct.cnic_dev* %49, i32 %52, i32 4194524)
  %54 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %61 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %63 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %62, i32 0, i32 2
  %64 = load i32, i32* @cnic_service_bnx2_msix, align 4
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %66 = ptrtoint %struct.cnic_dev* %65 to i64
  %67 = call i32 @tasklet_init(i32* %63, i32 %64, i64 %66)
  %68 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %69 = call i32 @cnic_request_irq(%struct.cnic_dev* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %25
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %155

74:                                               ; preds = %25
  br label %75

75:                                               ; preds = %88, %74
  %76 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 10
  br label %86

86:                                               ; preds = %83, %75
  %87 = phi i1 [ false, %75 ], [ %85, %83 ]
  br i1 %87, label %88, label %99

88:                                               ; preds = %86
  %89 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %90 = load i32, i32* @BNX2_HC_COALESCE_NOW, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 11, %91
  %93 = shl i32 1, %92
  %94 = call i32 @CNIC_WR(%struct.cnic_dev* %89, i32 %90, i32 %93)
  %95 = call i32 @udelay(i32 10)
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = call i32 (...) @barrier()
  br label %75

99:                                               ; preds = %86
  %100 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %101 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %109 = call i32 @cnic_free_irq(%struct.cnic_dev* %108)
  br label %148

110:                                              ; preds = %99
  br label %147

111:                                              ; preds = %1
  %112 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %113 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.status_block*, %struct.status_block** %114, align 8
  store %struct.status_block* %115, %struct.status_block** %10, align 8
  %116 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %117 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %118 = call i32 @CNIC_RD(%struct.cnic_dev* %116, i32 %117)
  store i32 %118, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %129, %111
  %120 = load %struct.status_block*, %struct.status_block** %10, align 8
  %121 = getelementptr inbounds %struct.status_block, %struct.status_block* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 10
  br label %127

127:                                              ; preds = %124, %119
  %128 = phi i1 [ false, %119 ], [ %126, %124 ]
  br i1 %128, label %129, label %140

129:                                              ; preds = %127
  %130 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %131 = load i32, i32* @BNX2_HC_COMMAND, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @BNX2_HC_COMMAND_COAL_NOW_WO_INT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @CNIC_WR(%struct.cnic_dev* %130, i32 %131, i32 %134)
  %136 = call i32 @udelay(i32 10)
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  %139 = call i32 (...) @barrier()
  br label %119

140:                                              ; preds = %127
  %141 = load %struct.status_block*, %struct.status_block** %10, align 8
  %142 = getelementptr inbounds %struct.status_block, %struct.status_block* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %148

146:                                              ; preds = %140
  br label %147

147:                                              ; preds = %146, %110
  store i32 0, i32* %2, align 4
  br label %155

148:                                              ; preds = %145, %107
  %149 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %150 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @netdev_err(i32 %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %153 = load i32, i32* @EBUSY, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %148, %147, %72
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @cnic_request_irq(%struct.cnic_dev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @cnic_free_irq(%struct.cnic_dev*) #1

declare dso_local i32 @CNIC_RD(%struct.cnic_dev*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

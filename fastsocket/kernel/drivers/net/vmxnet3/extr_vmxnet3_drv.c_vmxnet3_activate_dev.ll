; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_activate_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_activate_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"%s: skb_buf_size %d, rx_buf_per_pkt %d, ring sizes %u %u %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to init rx queue error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to setup irq for error %d\0A\00", align 1
@VMXNET3_REG_DSAL = common dso_local global i32 0, align 4
@VMXNET3_REG_DSAH = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_ACTIVATE_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to activate dev: error %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VMXNET3_REG_RXPROD = common dso_local global i64 0, align 8
@VMXNET3_REG_ALIGN = common dso_local global i32 0, align 4
@VMXNET3_REG_RXPROD2 = common dso_local global i64 0, align 8
@VMXNET3_STATE_BIT_QUIESCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmxnet3_activate_dev(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmxnet3_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %3, align 8
  %8 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %8, i32 0, i32 3
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %11, i32 0, i32 3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %22, i32 0, i32 6
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %29, i32 0, i32 2
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %38, i32 0, i32 2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_dbg(%struct.TYPE_12__* %10, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %28, i32 %37, i32 %46)
  %48 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %49 = call i32 @vmxnet3_tq_init_all(%struct.vmxnet3_adapter* %48)
  %50 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %51 = call i32 @vmxnet3_rq_init_all(%struct.vmxnet3_adapter* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %1
  %55 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %55, i32 0, i32 3
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @netdev_err(%struct.TYPE_12__* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %204

60:                                               ; preds = %1
  %61 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %62 = call i32 @vmxnet3_request_irqs(%struct.vmxnet3_adapter* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %66, i32 0, i32 3
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @netdev_err(%struct.TYPE_12__* %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %203

71:                                               ; preds = %60
  %72 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %73 = call i32 @vmxnet3_setup_driver_shared(%struct.vmxnet3_adapter* %72)
  %74 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %75 = load i32, i32* @VMXNET3_REG_DSAL, align 4
  %76 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @VMXNET3_GET_ADDR_LO(i32 %78)
  %80 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %74, i32 %75, i32 %79)
  %81 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %82 = load i32, i32* @VMXNET3_REG_DSAH, align 4
  %83 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @VMXNET3_GET_ADDR_HI(i32 %85)
  %87 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %81, i32 %82, i32 %86)
  %88 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %88, i32 0, i32 4
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %93 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %94 = load i32, i32* @VMXNET3_CMD_ACTIVATE_DEV, align 4
  %95 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %92, i32 %93, i32 %94)
  %96 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %97 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %98 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %96, i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %99, i32 0, i32 4
  %101 = load i64, i64* %7, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %71
  %106 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @netdev_err(%struct.TYPE_12__* %108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %194

113:                                              ; preds = %71
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %159, %113
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %162

120:                                              ; preds = %114
  %121 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %122 = load i64, i64* @VMXNET3_REG_RXPROD, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @VMXNET3_REG_ALIGN, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %122, %126
  %128 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %128, i32 0, i32 2
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter* %121, i64 %127, i32 %138)
  %140 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %141 = load i64, i64* @VMXNET3_REG_RXPROD2, align 8
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @VMXNET3_REG_ALIGN, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %141, %145
  %147 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %148 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %147, i32 0, i32 2
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter* %140, i64 %146, i32 %157)
  br label %159

159:                                              ; preds = %120
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %114

162:                                              ; preds = %114
  %163 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %163, i32 0, i32 3
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = call i32 @vmxnet3_set_mc(%struct.TYPE_12__* %165)
  %167 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %168 = call i32 @vmxnet3_check_link(%struct.vmxnet3_adapter* %167, i32 1)
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %184, %162
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %172 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %177 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %176, i32 0, i32 2
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = call i32 @napi_enable(i32* %182)
  br label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %169

187:                                              ; preds = %169
  %188 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %189 = call i32 @vmxnet3_enable_all_intrs(%struct.vmxnet3_adapter* %188)
  %190 = load i32, i32* @VMXNET3_STATE_BIT_QUIESCED, align 4
  %191 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %191, i32 0, i32 1
  %193 = call i32 @clear_bit(i32 %190, i32* %192)
  store i32 0, i32* %2, align 4
  br label %208

194:                                              ; preds = %105
  %195 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %196 = load i32, i32* @VMXNET3_REG_DSAL, align 4
  %197 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %195, i32 %196, i32 0)
  %198 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %199 = load i32, i32* @VMXNET3_REG_DSAH, align 4
  %200 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %198, i32 %199, i32 0)
  %201 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %202 = call i32 @vmxnet3_free_irqs(%struct.vmxnet3_adapter* %201)
  br label %203

203:                                              ; preds = %194, %65
  br label %204

204:                                              ; preds = %203, %54
  %205 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %3, align 8
  %206 = call i32 @vmxnet3_rq_cleanup_all(%struct.vmxnet3_adapter* %205)
  %207 = load i32, i32* %4, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %204, %187
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @netdev_dbg(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmxnet3_tq_init_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_init_all(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @vmxnet3_request_irqs(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_setup_driver_shared(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @VMXNET3_GET_ADDR_LO(i32) #1

declare dso_local i32 @VMXNET3_GET_ADDR_HI(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter*, i64, i32) #1

declare dso_local i32 @vmxnet3_set_mc(%struct.TYPE_12__*) #1

declare dso_local i32 @vmxnet3_check_link(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @vmxnet3_enable_all_intrs(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @vmxnet3_free_irqs(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @vmxnet3_rq_cleanup_all(%struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

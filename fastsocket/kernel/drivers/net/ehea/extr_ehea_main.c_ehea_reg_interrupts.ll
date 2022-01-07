; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_reg_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_reg_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.ehea_port = type { i32, %struct.TYPE_8__*, %struct.ehea_port*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ehea_port_res = type { i32, %struct.TYPE_8__*, %struct.ehea_port_res*, %struct.TYPE_6__*, i32, i32 }

@EHEA_IRQ_NAME_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s-aff\00", align 1
@ehea_qp_aff_irq_handler = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"failed registering irq for qp_aff_irq_handler:ist=%X\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"irq_handle 0x%X for function qp_aff_irq_handler registered\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s-queue%d\00", align 1
@ehea_recv_irq_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"failed registering irq for ehea_queue port_res_nr:%d, ist=%X\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"irq_handle 0x%X for function ehea_queue_int %d registered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_reg_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_reg_interrupts(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.ehea_port_res* @netdev_priv(%struct.net_device* %8)
  %10 = bitcast %struct.ehea_port_res* %9 to %struct.ehea_port*
  store %struct.ehea_port* %10, %struct.ehea_port** %3, align 8
  %11 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %12 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @EHEA_IRQ_NAME_SIZE, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i64, i8*, i8*, ...) @snprintf(i32 %13, i64 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %21 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ehea_qp_aff_irq_handler, align 4
  %27 = load i32, i32* @IRQF_DISABLED, align 4
  %28 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %29 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %32 = bitcast %struct.ehea_port* %31 to %struct.ehea_port_res*
  %33 = call i32 @ibmebus_request_irq(i32 %25, i32 %26, i32 %27, i32 %30, %struct.ehea_port_res* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %38 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @ehea_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %154

44:                                               ; preds = %1
  %45 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %46 = bitcast %struct.ehea_port* %45 to %struct.ehea_port_res*
  %47 = call i64 @netif_msg_ifup(%struct.ehea_port_res* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %51 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @ehea_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %49, %44
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %121, %57
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %61 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %124

64:                                               ; preds = %58
  %65 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %66 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %65, i32 0, i32 2
  %67 = load %struct.ehea_port*, %struct.ehea_port** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %67, i64 %69
  %71 = bitcast %struct.ehea_port* %70 to %struct.ehea_port_res*
  store %struct.ehea_port_res* %71, %struct.ehea_port_res** %4, align 8
  %72 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %73 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* @EHEA_IRQ_NAME_SIZE, align 8
  %76 = sub nsw i64 %75, 1
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i32, i64, i8*, i8*, ...) @snprintf(i32 %74, i64 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %80)
  %82 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %83 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ehea_recv_irq_handler, align 4
  %89 = load i32, i32* @IRQF_DISABLED, align 4
  %90 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %91 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %94 = call i32 @ibmebus_request_irq(i32 %87, i32 %88, i32 %89, i32 %92, %struct.ehea_port_res* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %64
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %100 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %99, i32 0, i32 3
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i32, ...) @ehea_error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %104)
  br label %127

106:                                              ; preds = %64
  %107 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %108 = bitcast %struct.ehea_port* %107 to %struct.ehea_port_res*
  %109 = call i64 @netif_msg_ifup(%struct.ehea_port_res* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %113 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %112, i32 0, i32 3
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i8*, i32, ...) @ehea_info(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %111, %106
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %58

124:                                              ; preds = %58
  br label %125

125:                                              ; preds = %154, %124
  %126 = load i32, i32* %6, align 4
  ret i32 %126

127:                                              ; preds = %97
  br label %128

128:                                              ; preds = %132, %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %5, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %134 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %133, i32 0, i32 2
  %135 = load %struct.ehea_port*, %struct.ehea_port** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %135, i64 %137
  %139 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %138, i32 0, i32 3
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %146 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %145, i32 0, i32 2
  %147 = load %struct.ehea_port*, %struct.ehea_port** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %147, i64 %149
  %151 = bitcast %struct.ehea_port* %150 to %struct.ehea_port_res*
  %152 = call i32 @ibmebus_free_irq(i32 %144, %struct.ehea_port_res* %151)
  br label %128

153:                                              ; preds = %128
  br label %154

154:                                              ; preds = %153, %36
  %155 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %156 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %162 = bitcast %struct.ehea_port* %161 to %struct.ehea_port_res*
  %163 = call i32 @ibmebus_free_irq(i32 %160, %struct.ehea_port_res* %162)
  %164 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %165 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %5, align 4
  br label %125
}

declare dso_local %struct.ehea_port_res* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, ...) #1

declare dso_local i32 @ibmebus_request_irq(i32, i32, i32, i32, %struct.ehea_port_res*) #1

declare dso_local i32 @ehea_error(i8*, i32, ...) #1

declare dso_local i64 @netif_msg_ifup(%struct.ehea_port_res*) #1

declare dso_local i32 @ehea_info(i8*, i32, ...) #1

declare dso_local i32 @ibmebus_free_irq(i32, %struct.ehea_port_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

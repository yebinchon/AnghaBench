; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_free_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_free_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.ehea_port* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ehea_port_res = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.ehea_port_res* }

@.str = private unnamed_addr constant [42 x i8] c"free send irq for res %d with handle 0x%X\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"associated event interrupt for handle 0x%X freed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ehea_free_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_free_interrupts(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ehea_port_res* @netdev_priv(%struct.net_device* %6)
  %8 = bitcast %struct.ehea_port_res* %7 to %struct.ehea_port*
  store %struct.ehea_port* %8, %struct.ehea_port** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %12 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %9
  %16 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %17 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %16, i32 0, i32 3
  %18 = load %struct.ehea_port*, %struct.ehea_port** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %18, i64 %20
  %22 = bitcast %struct.ehea_port* %21 to %struct.ehea_port_res*
  store %struct.ehea_port_res* %22, %struct.ehea_port_res** %4, align 8
  %23 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %24 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %30 = call i32 @ibmebus_free_irq(i32 %28, %struct.ehea_port_res* %29)
  %31 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %32 = bitcast %struct.ehea_port* %31 to %struct.ehea_port_res*
  %33 = call i64 @netif_msg_intr(%struct.ehea_port_res* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %15
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %38 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @ehea_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %35, %15
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %50 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %56 = bitcast %struct.ehea_port* %55 to %struct.ehea_port_res*
  %57 = call i32 @ibmebus_free_irq(i32 %54, %struct.ehea_port_res* %56)
  %58 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %59 = bitcast %struct.ehea_port* %58 to %struct.ehea_port_res*
  %60 = call i64 @netif_msg_intr(%struct.ehea_port_res* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %64 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, ...) @ehea_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %62, %48
  ret void
}

declare dso_local %struct.ehea_port_res* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ibmebus_free_irq(i32, %struct.ehea_port_res*) #1

declare dso_local i64 @netif_msg_intr(%struct.ehea_port_res*) #1

declare dso_local i32 @ehea_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_el3_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c589_cs.c_el3_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.el3_private = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: shutting down ethercard.\0A\00", align 1
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RxDisable = common dso_local global i32 0, align 4
@TxDisable = common dso_local global i32 0, align 4
@StopCoax = common dso_local global i32 0, align 4
@WN4_MEDIA = common dso_local global i64 0, align 8
@WN0_IRQ = common dso_local global i64 0, align 8
@EL3_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.el3_private*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.el3_private* @netdev_priv(%struct.net_device* %6)
  store %struct.el3_private* %7, %struct.el3_private** %3, align 8
  %8 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %9 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %8, i32 0, i32 1
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %9, align 8
  store %struct.pcmcia_device* %10, %struct.pcmcia_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %19 = call i64 @pcmcia_dev_present(%struct.pcmcia_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %1
  %22 = load i32, i32* @StatsDisable, align 4
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @EL3_CMD, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 %22, i64 %26)
  %28 = load i32, i32* @RxDisable, align 4
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @EL3_CMD, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 %28, i64 %32)
  %34 = load i32, i32* @TxDisable, align 4
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = load i64, i64* @EL3_CMD, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outw(i32 %34, i64 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %51

44:                                               ; preds = %21
  %45 = load i32, i32* @StopCoax, align 4
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @EL3_CMD, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outw(i32 %45, i64 %49)
  br label %64

51:                                               ; preds = %21
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = call i32 @EL3WINDOW(i32 4)
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @WN4_MEDIA, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 0, i64 %61)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %44
  %65 = call i32 @EL3WINDOW(i32 0)
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* @WN0_IRQ, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outw(i32 3840, i64 %69)
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @EL3_STATUS, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @inw(i64 %74)
  %76 = and i32 %75, 57344
  %77 = icmp eq i32 %76, 8192
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call i32 @update_stats(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %78, %64
  br label %82

82:                                               ; preds = %81, %1
  %83 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %84 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @netif_stop_queue(%struct.net_device* %87)
  %89 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %90 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %89, i32 0, i32 0
  %91 = call i32 @del_timer_sync(i32* %90)
  ret i32 0
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i64 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @update_stats(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

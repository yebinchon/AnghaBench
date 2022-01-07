; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c523.c_elmc_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_3c523.c_elmc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@elmc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_SAMPLE_RANDOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: couldn't get irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @elmc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elmc_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = call i32 (...) @elmc_id_attn586()
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IRQF_SHARED, align 4
  %10 = load i32, i32* @IRQF_SAMPLE_RANDOM, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @request_irq(i32 %8, i32* @elmc_interrupt, i32 %11, i32 %14, %struct.net_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = call i32 (...) @elmc_id_reset586()
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @alloc586(%struct.net_device* %30)
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @init586(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @startrecv586(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @netif_start_queue(%struct.net_device* %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %29, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @elmc_id_attn586(...) #1

declare dso_local i32 @request_irq(i32, i32*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @elmc_id_reset586(...) #1

declare dso_local i32 @alloc586(%struct.net_device*) #1

declare dso_local i32 @init586(%struct.net_device*) #1

declare dso_local i32 @startrecv586(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

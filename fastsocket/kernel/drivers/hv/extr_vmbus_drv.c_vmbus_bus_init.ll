; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_bus_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Unable to initialize the hypervisor - 0x%x\0A\00", align 1
@msg_dpc = common dso_local global i32 0, align 4
@vmbus_on_msg_dpc = common dso_local global i32 0, align 4
@hv_bus = common dso_local global i32 0, align 4
@vmbus_isr = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@hv_acpi_dev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to request IRQ %d\0A\00", align 1
@vmbus_flow_handler = common dso_local global i32 0, align 4
@hv_synic_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vmbus_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_bus_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @hv_init()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = load i32, i32* @vmbus_on_msg_dpc, align 4
  %14 = call i32 @tasklet_init(i32* @msg_dpc, i32 %13, i32 0)
  %15 = call i32 @bus_register(i32* @hv_bus)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %57

19:                                               ; preds = %12
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @vmbus_isr, align 4
  %22 = load i32, i32* @driver_name, align 4
  %23 = load i32, i32* @hv_acpi_dev, align 4
  %24 = call i32 @request_irq(i32 %20, i32 %21, i32 0, i32 %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %55

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @vmbus_flow_handler, align 4
  %33 = call i32 @set_irq_handler(i32 %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @vmbus_isr, align 4
  %36 = call i32 @hv_register_vmbus_handler(i32 %34, i32 %35)
  %37 = call i32 (...) @hv_synic_alloc()
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %50

41:                                               ; preds = %30
  %42 = load i32, i32* @hv_synic_init, align 4
  %43 = call i32 @on_each_cpu(i32 %42, i32* null, i32 1)
  %44 = call i32 (...) @vmbus_connect()
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  %49 = call i32 (...) @vmbus_request_offers()
  store i32 0, i32* %2, align 4
  br label %60

50:                                               ; preds = %47, %40
  %51 = call i32 (...) @hv_synic_free()
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @hv_acpi_dev, align 4
  %54 = call i32 @free_irq(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %27
  %56 = call i32 @bus_unregister(i32* @hv_bus)
  br label %57

57:                                               ; preds = %55, %18
  %58 = call i32 (...) @hv_cleanup()
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %48, %8
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @hv_init(...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i32) #1

declare dso_local i32 @bus_register(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @hv_register_vmbus_handler(i32, i32) #1

declare dso_local i32 @hv_synic_alloc(...) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i32 @vmbus_connect(...) #1

declare dso_local i32 @vmbus_request_offers(...) #1

declare dso_local i32 @hv_synic_free(...) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @bus_unregister(i32*) #1

declare dso_local i32 @hv_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

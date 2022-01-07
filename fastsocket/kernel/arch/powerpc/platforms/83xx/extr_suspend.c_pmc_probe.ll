; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_suspend.c_pmc_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/83xx/extr_suspend.c_pmc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.pmc_type* }
%struct.pmc_type = type { i32 }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@has_deep_sleep = common dso_local global i32 0, align 4
@immrbase = common dso_local global i32 0, align 4
@pmc_dev = common dso_local global %struct.of_device* null, align 8
@is_pci_agent = common dso_local global i64 0, align 8
@pmc_irq = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@pmc_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pmc\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@pmc_regs = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@clock_regs = common dso_local global i8* null, align 8
@mpc83xx_suspend_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*, %struct.of_device_id*)* @pmc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_probe(%struct.of_device* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca %struct.pmc_type*, align 8
  %9 = alloca i32, align 4
  store %struct.of_device* %0, %struct.of_device** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  %10 = load %struct.of_device*, %struct.of_device** %4, align 8
  %11 = getelementptr inbounds %struct.of_device, %struct.of_device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %13, i32 0, i32 0
  %15 = load %struct.pmc_type*, %struct.pmc_type** %14, align 8
  store %struct.pmc_type* %15, %struct.pmc_type** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = call i32 @of_device_is_available(%struct.device_node* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %106

22:                                               ; preds = %2
  %23 = load %struct.pmc_type*, %struct.pmc_type** %8, align 8
  %24 = getelementptr inbounds %struct.pmc_type, %struct.pmc_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @has_deep_sleep, align 4
  %26 = call i32 (...) @get_immrbase()
  store i32 %26, i32* @immrbase, align 4
  %27 = load %struct.of_device*, %struct.of_device** %4, align 8
  store %struct.of_device* %27, %struct.of_device** @pmc_dev, align 8
  %28 = call i64 (...) @mpc83xx_is_pci_agent()
  store i64 %28, i64* @is_pci_agent, align 8
  %29 = load i64, i64* @is_pci_agent, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i64, i64* @is_pci_agent, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %106

34:                                               ; preds = %22
  %35 = load %struct.device_node*, %struct.device_node** %6, align 8
  %36 = call i32 @of_address_to_resource(%struct.device_node* %35, i32 0, %struct.resource* %7)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %106

42:                                               ; preds = %34
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = call i64 @irq_of_parse_and_map(%struct.device_node* %43, i32 0)
  store i64 %44, i64* @pmc_irq, align 8
  %45 = load i64, i64* @pmc_irq, align 8
  %46 = load i64, i64* @NO_IRQ, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load i64, i64* @pmc_irq, align 8
  %50 = load i32, i32* @pmc_irq_handler, align 4
  %51 = load i32, i32* @IRQF_SHARED, align 4
  %52 = load %struct.of_device*, %struct.of_device** %4, align 8
  %53 = call i32 @request_irq(i64 %49, i32 %50, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.of_device* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %106

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59, %42
  %61 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @ioremap(i32 %62, i32 4)
  store i8* %63, i8** @pmc_regs, align 8
  %64 = load i8*, i8** @pmc_regs, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %96

69:                                               ; preds = %60
  %70 = load %struct.device_node*, %struct.device_node** %6, align 8
  %71 = call i32 @of_address_to_resource(%struct.device_node* %70, i32 1, %struct.resource* %7)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %93

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @ioremap(i32 %79, i32 4)
  store i8* %80, i8** @clock_regs, align 8
  %81 = load i8*, i8** @clock_regs, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %93

86:                                               ; preds = %77
  %87 = load i64, i64* @is_pci_agent, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 (...) @mpc83xx_set_agent()
  br label %91

91:                                               ; preds = %89, %86
  %92 = call i32 @suspend_set_ops(i32* @mpc83xx_suspend_ops)
  store i32 0, i32* %3, align 4
  br label %106

93:                                               ; preds = %83, %74
  %94 = load i8*, i8** @pmc_regs, align 8
  %95 = call i32 @iounmap(i8* %94)
  br label %96

96:                                               ; preds = %93, %66
  %97 = load i64, i64* @pmc_irq, align 8
  %98 = load i64, i64* @NO_IRQ, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i64, i64* @pmc_irq, align 8
  %102 = load %struct.of_device*, %struct.of_device** %4, align 8
  %103 = call i32 @free_irq(i64 %101, %struct.of_device* %102)
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %91, %56, %39, %31, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @get_immrbase(...) #1

declare dso_local i64 @mpc83xx_is_pci_agent(...) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.of_device*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @mpc83xx_set_agent(...) #1

declare dso_local i32 @suspend_set_ops(i32*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @free_irq(i64, %struct.of_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

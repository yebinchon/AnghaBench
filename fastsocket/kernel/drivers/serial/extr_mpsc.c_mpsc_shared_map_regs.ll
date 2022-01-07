; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_shared_map_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_shared_map_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i8* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@MPSC_ROUTING_BASE_ORDER = common dso_local global i32 0, align 4
@MPSC_ROUTING_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mpsc_routing_regs\00", align 1
@mpsc_shared_regs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"MPSC routing base\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MPSC_SDMA_INTR_BASE_ORDER = common dso_local global i32 0, align 4
@MPSC_SDMA_INTR_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"sdma_intr_regs\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"SDMA intr base\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpsc_shared_map_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_shared_map_regs(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @IORESOURCE_MEM, align 4
  %7 = load i32, i32* @MPSC_ROUTING_BASE_ORDER, align 4
  %8 = call %struct.resource* @platform_get_resource(%struct.platform_device* %5, i32 %6, i32 %7)
  store %struct.resource* %8, %struct.resource** %4, align 8
  %9 = icmp ne %struct.resource* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MPSC_ROUTING_REG_BLOCK_SIZE, align 4
  %15 = call i64 @request_mem_region(i32 %13, i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.resource*, %struct.resource** %4, align 8
  %19 = getelementptr inbounds %struct.resource, %struct.resource* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MPSC_ROUTING_REG_BLOCK_SIZE, align 4
  %22 = call i8* @ioremap(i32 %20, i32 %21)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 1), align 8
  %23 = load %struct.resource*, %struct.resource** %4, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 0), align 8
  br label %30

26:                                               ; preds = %10, %1
  %27 = call i32 @mpsc_resource_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = load i32, i32* @MPSC_SDMA_INTR_BASE_ORDER, align 4
  %34 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 %33)
  store %struct.resource* %34, %struct.resource** %4, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MPSC_SDMA_INTR_REG_BLOCK_SIZE, align 4
  %41 = call i64 @request_mem_region(i32 %39, i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.resource*, %struct.resource** %4, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MPSC_SDMA_INTR_REG_BLOCK_SIZE, align 4
  %48 = call i8* @ioremap(i32 %46, i32 %47)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 3), align 8
  %49 = load %struct.resource*, %struct.resource** %4, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 2), align 8
  br label %61

52:                                               ; preds = %36, %30
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 1), align 8
  %54 = call i32 @iounmap(i8* %53)
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mpsc_shared_regs, i32 0, i32 0), align 8
  %56 = load i32, i32* @MPSC_ROUTING_REG_BLOCK_SIZE, align 4
  %57 = call i32 @release_mem_region(i32 %55, i32 %56)
  %58 = call i32 @mpsc_resource_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %52, %26
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @request_mem_region(i32, i32, i8*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @mpsc_resource_err(i8*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

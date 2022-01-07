; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_drv_map_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_drv_map_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32*, i32*, i32, i8*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@MPSC_BASE_ORDER = common dso_local global i32 0, align 4
@MPSC_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mpsc_regs\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"MPSC base\00", align 1
@MPSC_SDMA_BASE_ORDER = common dso_local global i32 0, align 4
@MPSC_SDMA_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sdma_regs\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"SDMA base\00", align 1
@MPSC_BRG_BASE_ORDER = common dso_local global i32 0, align 4
@MPSC_BRG_REG_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"brg_regs\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BRG base\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpsc_port_info*, %struct.platform_device*)* @mpsc_drv_map_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_drv_map_regs(%struct.mpsc_port_info* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mpsc_port_info*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = load i32, i32* @MPSC_BASE_ORDER, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 %9)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MPSC_REG_BLOCK_SIZE, align 4
  %17 = call i64 @request_mem_region(i32 %15, i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %12
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MPSC_REG_BLOCK_SIZE, align 4
  %24 = call i8* @ioremap(i32 %22, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %27 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %32 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %35

33:                                               ; preds = %12, %2
  %34 = call i32 @mpsc_resource_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %129

35:                                               ; preds = %19
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = load i32, i32* @MPSC_SDMA_BASE_ORDER, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 %38)
  store %struct.resource* %39, %struct.resource** %6, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MPSC_SDMA_REG_BLOCK_SIZE, align 4
  %46 = call i64 @request_mem_region(i32 %44, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MPSC_SDMA_REG_BLOCK_SIZE, align 4
  %53 = call i8* @ioremap(i32 %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %56 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %61 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  br label %76

62:                                               ; preds = %41, %35
  %63 = call i32 @mpsc_resource_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %65 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %70 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @iounmap(i32* %71)
  %73 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %74 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %73, i32 0, i32 1
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %62
  br label %129

76:                                               ; preds = %48
  %77 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %78 = load i32, i32* @IORESOURCE_MEM, align 4
  %79 = load i32, i32* @MPSC_BRG_BASE_ORDER, align 4
  %80 = call %struct.resource* @platform_get_resource(%struct.platform_device* %77, i32 %78, i32 %79)
  store %struct.resource* %80, %struct.resource** %6, align 8
  %81 = icmp ne %struct.resource* %80, null
  br i1 %81, label %82, label %102

82:                                               ; preds = %76
  %83 = load %struct.resource*, %struct.resource** %6, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MPSC_BRG_REG_BLOCK_SIZE, align 4
  %87 = call i64 @request_mem_region(i32 %85, i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %82
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MPSC_BRG_REG_BLOCK_SIZE, align 4
  %94 = call i8* @ioremap(i32 %92, i32 %93)
  %95 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %96 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %101 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %128

102:                                              ; preds = %82, %76
  %103 = call i32 @mpsc_resource_err(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %104 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %105 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %110 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @iounmap(i32* %111)
  %113 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %114 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %113, i32 0, i32 1
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %108, %102
  %116 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %117 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %122 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @iounmap(i32* %123)
  %125 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %4, align 8
  %126 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %125, i32 0, i32 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %115
  br label %129

128:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %132

129:                                              ; preds = %127, %75, %33
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %129, %128
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @request_mem_region(i32, i32, i8*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @mpsc_resource_err(i8*) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

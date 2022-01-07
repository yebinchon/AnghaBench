; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_mcp-sa11x0.c_mcp_sa11x0_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mcp_plat_data* }
%struct.mcp_plat_data = type { i32, i32, i32 }
%struct.mcp = type { i32, i32, i32, i32, i32, i32, i32*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sa11x0-mcp\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@mcp_sa11x0 = common dso_local global i32 0, align 4
@DMA_Ser4MCP0Rd = common dso_local global i32 0, align 4
@DMA_Ser4MCP0Wr = common dso_local global i32 0, align 4
@DMA_Ser4MCP1Rd = common dso_local global i32 0, align 4
@DMA_Ser4MCP1Wr = common dso_local global i32 0, align 4
@ASSABET_BCR_CODEC_RST = common dso_local global i32 0, align 4
@PPC_RXD4 = common dso_local global i32 0, align 4
@PPDR = common dso_local global i32 0, align 4
@PPC_TXD4 = common dso_local global i32 0, align 4
@PPC_SCLK = common dso_local global i32 0, align 4
@PPC_SFRM = common dso_local global i32 0, align 4
@PSDR = common dso_local global i32 0, align 4
@PPSR = common dso_local global i32 0, align 4
@Ser4MCSR = common dso_local global i32 0, align 4
@Ser4MCCR1 = common dso_local global i32 0, align 4
@Ser4MCCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcp_sa11x0_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp_sa11x0_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mcp_plat_data*, align 8
  %5 = alloca %struct.mcp*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %9, align 8
  store %struct.mcp_plat_data* %10, %struct.mcp_plat_data** %4, align 8
  %11 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %12 = icmp ne %struct.mcp_plat_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %123

16:                                               ; preds = %1
  %17 = call i32 @request_mem_region(i32 -2147090432, i32 96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %123

22:                                               ; preds = %16
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call %struct.mcp* @mcp_host_alloc(%struct.TYPE_2__* %24, i32 4)
  store %struct.mcp* %25, %struct.mcp** %5, align 8
  %26 = load %struct.mcp*, %struct.mcp** %5, align 8
  %27 = icmp ne %struct.mcp* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %117

31:                                               ; preds = %22
  %32 = load i32, i32* @THIS_MODULE, align 4
  %33 = load %struct.mcp*, %struct.mcp** %5, align 8
  %34 = getelementptr inbounds %struct.mcp, %struct.mcp* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mcp*, %struct.mcp** %5, align 8
  %36 = getelementptr inbounds %struct.mcp, %struct.mcp* %35, i32 0, i32 6
  store i32* @mcp_sa11x0, i32** %36, align 8
  %37 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %38 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mcp*, %struct.mcp** %5, align 8
  %41 = getelementptr inbounds %struct.mcp, %struct.mcp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @DMA_Ser4MCP0Rd, align 4
  %43 = load %struct.mcp*, %struct.mcp** %5, align 8
  %44 = getelementptr inbounds %struct.mcp, %struct.mcp* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @DMA_Ser4MCP0Wr, align 4
  %46 = load %struct.mcp*, %struct.mcp** %5, align 8
  %47 = getelementptr inbounds %struct.mcp, %struct.mcp* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @DMA_Ser4MCP1Rd, align 4
  %49 = load %struct.mcp*, %struct.mcp** %5, align 8
  %50 = getelementptr inbounds %struct.mcp, %struct.mcp* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DMA_Ser4MCP1Wr, align 4
  %52 = load %struct.mcp*, %struct.mcp** %5, align 8
  %53 = getelementptr inbounds %struct.mcp, %struct.mcp* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.mcp*, %struct.mcp** %5, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.mcp* %55)
  %57 = call i64 (...) @machine_is_assabet()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %31
  %60 = load i32, i32* @ASSABET_BCR_CODEC_RST, align 4
  %61 = call i32 @ASSABET_BCR_set(i32 %60)
  br label %62

62:                                               ; preds = %59, %31
  %63 = load i32, i32* @PPC_RXD4, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* @PPDR, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* @PPDR, align 4
  %67 = load i32, i32* @PPC_TXD4, align 4
  %68 = load i32, i32* @PPC_SCLK, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @PPC_SFRM, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @PPDR, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @PPDR, align 4
  %74 = load i32, i32* @PPC_RXD4, align 4
  %75 = load i32, i32* @PSDR, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* @PSDR, align 4
  %77 = load i32, i32* @PPC_TXD4, align 4
  %78 = load i32, i32* @PPC_SCLK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PPC_SFRM, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @PSDR, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @PSDR, align 4
  %85 = load i32, i32* @PPC_TXD4, align 4
  %86 = load i32, i32* @PPC_SCLK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @PPC_SFRM, align 4
  %89 = or i32 %87, %88
  %90 = xor i32 %89, -1
  %91 = load i32, i32* @PPSR, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* @PPSR, align 4
  store i32 -1, i32* @Ser4MCSR, align 4
  %93 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %94 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* @Ser4MCCR1, align 4
  %96 = load %struct.mcp_plat_data*, %struct.mcp_plat_data** %4, align 8
  %97 = getelementptr inbounds %struct.mcp_plat_data, %struct.mcp_plat_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, 32639
  store i32 %99, i32* @Ser4MCCR0, align 4
  %100 = load %struct.mcp*, %struct.mcp** %5, align 8
  %101 = getelementptr inbounds %struct.mcp, %struct.mcp* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 192000000, %102
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.mcp*, %struct.mcp** %5, align 8
  %106 = getelementptr inbounds %struct.mcp, %struct.mcp* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sdiv i32 %104, %107
  %109 = load %struct.mcp*, %struct.mcp** %5, align 8
  %110 = getelementptr inbounds %struct.mcp, %struct.mcp* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.mcp*, %struct.mcp** %5, align 8
  %112 = call i32 @mcp_host_register(%struct.mcp* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %62
  br label %121

116:                                              ; preds = %62
  br label %117

117:                                              ; preds = %116, %28
  %118 = call i32 @release_mem_region(i32 -2147090432, i32 96)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = call i32 @platform_set_drvdata(%struct.platform_device* %119, %struct.mcp* null)
  br label %121

121:                                              ; preds = %117, %115
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %19, %13
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local %struct.mcp* @mcp_host_alloc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mcp*) #1

declare dso_local i64 @machine_is_assabet(...) #1

declare dso_local i32 @ASSABET_BCR_set(i32) #1

declare dso_local i32 @mcp_host_register(%struct.mcp*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

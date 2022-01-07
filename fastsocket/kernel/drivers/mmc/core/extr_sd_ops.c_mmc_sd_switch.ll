; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_sd_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_sd_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_request = type { i32, i32, i32, i32, i32, i32, %struct.scatterlist*, i32, %struct.mmc_request*, %struct.mmc_request* }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32, i32, i32, %struct.scatterlist*, i32, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, %struct.scatterlist*, i32, %struct.mmc_data*, %struct.mmc_data* }

@SD_SWITCH = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_sd_switch(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mmc_request, align 8
  %13 = alloca %struct.mmc_command, align 8
  %14 = alloca %struct.mmc_data, align 8
  %15 = alloca %struct.scatterlist, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %17 = icmp ne %struct.mmc_card* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %22 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %10, align 4
  %35 = call i32 @memset(%struct.mmc_request* %12, i32 0, i32 56)
  %36 = bitcast %struct.mmc_command* %13 to %struct.mmc_request*
  %37 = call i32 @memset(%struct.mmc_request* %36, i32 0, i32 56)
  %38 = bitcast %struct.mmc_data* %14 to %struct.mmc_request*
  %39 = call i32 @memset(%struct.mmc_request* %38, i32 0, i32 56)
  %40 = bitcast %struct.mmc_command* %13 to %struct.mmc_request*
  %41 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 9
  store %struct.mmc_request* %40, %struct.mmc_request** %41, align 8
  %42 = bitcast %struct.mmc_data* %14 to %struct.mmc_request*
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 8
  store %struct.mmc_request* %42, %struct.mmc_request** %43, align 8
  %44 = load i32, i32* @SD_SWITCH, align 4
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 7
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 31
  %48 = or i32 %47, 16777215
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %50, 4
  %52 = shl i32 15, %51
  %53 = xor i32 %52, -1
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, %53
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %58, 4
  %60 = shl i32 %57, %59
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %65 = load i32, i32* @MMC_RSP_R1, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MMC_CMD_ADTC, align 4
  %68 = or i32 %66, %67
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  store i32 64, i32* %70, align 8
  %71 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 3
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* @MMC_DATA_READ, align 4
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 6
  store %struct.scatterlist* %15, %struct.scatterlist** %74, align 8
  %75 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 4
  store i32 1, i32* %75, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @sg_init_one(%struct.scatterlist* %15, i32* %76, i32 64)
  %78 = bitcast %struct.mmc_data* %14 to %struct.mmc_request*
  %79 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %80 = call i32 @mmc_set_data_timeout(%struct.mmc_request* %78, %struct.mmc_card* %79)
  %81 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %82 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mmc_wait_for_req(i32 %83, %struct.mmc_request* %12)
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %5
  %89 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  br label %99

91:                                               ; preds = %5
  %92 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  br label %99

98:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %95, %88
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_request*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

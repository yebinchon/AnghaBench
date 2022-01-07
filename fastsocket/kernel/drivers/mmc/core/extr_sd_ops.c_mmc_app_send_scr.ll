; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_app_send_scr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sd_ops.c_mmc_app_send_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_request = type { i32, i32, i32, i32, i32, %struct.scatterlist*, i64, i32, %struct.mmc_request*, %struct.mmc_request* }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32, i32, %struct.scatterlist*, i64, i32, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, %struct.scatterlist*, i64, i32, %struct.mmc_data*, %struct.mmc_data* }

@SD_APP_SEND_SCR = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_app_send_scr(%struct.mmc_card* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request, align 8
  %8 = alloca %struct.mmc_command, align 8
  %9 = alloca %struct.mmc_data, align 8
  %10 = alloca %struct.scatterlist, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %12 = icmp ne %struct.mmc_card* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %32 = call i32 @mmc_app_cmd(i32 %30, %struct.mmc_card* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %97

37:                                               ; preds = %2
  %38 = call i32 @memset(%struct.mmc_request* %7, i32 0, i32 64)
  %39 = bitcast %struct.mmc_command* %8 to %struct.mmc_request*
  %40 = call i32 @memset(%struct.mmc_request* %39, i32 0, i32 64)
  %41 = bitcast %struct.mmc_data* %9 to %struct.mmc_request*
  %42 = call i32 @memset(%struct.mmc_request* %41, i32 0, i32 64)
  %43 = bitcast %struct.mmc_command* %8 to %struct.mmc_request*
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 9
  store %struct.mmc_request* %43, %struct.mmc_request** %44, align 8
  %45 = bitcast %struct.mmc_data* %9 to %struct.mmc_request*
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 8
  store %struct.mmc_request* %45, %struct.mmc_request** %46, align 8
  %47 = load i32, i32* @SD_APP_SEND_SCR, align 4
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 7
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %51 = load i32, i32* @MMC_RSP_R1, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MMC_CMD_ADTC, align 4
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 1
  store i32 8, i32* %56, align 4
  %57 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 2
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* @MMC_DATA_READ, align 4
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 5
  store %struct.scatterlist* %10, %struct.scatterlist** %60, align 8
  %61 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @sg_init_one(%struct.scatterlist* %10, i32* %62, i32 8)
  %64 = bitcast %struct.mmc_data* %9 to %struct.mmc_request*
  %65 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %66 = call i32 @mmc_set_data_timeout(%struct.mmc_request* %64, %struct.mmc_card* %65)
  %67 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @mmc_wait_for_req(i32 %69, %struct.mmc_request* %7)
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %37
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %8, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %3, align 4
  br label %97

77:                                               ; preds = %37
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %3, align 4
  br label %97

84:                                               ; preds = %77
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be32_to_cpu(i32 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  store i32 %88, i32* %90, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @be32_to_cpu(i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %84, %81, %74, %35
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mmc_app_cmd(i32, %struct.mmc_card*) #1

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_request*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_wait_for_req(i32, %struct.mmc_request*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

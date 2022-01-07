; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_mmc_ops.c_mmc_send_cxd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32, i32, i32, i32, i32, i32, i64, %struct.scatterlist*, i64, i64, %struct.mmc_request*, %struct.mmc_request* }
%struct.scatterlist = type { i32 }
%struct.mmc_command = type { i32, i32, i32, i32, i32, i32, i64, %struct.scatterlist*, i64, i64, %struct.mmc_command*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i64, %struct.scatterlist*, i64, i64, %struct.mmc_data*, %struct.mmc_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_ADTC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_SEND_CSD = common dso_local global i64 0, align 8
@MMC_SEND_CID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.mmc_host*, i64, i8*, i32)* @mmc_send_cxd_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_send_cxd_data(%struct.mmc_card* %0, %struct.mmc_host* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mmc_request, align 8
  %13 = alloca %struct.mmc_command, align 8
  %14 = alloca %struct.mmc_data, align 8
  %15 = alloca %struct.scatterlist, align 4
  %16 = alloca i8*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %7, align 8
  store %struct.mmc_host* %1, %struct.mmc_host** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %91

25:                                               ; preds = %5
  %26 = call i32 @memset(%struct.mmc_request* %12, i32 0, i32 72)
  %27 = bitcast %struct.mmc_command* %13 to %struct.mmc_request*
  %28 = call i32 @memset(%struct.mmc_request* %27, i32 0, i32 72)
  %29 = bitcast %struct.mmc_data* %14 to %struct.mmc_request*
  %30 = call i32 @memset(%struct.mmc_request* %29, i32 0, i32 72)
  %31 = bitcast %struct.mmc_command* %13 to %struct.mmc_request*
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 11
  store %struct.mmc_request* %31, %struct.mmc_request** %32, align 8
  %33 = bitcast %struct.mmc_data* %14 to %struct.mmc_request*
  %34 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %12, i32 0, i32 10
  store %struct.mmc_request* %33, %struct.mmc_request** %34, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 9
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %39 = load i32, i32* @MMC_RSP_R1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MMC_CMD_ADTC, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @MMC_DATA_READ, align 4
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 7
  store %struct.scatterlist* %15, %struct.scatterlist** %49, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 3
  store i32 1, i32* %50, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @sg_init_one(%struct.scatterlist* %15, i8* %51, i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @MMC_SEND_CSD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %25
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @MMC_SEND_CID, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %25
  %62 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 4
  store i32 64, i32* %63, align 8
  br label %68

64:                                               ; preds = %57
  %65 = bitcast %struct.mmc_data* %14 to %struct.mmc_request*
  %66 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %67 = call i32 @mmc_set_data_timeout(%struct.mmc_request* %65, %struct.mmc_card* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %70 = call i32 @mmc_wait_for_req(%struct.mmc_host* %69, %struct.mmc_request* %12)
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @kfree(i8* %75)
  %77 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %6, align 4
  br label %91

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  br label %91

90:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %87, %80, %22
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.mmc_request*, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @mmc_set_data_timeout(%struct.mmc_request*, %struct.mmc_card*) #1

declare dso_local i32 @mmc_wait_for_req(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

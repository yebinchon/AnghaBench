; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ddp_set_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ddp_set_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { %struct.cxgbi_device* }
%struct.cxgbi_device = type { i32, %struct.cxgbi_ddp_info* }
%struct.cxgbi_ddp_info = type { i32 }
%struct.cxgbi_pagepod_hdr = type { i32 }
%struct.cxgbi_gather_list = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.cxgbi_pagepod = type { i32 }

@PPOD_SIZE_SHIFT = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"csk 0x%p, idx %u, npods %u, gl 0x%p.\0A\00", align 1
@PPOD_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PPOD_PAGES_MAX = common dso_local global i32 0, align 4
@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*)* @ddp_set_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_set_map(%struct.cxgbi_sock* %0, %struct.cxgbi_pagepod_hdr* %1, i32 %2, i32 %3, %struct.cxgbi_gather_list* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxgbi_sock*, align 8
  %8 = alloca %struct.cxgbi_pagepod_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cxgbi_gather_list*, align 8
  %12 = alloca %struct.cxgbi_device*, align 8
  %13 = alloca %struct.cxgbi_ddp_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %7, align 8
  store %struct.cxgbi_pagepod_hdr* %1, %struct.cxgbi_pagepod_hdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.cxgbi_gather_list* %4, %struct.cxgbi_gather_list** %11, align 8
  %17 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %18 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %17, i32 0, i32 0
  %19 = load %struct.cxgbi_device*, %struct.cxgbi_device** %18, align 8
  store %struct.cxgbi_device* %19, %struct.cxgbi_device** %12, align 8
  %20 = load %struct.cxgbi_device*, %struct.cxgbi_device** %12, align 8
  %21 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %20, i32 0, i32 1
  %22 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %21, align 8
  store %struct.cxgbi_ddp_info* %22, %struct.cxgbi_ddp_info** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PPOD_SIZE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %13, align 8
  %27 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %25, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %11, align 8
  %36 = call i32 @log_debug(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_sock* %32, i32 %33, i32 %34, %struct.cxgbi_gather_list* %35)
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %74, %5
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %37
  %42 = load i64, i64* @PPOD_SIZE, align 8
  %43 = add i64 4, %42
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.sk_buff* @alloc_wr(i64 %43, i32 0, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %16, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %85

51:                                               ; preds = %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @ulp_mem_io_set_hdr(%struct.sk_buff* %52, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 4
  %59 = inttoptr i64 %58 to %struct.cxgbi_pagepod*
  %60 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %8, align 8
  %61 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %11, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @PPOD_PAGES_MAX, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @cxgbi_ddp_ppod_set(%struct.cxgbi_pagepod* %59, %struct.cxgbi_pagepod_hdr* %60, %struct.cxgbi_gather_list* %61, i32 %64)
  %66 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.cxgbi_device*, %struct.cxgbi_device** %12, align 8
  %70 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = call i32 @cxgb3_ofld_send(i32 %71, %struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %51
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i64, i64* @PPOD_SIZE, align 8
  %80 = load i32, i32* %14, align 4
  %81 = zext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %14, align 4
  br label %37

84:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %84, %48
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_sock*, i32, i32, %struct.cxgbi_gather_list*) #1

declare dso_local %struct.sk_buff* @alloc_wr(i64, i32, i32) #1

declare dso_local i32 @ulp_mem_io_set_hdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgbi_ddp_ppod_set(%struct.cxgbi_pagepod*, %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_gather_list*, i32) #1

declare dso_local i32 @cxgb3_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

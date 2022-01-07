; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_ppod_write_idata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_ppod_write_idata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i32*, %struct.cxgbi_ddp_info* }
%struct.cxgbi_ddp_info = type { i32 }
%struct.cxgbi_pagepod_hdr = type { i32 }
%struct.cxgbi_gather_list = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ulp_mem_io = type { i32 }
%struct.ulptx_idata = type { i32 }
%struct.cxgbi_pagepod = type { i32 }

@PPOD_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cdev 0x%p, idx %u, npods %u, OOM.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CPL_PRIORITY_CONTROL = common dso_local global i32 0, align 4
@PPOD_PAGES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_device*, i32, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*, i32)* @ddp_ppod_write_idata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_ppod_write_idata(%struct.cxgbi_device* %0, i32 %1, %struct.cxgbi_pagepod_hdr* %2, i32 %3, i32 %4, %struct.cxgbi_gather_list* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxgbi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cxgbi_pagepod_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.cxgbi_gather_list*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.cxgbi_ddp_info*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.ulp_mem_io*, align 8
  %19 = alloca %struct.ulptx_idata*, align 8
  %20 = alloca %struct.cxgbi_pagepod*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.cxgbi_device* %0, %struct.cxgbi_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.cxgbi_pagepod_hdr* %2, %struct.cxgbi_pagepod_hdr** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.cxgbi_gather_list* %5, %struct.cxgbi_gather_list** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %26 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %25, i32 0, i32 1
  %27 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %26, align 8
  store %struct.cxgbi_ddp_info* %27, %struct.cxgbi_ddp_info** %16, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @PPOD_SIZE, align 4
  %30 = mul i32 %28, %29
  %31 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %16, align 8
  %32 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %30, %33
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* @PPOD_SIZE, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul i32 %35, %36
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %22, align 4
  %39 = zext i32 %38 to i64
  %40 = add i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @roundup(i32 %41, i32 16)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call %struct.sk_buff* @alloc_wr(i32 %43, i32 0, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %17, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %7
  %49 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.cxgbi_device* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %114

55:                                               ; preds = %7
  %56 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.ulp_mem_io*
  store %struct.ulp_mem_io* %59, %struct.ulp_mem_io** %18, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %61 = load i32, i32* @CPL_PRIORITY_CONTROL, align 4
  %62 = call i32 @set_queue(%struct.sk_buff* %60, i32 %61, i32* null)
  %63 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %18, align 8
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @ulp_mem_io_set_hdr(%struct.ulp_mem_io* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %18, align 8
  %69 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %68, i64 1
  %70 = bitcast %struct.ulp_mem_io* %69 to %struct.ulptx_idata*
  store %struct.ulptx_idata* %70, %struct.ulptx_idata** %19, align 8
  %71 = load %struct.ulptx_idata*, %struct.ulptx_idata** %19, align 8
  %72 = getelementptr inbounds %struct.ulptx_idata, %struct.ulptx_idata* %71, i64 1
  %73 = bitcast %struct.ulptx_idata* %72 to %struct.cxgbi_pagepod*
  store %struct.cxgbi_pagepod* %73, %struct.cxgbi_pagepod** %20, align 8
  store i32 0, i32* %24, align 4
  br label %74

74:                                               ; preds = %94, %55
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %11, align 8
  %80 = icmp ne %struct.cxgbi_pagepod_hdr* %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %14, align 8
  %83 = icmp ne %struct.cxgbi_gather_list* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %86 = call i32 @cxgbi_ddp_ppod_clear(%struct.cxgbi_pagepod* %85)
  br label %93

87:                                               ; preds = %81, %78
  %88 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %89 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %11, align 8
  %90 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @cxgbi_ddp_ppod_set(%struct.cxgbi_pagepod* %88, %struct.cxgbi_pagepod_hdr* %89, %struct.cxgbi_gather_list* %90, i32 %91)
  br label %93

93:                                               ; preds = %87, %84
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %24, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %24, align 4
  %97 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %20, align 8
  %98 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %97, i32 1
  store %struct.cxgbi_pagepod* %98, %struct.cxgbi_pagepod** %20, align 8
  %99 = load i64, i64* @PPOD_PAGES_MAX, align 8
  %100 = load i32, i32* %15, align 4
  %101 = zext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %15, align 4
  br label %74

104:                                              ; preds = %74
  %105 = load %struct.cxgbi_device*, %struct.cxgbi_device** %9, align 8
  %106 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %113 = call i32 @cxgb4_ofld_send(i32 %111, %struct.sk_buff* %112)
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %104, %48
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_wr(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.cxgbi_device*, i32, i32) #1

declare dso_local i32 @set_queue(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @ulp_mem_io_set_hdr(%struct.ulp_mem_io*, i32, i32, i32) #1

declare dso_local i32 @cxgbi_ddp_ppod_clear(%struct.cxgbi_pagepod*) #1

declare dso_local i32 @cxgbi_ddp_ppod_set(%struct.cxgbi_pagepod*, %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_gather_list*, i32) #1

declare dso_local i32 @cxgb4_ofld_send(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

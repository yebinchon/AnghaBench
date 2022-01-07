; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_set_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/cxgb4i/extr_cxgb4i.c_ddp_set_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, i32 }
%struct.cxgbi_pagepod_hdr = type { i32 }
%struct.cxgbi_gather_list = type { i32 }

@ULPMEM_IDATA_MAX_NPPODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbi_sock*, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*)* @ddp_set_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddp_set_map(%struct.cxgbi_sock* %0, %struct.cxgbi_pagepod_hdr* %1, i32 %2, i32 %3, %struct.cxgbi_gather_list* %4) #0 {
  %6 = alloca %struct.cxgbi_sock*, align 8
  %7 = alloca %struct.cxgbi_pagepod_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxgbi_gather_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %6, align 8
  store %struct.cxgbi_pagepod_hdr* %1, %struct.cxgbi_pagepod_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.cxgbi_gather_list* %4, %struct.cxgbi_gather_list** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %45, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sub i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @ULPMEM_IDATA_MAX_NPPODS, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ULPMEM_IDATA_MAX_NPPODS, align 4
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %6, align 8
  %29 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %6, align 8
  %32 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = mul i32 4, %38
  %40 = call i32 @ddp_ppod_write_idata(i32 %30, i32 %33, %struct.cxgbi_pagepod_hdr* %34, i32 %35, i32 %36, %struct.cxgbi_gather_list* %37, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %52

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %14

52:                                               ; preds = %43, %14
  %53 = load i32, i32* %13, align 4
  ret i32 %53
}

declare dso_local i32 @ddp_ppod_write_idata(i32, i32, %struct.cxgbi_pagepod_hdr*, i32, i32, %struct.cxgbi_gather_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

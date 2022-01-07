; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_ppod_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_ppod_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_pagepod = type { i64* }
%struct.cxgbi_pagepod_hdr = type { i32 }
%struct.cxgbi_gather_list = type { i32, i32* }

@PPOD_PAGES_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_ddp_ppod_set(%struct.cxgbi_pagepod* %0, %struct.cxgbi_pagepod_hdr* %1, %struct.cxgbi_gather_list* %2, i32 %3) #0 {
  %5 = alloca %struct.cxgbi_pagepod*, align 8
  %6 = alloca %struct.cxgbi_pagepod_hdr*, align 8
  %7 = alloca %struct.cxgbi_gather_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxgbi_pagepod* %0, %struct.cxgbi_pagepod** %5, align 8
  store %struct.cxgbi_pagepod_hdr* %1, %struct.cxgbi_pagepod_hdr** %6, align 8
  store %struct.cxgbi_gather_list* %2, %struct.cxgbi_gather_list** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %5, align 8
  %11 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %6, align 8
  %12 = call i32 @memcpy(%struct.cxgbi_pagepod* %10, %struct.cxgbi_pagepod_hdr* %11, i32 4)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %42, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @PPOD_PAGES_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %7, align 8
  %21 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %7, align 8
  %26 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @cpu_to_be64(i32 %31)
  br label %34

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %24
  %35 = phi i64 [ %32, %24 ], [ 0, %33 ]
  %36 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %5, align 8
  %37 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %35, i64* %41, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %13

47:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memcpy(%struct.cxgbi_pagepod*, %struct.cxgbi_pagepod_hdr*, i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

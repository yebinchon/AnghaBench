; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_setup_host_page_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_setup_host_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_idx = common dso_local global i64 0, align 8
@DDP_PGIDX_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"system PAGE %lu, update hw.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"PAGE %lu, disable ddp.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"system PAGE %lu, ddp idx %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ddp_setup_host_page_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddp_setup_host_page_size() #0 {
  %1 = load i64, i64* @page_idx, align 8
  %2 = load i64, i64* @DDP_PGIDX_MAX, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = load i32, i32* @PAGE_SIZE, align 4
  %6 = call i64 @ddp_find_page_index(i32 %5)
  store i64 %6, i64* @page_idx, align 8
  %7 = load i64, i64* @page_idx, align 8
  %8 = load i64, i64* @DDP_PGIDX_MAX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i64 (...) @ddp_adjust_page_table()
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %25

18:                                               ; preds = %10
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i64 @ddp_find_page_index(i32 %19)
  store i64 %20, i64* @page_idx, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i64, i64* @page_idx, align 8
  %24 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %22, i64 %23)
  br label %25

25:                                               ; preds = %15, %21, %0
  ret void
}

declare dso_local i64 @ddp_find_page_index(i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i64 @ddp_adjust_page_table(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

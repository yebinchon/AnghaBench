; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/mm/extr_tlb.c_alloc_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/mm/extr_tlb.c_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"tlb: alloc context %d (%p)\0A\00", align 1
@map_replace_ptr = common dso_local global i64 0, align 8
@page_id_map = common dso_local global %struct.mm_struct** null, align 8
@NO_CONTEXT = common dso_local global i64 0, align 8
@INVALID_PAGEID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mm_struct*)* @alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = load i64, i64* @map_replace_ptr, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %6 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %4, %struct.mm_struct* %5)
  %7 = call i32 @D(i32 %6)
  %8 = load %struct.mm_struct**, %struct.mm_struct*** @page_id_map, align 8
  %9 = load i64, i64* @map_replace_ptr, align 8
  %10 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %8, i64 %9
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %3, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = icmp ne %struct.mm_struct* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %16 = call i32 @flush_tlb_mm(%struct.mm_struct* %15)
  %17 = load i64, i64* @NO_CONTEXT, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load i64, i64* @map_replace_ptr, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %27 = load %struct.mm_struct**, %struct.mm_struct*** @page_id_map, align 8
  %28 = load i64, i64* @map_replace_ptr, align 8
  %29 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %27, i64 %28
  store %struct.mm_struct* %26, %struct.mm_struct** %29, align 8
  %30 = load i64, i64* @map_replace_ptr, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* @map_replace_ptr, align 8
  %32 = load i64, i64* @map_replace_ptr, align 8
  %33 = load i64, i64* @INVALID_PAGEID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i64 0, i64* @map_replace_ptr, align 8
  br label %36

36:                                               ; preds = %35, %21
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printk(i8*, i64, %struct.mm_struct*) #1

declare dso_local i32 @flush_tlb_mm(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

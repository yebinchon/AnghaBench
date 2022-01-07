; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/mm/extr_tlb.c_destroy_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/mm/extr_tlb.c_destroy_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NO_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"destroy_context %d (%p)\0A\00", align 1
@page_id_map = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %3 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %4 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NO_CONTEXT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %11 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %13, %struct.mm_struct* %14)
  %16 = call i32 @D(i32 %15)
  %17 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %18 = call i32 @flush_tlb_mm(%struct.mm_struct* %17)
  %19 = load i32**, i32*** @page_id_map, align 8
  %20 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32*, i32** %19, i64 %23
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %9, %1
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

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_smp.c_ipi_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_smp.c_ipi_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.flush_tlb_page_struct = type { i32, i32, %struct.mm_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipi_flush_tlb_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipi_flush_tlb_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flush_tlb_page_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.flush_tlb_page_struct*
  store %struct.flush_tlb_page_struct* %6, %struct.flush_tlb_page_struct** %3, align 8
  %7 = load %struct.flush_tlb_page_struct*, %struct.flush_tlb_page_struct** %3, align 8
  %8 = getelementptr inbounds %struct.flush_tlb_page_struct, %struct.flush_tlb_page_struct* %7, i32 0, i32 2
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %4, align 8
  %10 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %14 = icmp eq %struct.mm_struct* %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = call i32 (...) @asn_locked()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %20 = load %struct.flush_tlb_page_struct*, %struct.flush_tlb_page_struct** %3, align 8
  %21 = getelementptr inbounds %struct.flush_tlb_page_struct, %struct.flush_tlb_page_struct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.flush_tlb_page_struct*, %struct.flush_tlb_page_struct** %3, align 8
  %24 = getelementptr inbounds %struct.flush_tlb_page_struct, %struct.flush_tlb_page_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @flush_tlb_current_page(%struct.mm_struct* %19, i32 %22, i32 %25)
  br label %30

27:                                               ; preds = %15, %1
  %28 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %29 = call i32 @flush_tlb_other(%struct.mm_struct* %28)
  br label %30

30:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @asn_locked(...) #1

declare dso_local i32 @flush_tlb_current_page(%struct.mm_struct*, i32, i32) #1

declare dso_local i32 @flush_tlb_other(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

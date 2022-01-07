; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_clear_page_presence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_kmmio.c_clear_page_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmmio_fault_page = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"kmmio: no pte for page 0x%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"kmmio: unexpected page level 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmmio_fault_page*, i32)* @clear_page_presence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_page_presence(%struct.kmmio_fault_page* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmmio_fault_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.kmmio_fault_page* %0, %struct.kmmio_fault_page** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %9 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32* @lookup_address(i32 %10, i32* %6)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %16 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %33 [
    i32 129, label %21
    i32 128, label %27
  ]

21:                                               ; preds = %19
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %25 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %24, i32 0, i32 1
  %26 = call i32 @clear_pmd_presence(i32* %22, i32 %23, i32* %25)
  br label %36

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %31 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %30, i32 0, i32 1
  %32 = call i32 @clear_pte_presence(i32* %28, i32 %29, i32* %31)
  br label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 -1, i32* %3, align 4
  br label %41

36:                                               ; preds = %27, %21
  %37 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %38 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__flush_tlb_one(i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %33, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32* @lookup_address(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clear_pmd_presence(i32*, i32, i32*) #1

declare dso_local i32 @clear_pte_presence(i32*, i32, i32*) #1

declare dso_local i32 @__flush_tlb_one(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

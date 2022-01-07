; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_pgtable.c_pgd_list_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_pgtable.c_pgd_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@pgd_list = common dso_local global %struct.page* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @pgd_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgd_list_add(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.page*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call %struct.page* @virt_to_page(i32* %4)
  store %struct.page* %5, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** @pgd_list, align 8
  %7 = ptrtoint %struct.page* %6 to i64
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.page*, %struct.page** @pgd_list, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** @pgd_list, align 8
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = ptrtoint i64* %15 to i64
  %17 = call i32 @set_page_private(%struct.page* %13, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.page*, %struct.page** %3, align 8
  store %struct.page* %19, %struct.page** @pgd_list, align 8
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = call i32 @set_page_private(%struct.page* %20, i64 ptrtoint (%struct.page** @pgd_list to i64))
  ret void
}

declare dso_local %struct.page* @virt_to_page(i32*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

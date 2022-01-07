; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_release_all_pagetables.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_release_all_pagetables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lguest = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@SWITCHER_PGD_INDEX = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@SWITCHER_PMD_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lguest*)* @release_all_pagetables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_all_pagetables(%struct.lguest* %0) #0 {
  %2 = alloca %struct.lguest*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lguest* %0, %struct.lguest** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.lguest*, %struct.lguest** %2, align 8
  %8 = getelementptr inbounds %struct.lguest, %struct.lguest* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %9)
  %11 = icmp ult i32 %6, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %5
  %13 = load %struct.lguest*, %struct.lguest** %2, align 8
  %14 = getelementptr inbounds %struct.lguest, %struct.lguest* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SWITCHER_PGD_INDEX, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.lguest*, %struct.lguest** %2, align 8
  %29 = getelementptr inbounds %struct.lguest, %struct.lguest* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @release_pgd(i32* %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %23

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %12
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5

48:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @release_pgd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

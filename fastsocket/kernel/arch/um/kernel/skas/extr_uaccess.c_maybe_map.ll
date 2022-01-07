; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_maybe_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/kernel/skas/extr_uaccess.c_maybe_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i32)* @maybe_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_map(i64 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32* @virt_to_pte(i32 %11, i64 %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pte_present(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pte_write(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24, %16, %2
  %30 = load i64, i64* %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @handle_page_fault(i64 %30, i32 0, i32 %31, i32 1, i32* %8)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32* null, i32** %3, align 8
  br label %50

36:                                               ; preds = %29
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32* @virt_to_pte(i32 %39, i64 %40)
  store i32* %41, i32** %6, align 8
  br label %42

42:                                               ; preds = %36, %24, %21
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pte_present(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32* null, i32** %6, align 8
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32*, i32** %6, align 8
  store i32* %49, i32** %3, align 8
  br label %50

50:                                               ; preds = %48, %35
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

declare dso_local i32* @virt_to_pte(i32, i64) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i32 @pte_write(i32) #1

declare dso_local i32 @handle_page_fault(i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_pgalloc.c___set_pmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/mm/extr_pgalloc.c___set_pmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@PME_SIZE = common dso_local global i32 0, align 4
@xAMPRx_SS = common dso_local global i32 0, align 4
@__frv_PT_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_pmd(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i64*, i64** %5, align 8
  %14 = load i32, i32* @PME_SIZE, align 4
  %15 = call i32 @memset(i64* %13, i32 0, i32 %14)
  br label %39

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @xAMPRx_SS, align 4
  %19 = or i32 16128, %18
  %20 = or i32 %19, 14
  %21 = sext i32 %20 to i64
  %22 = and i64 %17, %21
  %23 = call i32 @BUG_ON(i64 %22)
  %24 = load i32, i32* @PME_SIZE, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %35, %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i32 1
  store i64* %31, i64** %5, align 8
  store i64 %29, i64* %30, align 8
  %32 = load i64, i64* @__frv_PT_SIZE, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, 4
  store i32 %37, i32* %6, align 4
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %12
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = ptrtoint %struct.TYPE_3__* %40 to i64
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 1
  %44 = ptrtoint %struct.TYPE_3__* %43 to i64
  %45 = call i32 @frv_dcache_writeback(i64 %41, i64 %44)
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @frv_dcache_writeback(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

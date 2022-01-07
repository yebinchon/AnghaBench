; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_new_pgdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_page_tables.c_new_pgdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SWITCHER_PGD_INDEX = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lg_cpu*, i64, i32*)* @new_pgdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_pgdir(%struct.lg_cpu* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.lg_cpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 (...) @random32()
  %9 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %10 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %13)
  %15 = urem i32 %8, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %17 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i64 @get_zeroed_page(i32 %28)
  %30 = inttoptr i64 %29 to i32*
  %31 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %32 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32* %30, i32** %39, align 8
  %40 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %41 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %27
  %52 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %53 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  br label %57

55:                                               ; preds = %27
  %56 = load i32*, i32** %6, align 8
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %3
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %61 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i64 %59, i64* %68, align 8
  %69 = load %struct.lg_cpu*, %struct.lg_cpu** %4, align 8
  %70 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @flush_user_mappings(%struct.TYPE_3__* %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @random32(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @flush_user_mappings(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

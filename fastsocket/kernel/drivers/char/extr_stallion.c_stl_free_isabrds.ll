; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_free_isabrds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_free_isabrds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlbrd = type { i32, i64, i64, i32, i32, i32 }

@stl_nrbrds = common dso_local global i32 0, align 4
@stl_brds = common dso_local global %struct.stlbrd** null, align 8
@STL_PROBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stl_free_isabrds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_free_isabrds() #0 {
  %1 = alloca %struct.stlbrd*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %56, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @stl_nrbrds, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %59

7:                                                ; preds = %3
  %8 = load %struct.stlbrd**, %struct.stlbrd*** @stl_brds, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.stlbrd*, %struct.stlbrd** %8, i64 %10
  %12 = load %struct.stlbrd*, %struct.stlbrd** %11, align 8
  store %struct.stlbrd* %12, %struct.stlbrd** %1, align 8
  %13 = icmp eq %struct.stlbrd* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %16 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @STL_PROBED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %7
  br label %56

22:                                               ; preds = %14
  %23 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %24 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.stlbrd* %26)
  %28 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %29 = call i32 @stl_cleanup_panels(%struct.stlbrd* %28)
  %30 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %31 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %34 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @release_region(i32 %32, i64 %35)
  %37 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %38 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %22
  %42 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %43 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %46 = getelementptr inbounds %struct.stlbrd, %struct.stlbrd* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @release_region(i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %41, %22
  %50 = load %struct.stlbrd*, %struct.stlbrd** %1, align 8
  %51 = call i32 @kfree(%struct.stlbrd* %50)
  %52 = load %struct.stlbrd**, %struct.stlbrd*** @stl_brds, align 8
  %53 = load i32, i32* %2, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.stlbrd*, %struct.stlbrd** %52, i64 %54
  store %struct.stlbrd* null, %struct.stlbrd** %55, align 8
  br label %56

56:                                               ; preds = %49, %21
  %57 = load i32, i32* %2, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %3

59:                                               ; preds = %3
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.stlbrd*) #1

declare dso_local i32 @stl_cleanup_panels(%struct.stlbrd*) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @kfree(%struct.stlbrd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

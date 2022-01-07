; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_istallion_cleanup_isa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_istallion_cleanup_isa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { i32, i64, i32, i32 }

@stli_nrbrds = common dso_local global i32 0, align 4
@stli_brds = common dso_local global %struct.stlibrd** null, align 8
@BST_PROBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @istallion_cleanup_isa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @istallion_cleanup_isa() #0 {
  %1 = alloca %struct.stlibrd*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %48, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @stli_nrbrds, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %51

7:                                                ; preds = %3
  %8 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %8, i64 %10
  %12 = load %struct.stlibrd*, %struct.stlibrd** %11, align 8
  store %struct.stlibrd* %12, %struct.stlibrd** %1, align 8
  %13 = icmp eq %struct.stlibrd* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %7
  %15 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %16 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BST_PROBED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %7
  br label %48

22:                                               ; preds = %14
  %23 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %24 = call i32 @stli_cleanup_ports(%struct.stlibrd* %23)
  %25 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %26 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @iounmap(i32 %27)
  %29 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %30 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %35 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %38 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @release_region(i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %33, %22
  %42 = load %struct.stlibrd*, %struct.stlibrd** %1, align 8
  %43 = call i32 @kfree(%struct.stlibrd* %42)
  %44 = load %struct.stlibrd**, %struct.stlibrd*** @stli_brds, align 8
  %45 = load i32, i32* %2, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.stlibrd*, %struct.stlibrd** %44, i64 %46
  store %struct.stlibrd* null, %struct.stlibrd** %47, align 8
  br label %48

48:                                               ; preds = %41, %21
  %49 = load i32, i32* %2, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %3

51:                                               ; preds = %3
  ret void
}

declare dso_local i32 @stli_cleanup_ports(%struct.stlibrd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @kfree(%struct.stlibrd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

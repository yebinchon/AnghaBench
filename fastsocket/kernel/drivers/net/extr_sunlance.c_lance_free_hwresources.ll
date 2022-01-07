; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunlance.c_lance_free_hwresources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunlance.c_lance_free_hwresources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_private = type { i32, i64, %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i64, %struct.of_device*, i64 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.of_device = type { i32* }

@LANCE_REG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_private*)* @lance_free_hwresources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_free_hwresources(%struct.lance_private* %0) #0 {
  %2 = alloca %struct.lance_private*, align 8
  %3 = alloca %struct.of_device*, align 8
  store %struct.lance_private* %0, %struct.lance_private** %2, align 8
  %4 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %5 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %4, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %10 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %16 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @LANCE_REG_SIZE, align 4
  %19 = call i32 @of_iounmap(i32* %14, i64 %17, i32 %18)
  br label %20

20:                                               ; preds = %8, %1
  %21 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %22 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %27 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %26, i32 0, i32 6
  %28 = load %struct.of_device*, %struct.of_device** %27, align 8
  store %struct.of_device* %28, %struct.of_device** %3, align 8
  %29 = load %struct.of_device*, %struct.of_device** %3, align 8
  %30 = getelementptr inbounds %struct.of_device, %struct.of_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %34 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.of_device*, %struct.of_device** %3, align 8
  %37 = getelementptr inbounds %struct.of_device, %struct.of_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @resource_size(i32* %39)
  %41 = call i32 @of_iounmap(i32* %32, i64 %35, i32 %40)
  br label %42

42:                                               ; preds = %25, %20
  %43 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %44 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %49 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %48, i32 0, i32 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %55 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @of_iounmap(i32* %53, i64 %56, i32 4)
  br label %76

58:                                               ; preds = %42
  %59 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %60 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %65 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %69 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.lance_private*, %struct.lance_private** %2, align 8
  %72 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_free_coherent(i32* %67, i32 4, i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %63, %58
  br label %76

76:                                               ; preds = %75, %47
  ret void
}

declare dso_local i32 @of_iounmap(i32*, i64, i32) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

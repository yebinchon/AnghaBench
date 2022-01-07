; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sir_dev.c_sirdev_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sir_dev = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32*, i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i64, i32*, i32*, i32 }

@SIRBUF_ALLOCSIZE = common dso_local global i32 0, align 4
@IRDA_SKB_MAX_MTU = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@OUTSIDE_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sir_dev*)* @sirdev_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirdev_alloc_buffers(%struct.sir_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sir_dev*, align 8
  store %struct.sir_dev* %0, %struct.sir_dev** %3, align 8
  %4 = load i32, i32* @SIRBUF_ALLOCSIZE, align 4
  %5 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %6 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i32 %4, i32* %7, align 8
  %8 = load i32, i32* @IRDA_SKB_MAX_MTU, align 4
  %9 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %10 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 6
  store i32 %8, i32* %11, align 8
  %12 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %13 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %16 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_8__* @__netdev_alloc_skb(i32 %14, i32 %18, i32 %19)
  %21 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %22 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %25 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %104

32:                                               ; preds = %1
  %33 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %34 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 @skb_reserve(%struct.TYPE_8__* %36, i32 1)
  %38 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %39 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %45 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i32* %43, i32** %46, align 8
  %47 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %48 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @kmalloc(i32 %50, i32 %51)
  %53 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %54 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32* %52, i32** %55, align 8
  %56 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %57 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %32
  %62 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %63 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = call i32 @kfree_skb(%struct.TYPE_8__* %65)
  %67 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %68 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %69, align 8
  %70 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %71 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %104

75:                                               ; preds = %32
  %76 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %77 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %81 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32* %79, i32** %82, align 8
  %83 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %84 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %88 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  store i32* %86, i32** %89, align 8
  %90 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %91 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %94 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %98 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @OUTSIDE_FRAME, align 4
  %101 = load %struct.sir_dev*, %struct.sir_dev** %3, align 8
  %102 = getelementptr inbounds %struct.sir_dev, %struct.sir_dev* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %75, %61, %29
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_8__* @__netdev_alloc_skb(i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

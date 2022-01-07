; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_private = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CP_RING_BYTES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CP_RX_RING_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cp_private*)* @cp_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_alloc_rings(%struct.cp_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cp_private*, align 8
  %4 = alloca i8*, align 8
  store %struct.cp_private* %0, %struct.cp_private** %3, align 8
  %5 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %6 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @CP_RING_BYTES, align 4
  %10 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %11 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %10, i32 0, i32 2
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @dma_alloc_coherent(i32* %8, i32 %9, i32* %11, i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %23 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %25 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @CP_RX_RING_SIZE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %30 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.cp_private*, %struct.cp_private** %3, align 8
  %32 = call i32 @cp_init_rings(%struct.cp_private* %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %19, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cp_init_rings(%struct.cp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_get_guid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_main.c_ocrdma_get_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_get_guid(%struct.ocrdma_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [6 x i32], align 16
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = call i32 @memcpy(i32* %6, i32* %11, i32 %12)
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = xor i32 %15, 2
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  store i32 255, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 254, i32* %30, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 5
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %36 = load i32, i32* %35, align 16
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

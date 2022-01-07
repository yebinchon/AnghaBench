; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_srq_toggle_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_srq_toggle_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_srq = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_srq*, i32)* @ocrdma_srq_toggle_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_srq_toggle_bit(%struct.ocrdma_srq* %0, i32 %1) #0 {
  %3 = alloca %struct.ocrdma_srq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocrdma_srq* %0, %struct.ocrdma_srq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 32
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 32
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %3, align 8
  %13 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %3, align 8
  %26 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %24
  store i32 %32, i32* %30, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ocrdma_srq*, %struct.ocrdma_srq** %3, align 8
  %36 = getelementptr inbounds %struct.ocrdma_srq, %struct.ocrdma_srq* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %34
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %33, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

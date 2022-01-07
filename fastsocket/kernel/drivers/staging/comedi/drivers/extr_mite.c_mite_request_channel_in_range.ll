; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_request_channel_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_request_channel_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { %struct.mite_dma_descriptor_ring* }
%struct.mite_struct = type { i32*, i32, %struct.mite_channel* }
%struct.mite_dma_descriptor_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mite_channel* @mite_request_channel_in_range(%struct.mite_struct* %0, %struct.mite_dma_descriptor_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mite_struct*, align 8
  %6 = alloca %struct.mite_dma_descriptor_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mite_channel*, align 8
  store %struct.mite_struct* %0, %struct.mite_struct** %5, align 8
  store %struct.mite_dma_descriptor_ring* %1, %struct.mite_dma_descriptor_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.mite_channel* null, %struct.mite_channel** %11, align 8
  %12 = load %struct.mite_struct*, %struct.mite_struct** %5, align 8
  %13 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %10, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %47, %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.mite_struct*, %struct.mite_struct** %5, align 8
  %23 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = load %struct.mite_struct*, %struct.mite_struct** %5, align 8
  %32 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 1, i32* %36, align 4
  %37 = load %struct.mite_struct*, %struct.mite_struct** %5, align 8
  %38 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %37, i32 0, i32 2
  %39 = load %struct.mite_channel*, %struct.mite_channel** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %39, i64 %41
  store %struct.mite_channel* %42, %struct.mite_channel** %11, align 8
  %43 = load %struct.mite_dma_descriptor_ring*, %struct.mite_dma_descriptor_ring** %6, align 8
  %44 = load %struct.mite_channel*, %struct.mite_channel** %11, align 8
  %45 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %44, i32 0, i32 0
  store %struct.mite_dma_descriptor_ring* %43, %struct.mite_dma_descriptor_ring** %45, align 8
  br label %50

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %17

50:                                               ; preds = %30, %17
  %51 = load %struct.mite_struct*, %struct.mite_struct** %5, align 8
  %52 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %51, i32 0, i32 1
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.mite_channel*, %struct.mite_channel** %11, align 8
  ret %struct.mite_channel* %55
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

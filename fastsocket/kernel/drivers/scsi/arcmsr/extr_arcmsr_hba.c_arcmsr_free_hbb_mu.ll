; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_free_hbb_mu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arcmsr/extr_arcmsr_hba.c_arcmsr_free_hbb_mu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_free_hbb_mu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_free_hbb_mu(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %3 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %4 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %19 [
    i32 130, label %6
    i32 128, label %6
    i32 129, label %7
  ]

6:                                                ; preds = %1, %1
  br label %19

7:                                                ; preds = %1
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %16 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dma_free_coherent(i32* %11, i32 4, i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %7, %1, %6
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

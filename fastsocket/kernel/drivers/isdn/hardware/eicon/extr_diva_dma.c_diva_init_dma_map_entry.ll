; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_dma.c_diva_init_dma_map_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_diva_dma.c_diva_init_dma_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._diva_dma_map_entry = type { i8*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diva_init_dma_map_entry(%struct._diva_dma_map_entry* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct._diva_dma_map_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._diva_dma_map_entry* %0, %struct._diva_dma_map_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %12, i64 %14
  %16 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %15, i32 0, i32 2
  store i32 %11, i32* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %18, i64 %20
  %22 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %21, i32 0, i32 1
  store i8* %17, i8** %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct._diva_dma_map_entry*, %struct._diva_dma_map_entry** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %24, i64 %26
  %28 = getelementptr inbounds %struct._diva_dma_map_entry, %struct._diva_dma_map_entry* %27, i32 0, i32 0
  store i8* %23, i8** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

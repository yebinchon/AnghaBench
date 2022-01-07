; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_rx_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i32, i64 }

@DBG_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"In fst_rx_dma %p %p %d\0A\00", align 1
@DBG_ASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"In fst_rx_dma while dma in progress\0A\00", align 1
@DMAPADR0 = common dso_local global i64 0, align 8
@DMALADR0 = common dso_local global i64 0, align 8
@DMASIZ0 = common dso_local global i64 0, align 8
@DMADPR0 = common dso_local global i64 0, align 8
@DMACSR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, i8*, i8*, i32)* @fst_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_rx_dma(%struct.fst_card_info* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.fst_card_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @DBG_RX, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (i32, i8*, ...) @dbg(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11, i32 %12)
  %14 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %15 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @DBG_ASS, align 4
  %20 = call i32 (i32, i8*, ...) @dbg(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = trunc i64 %23 to i32
  %25 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %26 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DMAPADR0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 %24, i64 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = trunc i64 %32 to i32
  %34 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %35 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMALADR0, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outl(i32 %33, i64 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %42 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DMASIZ0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outl(i32 %40, i64 %45)
  %47 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %48 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMADPR0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @outl(i32 12, i64 %51)
  %53 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %54 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %56 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMACSR0, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @outb(i32 3, i64 %59)
  ret void
}

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

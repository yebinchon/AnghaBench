; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_recover_rx_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_recover_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i32, i32 }

@DMA_OWN = common dso_local global i8 0, align 1
@RX_STP = common dso_local global i8 0, align 1
@rxDescrRing = common dso_local global %struct.TYPE_2__** null, align 8
@NUM_RX_BUFFER = common dso_local global i32 0, align 4
@DBG_ASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"intr_rx: Discarding more bufs than we have\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DMA Bits of next buffer was %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"There were %d subsequent buffers in error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*, i8, i32, i16)* @fst_recover_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_recover_rx_error(%struct.fst_card_info* %0, %struct.fst_port_info* %1, i8 zeroext %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.fst_card_info*, align 8
  %7 = alloca %struct.fst_port_info*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fst_card_info* %0, %struct.fst_card_info** %6, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i16 %4, i16* %10, align 2
  %13 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %14 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %51, %5
  %17 = load i8, i8* %8, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @DMA_OWN, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @RX_STP, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = and i32 %18, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %16
  %27 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8, i8* @DMA_OWN, align 1
  %39 = call i32 @FST_WRB(%struct.fst_card_info* %27, i32 %37, i8 zeroext %38)
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* @NUM_RX_BUFFER, align 4
  %43 = srem i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* @NUM_RX_BUFFER, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load i32, i32* @DBG_ASS, align 4
  %50 = call i32 (i32, i8*, ...) @dbg(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %68

51:                                               ; preds = %26
  %52 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call zeroext i8 @FST_RDB(%struct.fst_card_info* %52, i32 %62)
  store i8 %63, i8* %8, align 1
  %64 = load i32, i32* @DBG_ASS, align 4
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 (i32, i8*, ...) @dbg(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %16

68:                                               ; preds = %48, %16
  %69 = load i32, i32* @DBG_ASS, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32, i8*, ...) @dbg(i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i8, i8* %8, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @DMA_OWN, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %68
  %79 = load %struct.fst_card_info*, %struct.fst_card_info** %6, align 8
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @rxDescrRing, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8, i8* @DMA_OWN, align 1
  %91 = call i32 @FST_WRB(%struct.fst_card_info* %79, i32 %89, i8 zeroext %90)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @NUM_RX_BUFFER, align 4
  %95 = srem i32 %93, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %78, %68
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.fst_port_info*, %struct.fst_port_info** %7, align 8
  %99 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  ret void
}

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i8 zeroext) #1

declare dso_local i32 @dbg(i32, i8*, ...) #1

declare dso_local zeroext i8 @FST_RDB(%struct.fst_card_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

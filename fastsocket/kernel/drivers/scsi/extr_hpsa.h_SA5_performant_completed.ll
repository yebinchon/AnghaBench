; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.h_SA5_performant_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.h_SA5_performant_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64, i32, i32, i64, i64, i64, %struct.reply_pool* }
%struct.reply_pool = type { i32*, i64, i32 }

@FIFO_EMPTY = common dso_local global i64 0, align 8
@SA5_OUTDB_STATUS = common dso_local global i64 0, align 8
@SA5_OUTDB_CLEAR_PERF_BIT = common dso_local global i32 0, align 4
@SA5_OUTDB_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ctlr_info*, i64)* @SA5_performant_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SA5_performant_completed(%struct.ctlr_info* %0, i64 %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.reply_pool*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %9 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %8, i32 0, i32 6
  %10 = load %struct.reply_pool*, %struct.reply_pool** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %10, i64 %11
  store %struct.reply_pool* %12, %struct.reply_pool** %5, align 8
  %13 = load i64, i64* @FIFO_EMPTY, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %15 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %2
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %20 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %18
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %25 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SA5_OUTDB_STATUS, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i64 @readl(i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i32, i32* @SA5_OUTDB_CLEAR_PERF_BIT, align 4
  %31 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %32 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SA5_OUTDB_CLEAR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %38 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SA5_OUTDB_STATUS, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @readl(i64 %41)
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %23, %18, %2
  %44 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %45 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %48 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %54 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %43
  %58 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %59 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %62 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %7, align 8
  %67 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %68 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  %71 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %72 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %71, i32 0, i32 1
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  %75 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %76 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %80 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %79, i32 0, i32 1
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  br label %85

83:                                               ; preds = %43
  %84 = load i64, i64* @FIFO_EMPTY, align 8
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %83, %57
  %86 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %87 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %90 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %95 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.reply_pool*, %struct.reply_pool** %5, align 8
  %97 = getelementptr inbounds %struct.reply_pool, %struct.reply_pool* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = xor i32 %98, 1
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %85
  %101 = load i64, i64* %7, align 8
  ret i64 %101
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

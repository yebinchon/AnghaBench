; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_raid6test.c_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/async_tx/extr_raid6test.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.async_submit_ctl = type { i32 }
%struct.completion = type { i32 }

@data = common dso_local global i8** null, align 8
@recovi = common dso_local global i8* null, align 8
@recovj = common dso_local global i8* null, align 8
@spare = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ASYNC_TX_ACK = common dso_local global i32 0, align 4
@callback = common dso_local global i32 0, align 4
@addr_conv = common dso_local global i32 0, align 4
@dataptrs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"error: initial gen_syndrome(%d) timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"testing the %d-disk case...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.async_submit_ctl, align 4
  %8 = alloca %struct.completion, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8**, i8*** @data, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @recovi, align 8
  %17 = load i8**, i8*** @data, align 8
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %17, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @recovj, align 8
  %23 = load i8**, i8*** @data, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** @spare, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @makedata(i32 %29)
  %31 = load i8**, i8*** @data, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 2
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @page_address(i8* %36)
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @memset(i32 %37, i32 238, i32 %38)
  %40 = load i8**, i8*** @data, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @page_address(i8* %45)
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @memset(i32 %46, i32 238, i32 %47)
  %49 = call i32 @init_completion(%struct.completion* %8)
  %50 = load i32, i32* @ASYNC_TX_ACK, align 4
  %51 = load i32, i32* @callback, align 4
  %52 = load i32, i32* @addr_conv, align 4
  %53 = call i32 @init_async_submit(%struct.async_submit_ctl* %7, i32 %50, i32* null, i32 %51, %struct.completion* %8, i32 %52)
  %54 = load i32, i32* @dataptrs, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call %struct.dma_async_tx_descriptor* @async_gen_syndrome(i32 %54, i32 0, i32 %55, i32 %56, %struct.async_submit_ctl* %7)
  store %struct.dma_async_tx_descriptor* %57, %struct.dma_async_tx_descriptor** %6, align 8
  %58 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %59 = call i32 @async_tx_issue_pending(%struct.dma_async_tx_descriptor* %58)
  %60 = call i32 @msecs_to_jiffies(i32 3000)
  %61 = call i64 @wait_for_completion_timeout(%struct.completion* %8, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @pr(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 1, i32* %3, align 4
  br label %102

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @pr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %97, %66
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %93, %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @test_disks(i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %81
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %77

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %69

100:                                              ; preds = %69
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %63
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @makedata(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @page_address(i8*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @init_async_submit(%struct.async_submit_ctl*, i32, i32*, i32, %struct.completion*, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @async_gen_syndrome(i32, i32, i32, i32, %struct.async_submit_ctl*) #1

declare dso_local i32 @async_tx_issue_pending(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr(i8*, i32) #1

declare dso_local i64 @test_disks(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

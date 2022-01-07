; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_shift_bm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_shift_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.carl9170_sta_tid = type { i32, i64, i32 }

@CARL9170_BAW_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.carl9170_sta_tid*, i64)* @carl9170_tx_shift_bm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_tx_shift_bm(%struct.ar9170* %0, %struct.carl9170_sta_tid* %1, i64 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.carl9170_sta_tid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.carl9170_sta_tid* %1, %struct.carl9170_sta_tid** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %10 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @SEQ_DIFF(i64 %8, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @CARL9170_BAW_BITS, align 8
  %15 = icmp sge i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON_ONCE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %78

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %23 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @test_and_clear_bit(i64 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %31 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %34 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @SEQ_DIFF(i64 %32, i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @CARL9170_BAW_BITS, align 8
  %39 = icmp sge i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON_ONCE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %20
  br label %78

44:                                               ; preds = %20
  %45 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %46 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @bitmap_empty(i32 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %53 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @find_first_bit(i32 %54, i64 %55)
  store i64 %56, i64* %7, align 8
  br label %57

57:                                               ; preds = %51, %44
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %60 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 8
  %65 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %66 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 4095
  store i32 %68, i32* %66, align 8
  %69 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %70 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.carl9170_sta_tid*, %struct.carl9170_sta_tid** %5, align 8
  %73 = getelementptr inbounds %struct.carl9170_sta_tid, %struct.carl9170_sta_tid* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @CARL9170_BAW_BITS, align 8
  %77 = call i32 @bitmap_shift_right(i32 %71, i32 %74, i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %57, %43, %19
  ret void
}

declare dso_local i64 @SEQ_DIFF(i64, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_and_clear_bit(i64, i32) #1

declare dso_local i32 @bitmap_empty(i32, i64) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @bitmap_shift_right(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

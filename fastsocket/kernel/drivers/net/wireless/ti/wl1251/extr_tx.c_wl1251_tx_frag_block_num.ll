; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_frag_block_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_frag_block_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_double_buffer_desc = type { i32, i32, i32 }

@IEEE80211_MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_MSDU_SECURITY_LENGTH = common dso_local global i32 0, align 4
@MAX_MPDU_HEADER_AND_SECURITY = common dso_local global i32 0, align 4
@HW_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tx_double_buffer_desc*)* @wl1251_tx_frag_block_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_tx_frag_block_num(%struct.tx_double_buffer_desc* %0) #0 {
  %2 = alloca %struct.tx_double_buffer_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tx_double_buffer_desc* %0, %struct.tx_double_buffer_desc** %2, align 8
  %8 = load i32, i32* @IEEE80211_MAX_FRAG_THRESHOLD, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @cpu_to_le16(i32 %9)
  %11 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %2, align 8
  %12 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %2, align 8
  %14 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  %17 = load i32, i32* @MAX_MSDU_SECURITY_LENGTH, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAX_MPDU_HEADER_AND_SECURITY, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @HW_BLOCK_SIZE, align 4
  %27 = sdiv i32 %25, %26
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @HW_BLOCK_SIZE, align 4
  %46 = sdiv i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @min(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %52, %43
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.tx_double_buffer_desc*, %struct.tx_double_buffer_desc** %2, align 8
  %63 = getelementptr inbounds %struct.tx_double_buffer_desc, %struct.tx_double_buffer_desc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

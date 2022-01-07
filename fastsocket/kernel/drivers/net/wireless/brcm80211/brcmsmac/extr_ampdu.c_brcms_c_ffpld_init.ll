; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ffpld_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ffpld_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { %struct.brcms_fifo_info* }
%struct.brcms_fifo_info = type { i32*, i64, i64, i64, i64, i64 }

@NUM_FFPLD_FIFO = common dso_local global i32 0, align 4
@FFPLD_MAX_MCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ampdu_info*)* @brcms_c_ffpld_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_ffpld_init(%struct.ampdu_info* %0) #0 {
  %2 = alloca %struct.ampdu_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_fifo_info*, align 8
  store %struct.ampdu_info* %0, %struct.ampdu_info** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NUM_FFPLD_FIFO, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load %struct.ampdu_info*, %struct.ampdu_info** %2, align 8
  %12 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %11, i32 0, i32 0
  %13 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %13, i64 %15
  store %struct.brcms_fifo_info* %16, %struct.brcms_fifo_info** %5, align 8
  %17 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %5, align 8
  %18 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %10
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FFPLD_MAX_MCS, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %5, align 8
  %25 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 255, i32* %29, align 4
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %5, align 8
  %35 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %5, align 8
  %37 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %5, align 8
  %39 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.brcms_fifo_info*, %struct.brcms_fifo_info** %5, align 8
  %41 = getelementptr inbounds %struct.brcms_fifo_info, %struct.brcms_fifo_info* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_cpurelease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_cpurelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_card_info = type { i64, i32, i64, i32 }

@FST_FAMILY_TXU = common dso_local global i64 0, align 8
@CNTRL_9054 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*)* @fst_cpurelease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_cpurelease(%struct.fst_card_info* %0) #0 {
  %2 = alloca %struct.fst_card_info*, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %2, align 8
  %3 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %4 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FST_FAMILY_TXU, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %10 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @readb(i32 %11)
  %13 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %14 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CNTRL_9054, align 8
  %17 = add nsw i64 %15, %16
  %18 = add nsw i64 %17, 2
  %19 = call i32 @outw(i32 1038, i64 %18)
  %20 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %21 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CNTRL_9054, align 8
  %24 = add nsw i64 %22, %23
  %25 = add nsw i64 %24, 2
  %26 = call i32 @outw(i32 1039, i64 %25)
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.fst_card_info*, %struct.fst_card_info** %2, align 8
  %29 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @readb(i32 %30)
  br label %32

32:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

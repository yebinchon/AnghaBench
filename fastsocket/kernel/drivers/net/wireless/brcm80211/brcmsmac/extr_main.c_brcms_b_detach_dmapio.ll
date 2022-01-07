; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_detach_dmapio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_detach_dmapio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32** }

@NFIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_b_detach_dmapio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_detach_dmapio(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %30, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @NFIFO, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %8
  %17 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @dma_detach(i32* %22)
  %24 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %25 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %16, %8
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %4

33:                                               ; preds = %4
  ret void
}

declare dso_local i32 @dma_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_esbq_confirm_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_esbq_confirm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl3501_card*)* @wl3501_esbq_confirm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_esbq_confirm_done(%struct.wl3501_card* %0) #0 {
  %2 = alloca %struct.wl3501_card*, align 8
  %3 = alloca i32, align 4
  store %struct.wl3501_card* %0, %struct.wl3501_card** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %5 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %6 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 3
  %9 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %4, i64 %8, i32* %3, i32 4)
  %10 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %11 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 4
  store i64 %13, i64* %11, align 8
  %14 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %15 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %18 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %23 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wl3501_card*, %struct.wl3501_card** %2, align 8
  %26 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @wl3501_set_to_wla(%struct.wl3501_card*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

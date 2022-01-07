; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_free_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_free_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl3501_card*, i8*)* @wl3501_free_tx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl3501_free_tx_buffer(%struct.wl3501_card* %0, i8* %1) #0 {
  %3 = alloca %struct.wl3501_card*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.wl3501_card* %0, %struct.wl3501_card** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %7 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %13 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %16 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %17 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %15, i8* %18, i8** %4, i32 8)
  br label %20

20:                                               ; preds = %14, %10
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %26 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @wl3501_get_from_wla(%struct.wl3501_card* %29, i8* %30, i8** %5, i32 8)
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.wl3501_card*, %struct.wl3501_card** %3, align 8
  %34 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %4, align 8
  br label %21

36:                                               ; preds = %21
  ret void
}

declare dso_local i32 @wl3501_set_to_wla(%struct.wl3501_card*, i8*, i8**, i32) #1

declare dso_local i32 @wl3501_get_from_wla(%struct.wl3501_card*, i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

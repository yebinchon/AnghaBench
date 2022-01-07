; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_esbq_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_esbq_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*, i8*, i32)* @wl3501_esbq_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_esbq_exec(%struct.wl3501_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.wl3501_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wl3501_card* %0, %struct.wl3501_card** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %12 = call i64 @wl3501_esbq_req_test(%struct.wl3501_card* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @wl3501_get_tx_buffer(%struct.wl3501_card* %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %21, i64 %22, i8* %23, i32 %24)
  %26 = load %struct.wl3501_card*, %struct.wl3501_card** %4, align 8
  %27 = call i32 @wl3501_esbq_req(%struct.wl3501_card* %26, i64* %8)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %20, %14
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i64 @wl3501_esbq_req_test(%struct.wl3501_card*) #1

declare dso_local i64 @wl3501_get_tx_buffer(%struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_set_to_wla(%struct.wl3501_card*, i64, i8*, i32) #1

declare dso_local i32 @wl3501_esbq_req(%struct.wl3501_card*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

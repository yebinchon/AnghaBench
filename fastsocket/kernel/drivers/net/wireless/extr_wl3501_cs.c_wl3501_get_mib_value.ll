; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_mib_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_wl3501_cs.c_wl3501_get_mib_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl3501_card = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wl3501_get_req = type { i32, i32 }

@WL3501_SIG_GET_REQ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl3501_card*, i32, i8*, i32)* @wl3501_get_mib_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_get_mib_value(%struct.wl3501_card* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.wl3501_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl3501_get_req, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.wl3501_card* %0, %struct.wl3501_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.wl3501_get_req, %struct.wl3501_get_req* %9, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.wl3501_get_req, %struct.wl3501_get_req* %9, i32 0, i32 1
  %16 = load i32, i32* @WL3501_SIG_GET_REQ, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %20 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %19, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %24 = call i64 @wl3501_esbq_req_test(%struct.wl3501_card* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %66

26:                                               ; preds = %4
  %27 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %28 = call i64 @wl3501_get_tx_buffer(%struct.wl3501_card* %27, i32 8)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %26
  %32 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @wl3501_set_to_wla(%struct.wl3501_card* %32, i64 %33, %struct.wl3501_get_req* %9, i32 8)
  %35 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %36 = call i32 @wl3501_esbq_req(%struct.wl3501_card* %35, i64* %12)
  %37 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %38 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 255, i32* %39, align 4
  %40 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %41 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %45 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %48 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 255
  %52 = zext i1 %51 to i32
  %53 = call i32 @wait_event_interruptible(i32 %46, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %31
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %59 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @memcpy(i8* %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %31
  br label %71

65:                                               ; preds = %26
  br label %66

66:                                               ; preds = %65, %4
  %67 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %68 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %67, i32 0, i32 0
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %64
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @wl3501_esbq_req_test(%struct.wl3501_card*) #1

declare dso_local i64 @wl3501_get_tx_buffer(%struct.wl3501_card*, i32) #1

declare dso_local i32 @wl3501_set_to_wla(%struct.wl3501_card*, i64, %struct.wl3501_get_req*, i32) #1

declare dso_local i32 @wl3501_esbq_req(%struct.wl3501_card*, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

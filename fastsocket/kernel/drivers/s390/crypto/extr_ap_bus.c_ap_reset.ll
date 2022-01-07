; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32, i32, i64, i32, i32, i32, i64, i32 }

@AP_RESET_IGNORE = common dso_local global i32 0, align 4
@ap_poll_requests = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_device*)* @ap_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_reset(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %4 = load i32, i32* @AP_RESET_IGNORE, align 4
  %5 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %6 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %5, i32 0, i32 7
  store i32 %4, i32* %6, align 8
  %7 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %8 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @atomic_sub(i64 %9, i32* @ap_poll_requests)
  %11 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %12 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %11, i32 0, i32 6
  store i64 0, i64* %12, align 8
  %13 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %14 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %13, i32 0, i32 5
  %15 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %16 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %15, i32 0, i32 4
  %17 = call i32 @list_splice_init(i32* %14, i32* %16)
  %18 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %19 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %22 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 8
  %27 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %28 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %30 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ap_init_queue(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %39 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %42

40:                                               ; preds = %1
  %41 = call i32 (...) @__ap_schedule_poll_timer()
  br label %42

42:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @ap_init_queue(i32) #1

declare dso_local i32 @__ap_schedule_poll_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_send_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ape_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_APE_SEG_SIG = common dso_local global i32 0, align 4
@APE_SEG_SIG_MAGIC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TG3_APE_FW_STATUS = common dso_local global i32 0, align 4
@APE_FW_STATUS_READY = common dso_local global i32 0, align 4
@TG3_APE_EVENT_STATUS = common dso_local global i32 0, align 4
@APE_EVENT_STATUS_EVENT_PENDING = common dso_local global i32 0, align 4
@TG3_APE_LOCK_MEM = common dso_local global i32 0, align 4
@TG3_APE_EVENT = common dso_local global i32 0, align 4
@APE_EVENT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32)* @tg3_ape_send_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ape_send_event(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tg3*, %struct.tg3** %4, align 8
  %9 = load i32, i32* @TG3_APE_SEG_SIG, align 4
  %10 = call i32 @tg3_ape_read32(%struct.tg3* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @APE_SEG_SIG_MAGIC, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.tg3*, %struct.tg3** %4, align 8
  %19 = load i32, i32* @TG3_APE_FW_STATUS, align 4
  %20 = call i32 @tg3_ape_read32(%struct.tg3* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @APE_FW_STATUS_READY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %17
  %29 = load %struct.tg3*, %struct.tg3** %4, align 8
  %30 = call i32 @tg3_ape_event_lock(%struct.tg3* %29, i32 1000)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %28
  %36 = load %struct.tg3*, %struct.tg3** %4, align 8
  %37 = load i32, i32* @TG3_APE_EVENT_STATUS, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @APE_EVENT_STATUS_EVENT_PENDING, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @tg3_ape_write32(%struct.tg3* %36, i32 %37, i32 %40)
  %42 = load %struct.tg3*, %struct.tg3** %4, align 8
  %43 = load i32, i32* @TG3_APE_LOCK_MEM, align 4
  %44 = call i32 @tg3_ape_unlock(%struct.tg3* %42, i32 %43)
  %45 = load %struct.tg3*, %struct.tg3** %4, align 8
  %46 = load i32, i32* @TG3_APE_EVENT, align 4
  %47 = load i32, i32* @APE_EVENT_1, align 4
  %48 = call i32 @tg3_ape_write32(%struct.tg3* %45, i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %35, %33, %25, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @tg3_ape_read32(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_event_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_ape_write32(%struct.tg3*, i32, i32) #1

declare dso_local i32 @tg3_ape_unlock(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

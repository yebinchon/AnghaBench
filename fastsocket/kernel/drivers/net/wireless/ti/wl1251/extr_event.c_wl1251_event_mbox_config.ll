; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_mbox_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_mbox_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64* }

@REG_EVENT_MAILBOX_PTR = common dso_local global i32 0, align 4
@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MBOX ptrs: 0x%x 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1251_event_mbox_config(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %3 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %4 = load i32, i32* @REG_EVENT_MAILBOX_PTR, align 4
  %5 = call i64 @wl1251_reg_read32(%struct.wl1251* %3, i32 %4)
  %6 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %7 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 %5, i64* %9, align 8
  %10 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %11 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 4
  %16 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  store i64 %15, i64* %19, align 8
  %20 = load i32, i32* @DEBUG_EVENT, align 4
  %21 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %27 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wl1251_debug(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %30)
  ret void
}

declare dso_local i64 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

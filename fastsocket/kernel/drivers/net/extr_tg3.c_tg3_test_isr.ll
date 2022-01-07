; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_test_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_test_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { %struct.tg3_hw_status*, %struct.tg3* }
%struct.tg3_hw_status = type { i32 }
%struct.tg3 = type { i32 }

@SD_STATUS_UPDATED = common dso_local global i32 0, align 4
@TG3PCI_PCISTATE = common dso_local global i32 0, align 4
@PCISTATE_INT_NOT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tg3_test_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_test_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tg3_napi*, align 8
  %7 = alloca %struct.tg3*, align 8
  %8 = alloca %struct.tg3_hw_status*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tg3_napi*
  store %struct.tg3_napi* %10, %struct.tg3_napi** %6, align 8
  %11 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %12 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %11, i32 0, i32 1
  %13 = load %struct.tg3*, %struct.tg3** %12, align 8
  store %struct.tg3* %13, %struct.tg3** %7, align 8
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %6, align 8
  %15 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i32 0, i32 0
  %16 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %15, align 8
  store %struct.tg3_hw_status* %16, %struct.tg3_hw_status** %8, align 8
  %17 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %8, align 8
  %18 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SD_STATUS_UPDATED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @TG3PCI_PCISTATE, align 4
  %25 = call i32 @tr32(i32 %24)
  %26 = load i32, i32* @PCISTATE_INT_NOT_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.tg3*, %struct.tg3** %7, align 8
  %31 = call i32 @tg3_disable_ints(%struct.tg3* %30)
  %32 = call i32 @IRQ_RETVAL(i32 1)
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %23
  %34 = call i32 @IRQ_RETVAL(i32 0)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_disable_ints(%struct.tg3*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

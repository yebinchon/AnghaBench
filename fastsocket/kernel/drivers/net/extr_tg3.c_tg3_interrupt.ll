; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, i32, i32*, %struct.tg3_hw_status*, %struct.tg3* }
%struct.tg3_hw_status = type { i32 }
%struct.tg3 = type { i32 }

@SD_STATUS_UPDATED = common dso_local global i32 0, align 4
@CHIP_RESETTING = common dso_local global i32 0, align 4
@TG3PCI_PCISTATE = common dso_local global i32 0, align 4
@PCISTATE_INT_NOT_ACTIVE = common dso_local global i32 0, align 4
@MAILBOX_INTERRUPT_0 = common dso_local global i64 0, align 8
@TG3_64BIT_REG_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tg3_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tg3_napi*, align 8
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca %struct.tg3_hw_status*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tg3_napi*
  store %struct.tg3_napi* %10, %struct.tg3_napi** %5, align 8
  %11 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %12 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %11, i32 0, i32 4
  %13 = load %struct.tg3*, %struct.tg3** %12, align 8
  store %struct.tg3* %13, %struct.tg3** %6, align 8
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %15 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i32 0, i32 3
  %16 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %15, align 8
  store %struct.tg3_hw_status* %16, %struct.tg3_hw_status** %7, align 8
  store i32 1, i32* %8, align 4
  %17 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %7, align 8
  %18 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SD_STATUS_UPDATED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.tg3*, %struct.tg3** %6, align 8
  %29 = load i32, i32* @CHIP_RESETTING, align 4
  %30 = call i64 @tg3_flag(%struct.tg3* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @TG3PCI_PCISTATE, align 4
  %34 = call i32 @tr32(i32 %33)
  %35 = load i32, i32* @PCISTATE_INT_NOT_ACTIVE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %27
  store i32 0, i32* %8, align 4
  br label %78

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i64, i64* @MAILBOX_INTERRUPT_0, align 8
  %42 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @tw32_mailbox_f(i64 %43, i32 1)
  %45 = load %struct.tg3*, %struct.tg3** %6, align 8
  %46 = call i64 @tg3_irq_sync(%struct.tg3* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %78

49:                                               ; preds = %40
  %50 = load i32, i32* @SD_STATUS_UPDATED, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %7, align 8
  %53 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %57 = call i32 @tg3_has_work(%struct.tg3_napi* %56)
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %49
  %61 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %62 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %65 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = call i32 @prefetch(i32* %67)
  %69 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %70 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %69, i32 0, i32 1
  %71 = call i32 @napi_schedule(i32* %70)
  br label %77

72:                                               ; preds = %49
  %73 = load i64, i64* @MAILBOX_INTERRUPT_0, align 8
  %74 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @tw32_mailbox_f(i64 %75, i32 0)
  br label %77

77:                                               ; preds = %72, %60
  br label %78

78:                                               ; preds = %77, %48, %38
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @IRQ_RETVAL(i32 %79)
  ret i32 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32_mailbox_f(i64, i32) #1

declare dso_local i64 @tg3_irq_sync(%struct.tg3*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @tg3_has_work(%struct.tg3_napi*) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_interrupt_tagged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_interrupt_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i64, i64, i32, i32*, %struct.tg3_hw_status*, %struct.tg3* }
%struct.tg3_hw_status = type { i64 }
%struct.tg3 = type { i32 }

@CHIP_RESETTING = common dso_local global i32 0, align 4
@TG3PCI_PCISTATE = common dso_local global i32 0, align 4
@PCISTATE_INT_NOT_ACTIVE = common dso_local global i32 0, align 4
@MAILBOX_INTERRUPT_0 = common dso_local global i64 0, align 8
@TG3_64BIT_REG_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tg3_interrupt_tagged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_interrupt_tagged(i32 %0, i8* %1) #0 {
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
  %12 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %11, i32 0, i32 5
  %13 = load %struct.tg3*, %struct.tg3** %12, align 8
  store %struct.tg3* %13, %struct.tg3** %6, align 8
  %14 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %15 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %14, i32 0, i32 4
  %16 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %15, align 8
  store %struct.tg3_hw_status* %16, %struct.tg3_hw_status** %7, align 8
  store i32 1, i32* %8, align 4
  %17 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %7, align 8
  %18 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %21 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
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
  br label %66

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i64, i64* @MAILBOX_INTERRUPT_0, align 8
  %42 = load i64, i64* @TG3_64BIT_REG_LOW, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @tw32_mailbox_f(i64 %43, i32 1)
  %45 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %7, align 8
  %46 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %49 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.tg3*, %struct.tg3** %6, align 8
  %51 = call i64 @tg3_irq_sync(%struct.tg3* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %66

54:                                               ; preds = %40
  %55 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %56 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %59 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i32 @prefetch(i32* %61)
  %63 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %64 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %63, i32 0, i32 2
  %65 = call i32 @napi_schedule(i32* %64)
  br label %66

66:                                               ; preds = %54, %53, %38
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @IRQ_RETVAL(i32 %67)
  ret i32 %68
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32_mailbox_f(i64, i32) #1

declare dso_local i64 @tg3_irq_sync(%struct.tg3*) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

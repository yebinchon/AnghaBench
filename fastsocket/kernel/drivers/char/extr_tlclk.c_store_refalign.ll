; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tlclk.c_store_refalign.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tlclk.c_store_refalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"tmp = 0x%lX\0A\00", align 1
@event_lock = common dso_local global i32 0, align 4
@TLCLK_REG0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_refalign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_refalign(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @event_lock, i64 %16)
  %18 = load i32, i32* @TLCLK_REG0, align 4
  %19 = call i32 @SET_PORT_BITS(i32 %18, i32 247, i32 0)
  %20 = load i32, i32* @TLCLK_REG0, align 4
  %21 = call i32 @SET_PORT_BITS(i32 %20, i32 247, i32 8)
  %22 = load i32, i32* @TLCLK_REG0, align 4
  %23 = call i32 @SET_PORT_BITS(i32 %22, i32 247, i32 0)
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @event_lock, i64 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @strnlen(i8* %26, i64 %27)
  ret i32 %28
}

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SET_PORT_BITS(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strnlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_get_lsr_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_get_lsr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.m68k_serial = type { i64 }

@UTX_CTS_STAT = common dso_local global i32 0, align 4
@uart_addr = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.m68k_serial*, i32*)* @get_lsr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lsr_info(%struct.m68k_serial* %0, i32* %1) #0 {
  %3 = alloca %struct.m68k_serial*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.m68k_serial* %0, %struct.m68k_serial** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  store i8 0, i8* %5, align 1
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @local_irq_restore(i64 %9)
  %11 = load i8, i8* %5, align 1
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @put_user(i8 zeroext %11, i32* %12)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @put_user(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

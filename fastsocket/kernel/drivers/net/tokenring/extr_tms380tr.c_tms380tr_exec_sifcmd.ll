; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_exec_sifcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_exec_sifcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@CMD_SYSTEM_IRQ = common dso_local global i32 0, align 4
@CMD_INTERRUPT_ADAPTER = common dso_local global i32 0, align 4
@SIFSTS = common dso_local global i32 0, align 4
@SIFCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @tms380tr_exec_sifcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tms380tr_exec_sifcmd(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CMD_SYSTEM_IRQ, align 4
  %10 = xor i32 %8, %9
  %11 = load i32, i32* @CMD_INTERRUPT_ADAPTER, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i32, i32* @SIFSTS, align 4
  %17 = call zeroext i16 @SIFREADW(i32 %16)
  store i16 %17, i16* %6, align 2
  br label %18

18:                                               ; preds = %15
  %19 = load i16, i16* %6, align 2
  %20 = zext i16 %19 to i32
  %21 = load i32, i32* @CMD_INTERRUPT_ADAPTER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %7, align 8
  %27 = icmp ne i64 %25, 0
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  br i1 %29, label %15, label %30

30:                                               ; preds = %28
  %31 = load i16, i16* %5, align 2
  %32 = load i32, i32* @SIFCMD, align 4
  %33 = call i32 @SIFWRITEW(i16 zeroext %31, i32 %32)
  ret void
}

declare dso_local zeroext i16 @SIFREADW(i32) #1

declare dso_local i32 @SIFWRITEW(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

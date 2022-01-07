; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_cflag_to_baud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_cflag_to_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cflag_to_baud.baud_table = internal global [16 x i32] [i32 0, i32 50, i32 75, i32 110, i32 134, i32 150, i32 200, i32 300, i32 600, i32 1200, i32 1800, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400], align 16
@cflag_to_baud.ext_baud_table = internal global <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 57600, i32 115200, i32 230400, i32 460800, i32 921600, i32 1843200, i32 6250000], [8 x i32] zeroinitializer }>, align 16
@CBAUDEX = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cflag_to_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cflag_to_baud(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @CBAUDEX, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CBAUD, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @CBAUDEX, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* bitcast (<{ [8 x i32], [8 x i32] }>* @cflag_to_baud.ext_baud_table to [16 x i32]*), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CBAUD, align 4
  %21 = and i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* @cflag_to_baud.baud_table, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

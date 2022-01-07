; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_eata_pio_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_eata_pio.c_eata_pio_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HA_RSTATUS = common dso_local global i64 0, align 8
@HA_SBUSY = common dso_local global i32 0, align 4
@HA_CTRL_8HEADS = common dso_local global i8 0, align 1
@HA_CTRLREG = common dso_local global i64 0, align 8
@HA_WCOMMAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8)* @eata_pio_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eata_pio_send_command(i64 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 50, i32* %6, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @HA_RSTATUS, align 8
  %10 = add i64 %8, %9
  %11 = call i32 @inb(i64 %10)
  %12 = load i32, i32* @HA_SBUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = load i32, i32* %6, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %32

20:                                               ; preds = %15
  br label %7

21:                                               ; preds = %7
  %22 = load i8, i8* @HA_CTRL_8HEADS, align 1
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @HA_CTRLREG, align 8
  %25 = add i64 %23, %24
  %26 = call i32 @outb(i8 zeroext %22, i64 %25)
  %27 = load i8, i8* %5, align 1
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* @HA_WCOMMAND, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @outb(i8 zeroext %27, i64 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

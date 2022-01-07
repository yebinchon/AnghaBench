; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_chip_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG1 = common dso_local global i32 0, align 4
@PIO_STATUS = common dso_local global i32 0, align 4
@PIO_FLAG = common dso_local global i32 0, align 4
@C4_IMG = common dso_local global i32 0, align 4
@CONFIG4 = common dso_local global i32 0, align 4
@C3_IMG = common dso_local global i32 0, align 4
@CONFIG3 = common dso_local global i32 0, align 4
@C2_IMG = common dso_local global i32 0, align 4
@CONFIG2 = common dso_local global i32 0, align 4
@C1_IMG = common dso_local global i32 0, align 4
@CONFIG1 = common dso_local global i32 0, align 4
@CLKCONV = common dso_local global i32 0, align 4
@SRTIMOUT = common dso_local global i32 0, align 4
@SYNCPRD = common dso_local global i32 0, align 4
@SYNC_MODE = common dso_local global i32 0, align 4
@SYNCOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chip_init() #0 {
  %1 = load i32, i32* @REG1, align 4
  %2 = load i32, i32* @PIO_STATUS, align 4
  %3 = call i32 @outb(i32 1, i32 %2)
  %4 = load i32, i32* @PIO_FLAG, align 4
  %5 = call i32 @outb(i32 0, i32 %4)
  %6 = load i32, i32* @C4_IMG, align 4
  %7 = load i32, i32* @CONFIG4, align 4
  %8 = call i32 @outb(i32 %6, i32 %7)
  %9 = load i32, i32* @C3_IMG, align 4
  %10 = load i32, i32* @CONFIG3, align 4
  %11 = call i32 @outb(i32 %9, i32 %10)
  %12 = load i32, i32* @C2_IMG, align 4
  %13 = load i32, i32* @CONFIG2, align 4
  %14 = call i32 @outb(i32 %12, i32 %13)
  %15 = load i32, i32* @C1_IMG, align 4
  %16 = load i32, i32* @CONFIG1, align 4
  %17 = call i32 @outb(i32 %15, i32 %16)
  %18 = load i32, i32* @CLKCONV, align 4
  %19 = call i32 @outb(i32 5, i32 %18)
  %20 = load i32, i32* @SRTIMOUT, align 4
  %21 = call i32 @outb(i32 156, i32 %20)
  %22 = load i32, i32* @SYNCPRD, align 4
  %23 = call i32 @outb(i32 5, i32 %22)
  %24 = load i32, i32* @SYNC_MODE, align 4
  %25 = load i32, i32* @SYNCOFF, align 4
  %26 = call i32 @outb(i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

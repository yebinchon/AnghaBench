; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_acquire_seeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_acquire_seeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@SEEMS = common dso_local global i32 0, align 4
@SEECTL = common dso_local global i32 0, align 4
@SEERDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*)* @acquire_seeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_seeprom(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aic7xxx_host*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  %4 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %5 = load i32, i32* @SEEMS, align 4
  %6 = load i32, i32* @SEECTL, align 4
  %7 = call i32 @aic_outb(%struct.aic7xxx_host* %4, i32 %5, i32 %6)
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %9 = call i32 @CLOCK_PULSE(%struct.aic7xxx_host* %8)
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %11 = load i32, i32* @SEECTL, align 4
  %12 = call i32 @aic_inb(%struct.aic7xxx_host* %10, i32 %11)
  %13 = load i32, i32* @SEERDY, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %18 = load i32, i32* @SEECTL, align 4
  %19 = call i32 @aic_outb(%struct.aic7xxx_host* %17, i32 0, i32 %18)
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @CLOCK_PULSE(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

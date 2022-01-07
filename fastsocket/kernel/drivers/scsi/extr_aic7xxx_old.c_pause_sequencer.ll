; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_pause_sequencer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_pause_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, i32 }

@HCNTRL = common dso_local global i32 0, align 4
@PAUSE = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@CCSCBCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @pause_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pause_sequencer(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %3 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %4 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %5 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HCNTRL, align 4
  %8 = call i32 @aic_outb(%struct.aic7xxx_host* %3, i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %16, %1
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %11 = load i32, i32* @HCNTRL, align 4
  %12 = call i32 @aic_inb(%struct.aic7xxx_host* %10, i32 %11)
  %13 = load i32, i32* @PAUSE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %9

17:                                               ; preds = %9
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %19 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AHC_ULTRA2, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %26 = load i32, i32* @CCSCBCTL, align 4
  %27 = call i32 @aic_inb(%struct.aic7xxx_host* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %17
  ret void
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_unpause_sequencer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_unpause_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32, i32 }

@INTSTAT = common dso_local global i32 0, align 4
@SCSIINT = common dso_local global i32 0, align 4
@SEQINT = common dso_local global i32 0, align 4
@BRKADRINT = common dso_local global i32 0, align 4
@AHC_HANDLING_REQINITS = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*, i32)* @unpause_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpause_sequencer(%struct.aic7xxx_host* %0, i32 %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %9 = load i32, i32* @INTSTAT, align 4
  %10 = call i32 @aic_inb(%struct.aic7xxx_host* %8, i32 %9)
  %11 = load i32, i32* @SCSIINT, align 4
  %12 = load i32, i32* @SEQINT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BRKADRINT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %7
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %20 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AHC_HANDLING_REQINITS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  %28 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HCNTRL, align 4
  %31 = call i32 @aic_outb(%struct.aic7xxx_host* %26, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %18, %7
  ret void
}

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

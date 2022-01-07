; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_clear_intstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_clear_intstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@CLRSELDO = common dso_local global i32 0, align 4
@CLRSELDI = common dso_local global i32 0, align 4
@CLRSELINGO = common dso_local global i32 0, align 4
@CLRSINT0 = common dso_local global i32 0, align 4
@CLRSELTIMEO = common dso_local global i32 0, align 4
@CLRATNO = common dso_local global i32 0, align 4
@CLRSCSIRSTI = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i32 0, align 4
@CLRSCSIPERR = common dso_local global i32 0, align 4
@CLRPHASECHG = common dso_local global i32 0, align 4
@CLRREQINIT = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i32 0, align 4
@CLRSEQINT = common dso_local global i32 0, align 4
@CLRBRKADRINT = common dso_local global i32 0, align 4
@CLRPARERR = common dso_local global i32 0, align 4
@CLRINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_clear_intstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_clear_intstat(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %3 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %4 = load i32, i32* @CLRSELDO, align 4
  %5 = load i32, i32* @CLRSELDI, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @CLRSELINGO, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CLRSINT0, align 4
  %10 = call i32 @aic_outb(%struct.aic7xxx_host* %3, i32 %8, i32 %9)
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %12 = load i32, i32* @CLRSELTIMEO, align 4
  %13 = load i32, i32* @CLRATNO, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CLRSCSIRSTI, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CLRBUSFREE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CLRSCSIPERR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CLRPHASECHG, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CLRREQINIT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CLRSINT1, align 4
  %26 = call i32 @aic_outb(%struct.aic7xxx_host* %11, i32 %24, i32 %25)
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %28 = load i32, i32* @CLRSCSIINT, align 4
  %29 = load i32, i32* @CLRSEQINT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CLRBRKADRINT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CLRPARERR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CLRINT, align 4
  %36 = call i32 @aic_outb(%struct.aic7xxx_host* %27, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

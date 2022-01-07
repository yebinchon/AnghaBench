; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_add_curscb_to_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_add_curscb_to_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@SCB_LIST_NULL = common dso_local global i32 0, align 4
@SCB_TAG = common dso_local global i32 0, align 4
@SCB_CONTROL = common dso_local global i32 0, align 4
@FREE_SCBH = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_add_curscb_to_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_add_curscb_to_free_list(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %3 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %4 = load i32, i32* @SCB_LIST_NULL, align 4
  %5 = load i32, i32* @SCB_TAG, align 4
  %6 = call i32 @aic_outb(%struct.aic7xxx_host* %3, i32 %4, i32 %5)
  %7 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %8 = load i32, i32* @SCB_CONTROL, align 4
  %9 = call i32 @aic_outb(%struct.aic7xxx_host* %7, i32 0, i32 %8)
  %10 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %12 = load i32, i32* @FREE_SCBH, align 4
  %13 = call i32 @aic_inb(%struct.aic7xxx_host* %11, i32 %12)
  %14 = load i32, i32* @SCB_NEXT, align 4
  %15 = call i32 @aic_outb(%struct.aic7xxx_host* %10, i32 %13, i32 %14)
  %16 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %17 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %18 = load i32, i32* @SCBPTR, align 4
  %19 = call i32 @aic_inb(%struct.aic7xxx_host* %17, i32 %18)
  %20 = load i32, i32* @FREE_SCBH, align 4
  %21 = call i32 @aic_outb(%struct.aic7xxx_host* %16, i32 %19, i32 %20)
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

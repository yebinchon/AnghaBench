; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_abort_waiting_scb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_abort_waiting_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }
%struct.aic7xxx_scb = type { i32 }

@SCBPTR = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i8 0, align 1
@WAITING_SCBH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.aic7xxx_host*, %struct.aic7xxx_scb*, i8, i8)* @aic7xxx_abort_waiting_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @aic7xxx_abort_waiting_scb(%struct.aic7xxx_host* %0, %struct.aic7xxx_scb* %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.aic7xxx_host*, align 8
  %6 = alloca %struct.aic7xxx_scb*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %5, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %12 = load i32, i32* @SCBPTR, align 4
  %13 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %11, i32 %12)
  store i8 %13, i8* %9, align 1
  %14 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %15 = load i8, i8* %7, align 1
  %16 = load i32, i32* @SCBPTR, align 4
  %17 = call i32 @aic_outb(%struct.aic7xxx_host* %14, i8 zeroext %15, i32 %16)
  %18 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %19 = load i32, i32* @SCB_NEXT, align 4
  %20 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %18, i32 %19)
  store i8 %20, i8* %10, align 1
  %21 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %22 = call i32 @aic7xxx_add_curscb_to_free_list(%struct.aic7xxx_host* %21)
  %23 = load i8, i8* %8, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @SCB_LIST_NULL, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %30 = load i8, i8* %10, align 1
  %31 = load i32, i32* @WAITING_SCBH, align 4
  %32 = call i32 @aic_outb(%struct.aic7xxx_host* %29, i8 zeroext %30, i32 %31)
  br label %42

33:                                               ; preds = %4
  %34 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %35 = load i8, i8* %8, align 1
  %36 = load i32, i32* @SCBPTR, align 4
  %37 = call i32 @aic_outb(%struct.aic7xxx_host* %34, i8 zeroext %35, i32 %36)
  %38 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %39 = load i8, i8* %10, align 1
  %40 = load i32, i32* @SCB_NEXT, align 4
  %41 = call i32 @aic_outb(%struct.aic7xxx_host* %38, i8 zeroext %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %44 = load i8, i8* %9, align 1
  %45 = load i32, i32* @SCBPTR, align 4
  %46 = call i32 @aic_outb(%struct.aic7xxx_host* %43, i8 zeroext %44, i32 %45)
  %47 = load i8, i8* %10, align 1
  ret i8 %47
}

declare dso_local zeroext i8 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i8 zeroext, i32) #1

declare dso_local i32 @aic7xxx_add_curscb_to_free_list(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

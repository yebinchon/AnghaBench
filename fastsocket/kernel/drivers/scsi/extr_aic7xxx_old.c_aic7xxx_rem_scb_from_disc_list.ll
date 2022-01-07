; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_rem_scb_from_disc_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_rem_scb_from_disc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i32 }

@SCBPTR = common dso_local global i32 0, align 4
@SCB_NEXT = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i8 0, align 1
@DISCONNECTED_SCBH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.aic7xxx_host*, i8, i8)* @aic7xxx_rem_scb_from_disc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @aic7xxx_rem_scb_from_disc_list(%struct.aic7xxx_host* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.aic7xxx_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = load i32, i32* @SCBPTR, align 4
  %11 = call i32 @aic_outb(%struct.aic7xxx_host* %8, i8 zeroext %9, i32 %10)
  %12 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %13 = load i32, i32* @SCB_NEXT, align 4
  %14 = call zeroext i8 @aic_inb(%struct.aic7xxx_host* %12, i32 %13)
  store i8 %14, i8* %7, align 1
  %15 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %16 = call i32 @aic7xxx_add_curscb_to_free_list(%struct.aic7xxx_host* %15)
  %17 = load i8, i8* %6, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @SCB_LIST_NULL, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %24 = load i8, i8* %6, align 1
  %25 = load i32, i32* @SCBPTR, align 4
  %26 = call i32 @aic_outb(%struct.aic7xxx_host* %23, i8 zeroext %24, i32 %25)
  %27 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %28 = load i8, i8* %7, align 1
  %29 = load i32, i32* @SCB_NEXT, align 4
  %30 = call i32 @aic_outb(%struct.aic7xxx_host* %27, i8 zeroext %28, i32 %29)
  br label %36

31:                                               ; preds = %3
  %32 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %33 = load i8, i8* %7, align 1
  %34 = load i32, i32* @DISCONNECTED_SCBH, align 4
  %35 = call i32 @aic_outb(%struct.aic7xxx_host* %32, i8 zeroext %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %22
  %37 = load i8, i8* %7, align 1
  ret i8 %37
}

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic7xxx_add_curscb_to_free_list(%struct.aic7xxx_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_drivestatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_gdrom.c_gdrom_drivestatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }

@GDROM_ERROR_REG = common dso_local global i32 0, align 4
@CDS_DISC_OK = common dso_local global i32 0, align 4
@CDS_DRIVE_NOT_READY = common dso_local global i32 0, align 4
@CDS_NO_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @gdrom_drivestatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdrom_drivestatus(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GDROM_ERROR_REG, align 4
  %8 = call signext i8 @ctrl_inb(i32 %7)
  store i8 %8, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %10, 240
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %6, align 1
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @CDS_DISC_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @CDS_DRIVE_NOT_READY, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CDS_NO_INFO, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local signext i8 @ctrl_inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

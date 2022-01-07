; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_handle_firmware_panic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_handle_firmware_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SCRATCH = common dso_local global i32 0, align 4
@B43_FWPANIC_REASON_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Whoopsy, firmware panic! Reason: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"The panic reason is unknown.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Microcode panic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_handle_firmware_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_handle_firmware_panic(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %4 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %5 = load i32, i32* @B43_SHM_SCRATCH, align 4
  %6 = load i32, i32* @B43_FWPANIC_REASON_REG, align 4
  %7 = call i32 @b43_shm_read16(%struct.b43_wldev* %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @b43err(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %14 [
    i32 129, label %19
    i32 128, label %20
  ]

14:                                               ; preds = %1
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @b43dbg(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %1, %14
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = call i32 @b43_controller_restart(%struct.b43_wldev* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43_controller_restart(%struct.b43_wldev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

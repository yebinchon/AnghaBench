; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_camera_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_camera_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SONYPI_CAMERA_STATUS = common dso_local global i32 0, align 4
@SONYPI_CAMERA_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sonypi_camera_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonypi_camera_ready() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SONYPI_CAMERA_STATUS, align 4
  %3 = call i32 @sonypi_call2(i32 143, i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 255
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @SONYPI_CAMERA_STATUS_READY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %6, %0
  %12 = phi i1 [ false, %0 ], [ %10, %6 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @sonypi_call2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@camera = common dso_local global i64 0, align 8
@SONYPI_ACPI_ACTIVE = common dso_local global i32 0, align 4
@fnkeyinit = common dso_local global i64 0, align 8
@sonypi_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sonypi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonypi_disable() #0 {
  %1 = call i32 @sonypi_call2(i32 129, i32 0)
  %2 = load i64, i64* @camera, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @sonypi_camera_off()
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @SONYPI_ACPI_ACTIVE, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @fnkeyinit, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @outb(i32 241, i32 178)
  br label %14

14:                                               ; preds = %12, %9, %6
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0), align 4
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
  ]

16:                                               ; preds = %14
  %17 = call i32 (...) @sonypi_type1_dis()
  br label %22

18:                                               ; preds = %14
  %19 = call i32 (...) @sonypi_type2_dis()
  br label %22

20:                                               ; preds = %14
  %21 = call i32 (...) @sonypi_type3_dis()
  br label %22

22:                                               ; preds = %14, %20, %18, %16
  ret i32 0
}

declare dso_local i32 @sonypi_call2(i32, i32) #1

declare dso_local i32 @sonypi_camera_off(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @sonypi_type1_dis(...) #1

declare dso_local i32 @sonypi_type2_dis(...) #1

declare dso_local i32 @sonypi_type3_dis(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

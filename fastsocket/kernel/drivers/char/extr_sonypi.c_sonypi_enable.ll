; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sonypi.c_sonypi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sonypi_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@compat = common dso_local global i64 0, align 8
@SONYPI_ACPI_ACTIVE = common dso_local global i32 0, align 4
@fnkeyinit = common dso_local global i64 0, align 8
@camera = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sonypi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonypi_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0), align 4
  switch i32 %3, label %10 [
    i32 130, label %4
    i32 129, label %6
    i32 128, label %8
  ]

4:                                                ; preds = %1
  %5 = call i32 (...) @sonypi_type1_srs()
  br label %10

6:                                                ; preds = %1
  %7 = call i32 (...) @sonypi_type2_srs()
  br label %10

8:                                                ; preds = %1
  %9 = call i32 (...) @sonypi_type3_srs()
  br label %10

10:                                               ; preds = %1, %8, %6, %4
  %11 = call i32 @sonypi_call1(i32 130)
  %12 = call i32 @sonypi_call2(i32 129, i32 255)
  %13 = load i64, i64* @compat, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 146, i32 130
  %17 = call i32 @sonypi_call1(i32 %16)
  %18 = load i32, i32* @SONYPI_ACPI_ACTIVE, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = load i64, i64* @fnkeyinit, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @outb(i32 240, i32 178)
  br label %25

25:                                               ; preds = %23, %20, %10
  %26 = load i64, i64* @camera, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @sonypi_camera_on()
  br label %33

33:                                               ; preds = %31, %28, %25
  ret void
}

declare dso_local i32 @sonypi_type1_srs(...) #1

declare dso_local i32 @sonypi_type2_srs(...) #1

declare dso_local i32 @sonypi_type3_srs(...) #1

declare dso_local i32 @sonypi_call1(i32) #1

declare dso_local i32 @sonypi_call2(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @sonypi_camera_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

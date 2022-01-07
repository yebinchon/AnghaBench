; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_probe_rt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_probe_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@MAC_CSR0_3290 = common dso_local global i32 0, align 4
@MAC_CSR0 = common dso_local global i32 0, align 4
@MAC_CSR0_CHIPSET = common dso_local global i32 0, align 4
@MAC_CSR0_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid RT chipset 0x%04x, rev %04x detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2800_probe_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_probe_rt(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %7, i32 134)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %12 = load i32, i32* @MAC_CSR0_3290, align 4
  %13 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %11, i32 %12, i32* %4)
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = load i32, i32* @MAC_CSR0, align 4
  %17 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %15, i32 %16, i32* %4)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAC_CSR0_CHIPSET, align 4
  %21 = call i32 @rt2x00_get_field32(i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MAC_CSR0_REVISION, align 4
  %24 = call i32 @rt2x00_get_field32(i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %27 [
    i32 140, label %26
    i32 139, label %26
    i32 138, label %26
    i32 137, label %26
    i32 136, label %26
    i32 135, label %26
    i32 134, label %26
    i32 133, label %26
    i32 132, label %26
    i32 131, label %26
    i32 130, label %26
    i32 129, label %26
    i32 128, label %26
  ]

26:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  br label %34

27:                                               ; preds = %18
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rt2x00_err(%struct.rt2x00_dev* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @rt2x00_set_rt(%struct.rt2x00_dev* %35, i32 %36, i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @rt2x00_set_rt(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

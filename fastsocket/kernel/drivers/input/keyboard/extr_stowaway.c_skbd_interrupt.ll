; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_stowaway.c_skbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_stowaway.c_skbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i32 }
%struct.skbd = type { i64*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@SKBD_KEY_MASK = common dso_local global i8 0, align 1
@SKBD_RELEASE = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8, i32)* @skbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skbd_interrupt(%struct.serio* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.serio*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.skbd*, align 8
  %8 = alloca %struct.input_dev*, align 8
  store %struct.serio* %0, %struct.serio** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %9 = load %struct.serio*, %struct.serio** %4, align 8
  %10 = call %struct.skbd* @serio_get_drvdata(%struct.serio* %9)
  store %struct.skbd* %10, %struct.skbd** %7, align 8
  %11 = load %struct.skbd*, %struct.skbd** %7, align 8
  %12 = getelementptr inbounds %struct.skbd, %struct.skbd* %11, i32 0, i32 1
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %8, align 8
  %14 = load %struct.skbd*, %struct.skbd** %7, align 8
  %15 = getelementptr inbounds %struct.skbd, %struct.skbd* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i8, i8* %5, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @SKBD_KEY_MASK, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %16, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %3
  %27 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %28 = load %struct.skbd*, %struct.skbd** %7, align 8
  %29 = getelementptr inbounds %struct.skbd, %struct.skbd* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @SKBD_KEY_MASK, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* @SKBD_RELEASE, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @input_report_key(%struct.input_dev* %27, i64 %38, i32 %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = call i32 @input_sync(%struct.input_dev* %48)
  br label %50

50:                                               ; preds = %26, %3
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %51
}

declare dso_local %struct.skbd* @serio_get_drvdata(%struct.serio*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

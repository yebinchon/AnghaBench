; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_kpad_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_kpad_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bf54x_kpad = type { i32, i64, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bfin_kpad_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_kpad_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.bf54x_kpad*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.platform_device*
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call %struct.bf54x_kpad* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.bf54x_kpad* %13, %struct.bf54x_kpad** %6, align 8
  %14 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %15 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %14, i32 0, i32 4
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %7, align 8
  %17 = call i32 (...) @bfin_read_KPAD_ROWCOL()
  store i32 %17, i32* %9, align 4
  %18 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %19 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @bfin_kpad_find_key(%struct.bf54x_kpad* %18, %struct.input_dev* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @input_report_key(%struct.input_dev* %22, i32 %23, i32 1)
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = call i32 @input_sync(%struct.input_dev* %25)
  %27 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %28 = call i64 @bfin_kpad_get_keypressed(%struct.bf54x_kpad* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %32 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @disable_irq(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %37 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %39 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %38, i32 0, i32 2
  %40 = load i64, i64* @jiffies, align 8
  %41 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %6, align 8
  %42 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @mod_timer(i32* %39, i64 %44)
  br label %53

46:                                               ; preds = %2
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @input_report_key(%struct.input_dev* %47, i32 %48, i32 0)
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = call i32 @input_sync(%struct.input_dev* %50)
  %52 = call i32 (...) @bfin_kpad_clear_irq()
  br label %53

53:                                               ; preds = %46, %30
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %54
}

declare dso_local %struct.bf54x_kpad* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @bfin_read_KPAD_ROWCOL(...) #1

declare dso_local i32 @bfin_kpad_find_key(%struct.bf54x_kpad*, %struct.input_dev*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i64 @bfin_kpad_get_keypressed(%struct.bf54x_kpad*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @bfin_kpad_clear_irq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

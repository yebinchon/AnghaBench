; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_kpad_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_kpad_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bf54x_kpad = type { i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @bfin_kpad_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_kpad_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bf54x_kpad*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.platform_device*
  store %struct.platform_device* %6, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.bf54x_kpad* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.bf54x_kpad* %8, %struct.bf54x_kpad** %4, align 8
  %9 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %10 = call i64 @bfin_kpad_get_keypressed(%struct.bf54x_kpad* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %14 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %13, i32 0, i32 4
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %17 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call i32 @mod_timer(i32* %14, i64 %19)
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %23 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %26 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @input_report_key(i32 %24, i32 %27, i32 0)
  %29 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %30 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @input_sync(i32 %31)
  %33 = call i32 (...) @bfin_kpad_clear_irq()
  %34 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %4, align 8
  %35 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @enable_irq(i32 %36)
  br label %38

38:                                               ; preds = %21, %12
  ret void
}

declare dso_local %struct.bf54x_kpad* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @bfin_kpad_get_keypressed(%struct.bf54x_kpad*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @bfin_kpad_clear_irq(...) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

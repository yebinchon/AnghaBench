; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ne-h8300.c_init_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ne-h8300.c_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@h8300_ne_count = common dso_local global i64 0, align 8
@h8300_ne_base = common dso_local global i32* null, align 8
@h8300_ne_irq = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dev(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load i64, i64* @h8300_ne_count, align 8
  %5 = load i32*, i32** @h8300_ne_base, align 8
  %6 = call i64 @ARRAY_SIZE(i32* %5)
  %7 = icmp ult i64 %4, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load i32*, i32** @h8300_ne_base, align 8
  %10 = load i64, i64* @h8300_ne_count, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** @h8300_ne_irq, align 8
  %16 = load i64, i64* @h8300_ne_count, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i64, i64* @h8300_ne_count, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* @h8300_ne_count, align 8
  store i32 0, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

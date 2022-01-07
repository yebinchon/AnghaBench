; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_wax.c_wax_choose_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_wax.c_wax_choose_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parisc_device*, i8*)* @wax_choose_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wax_choose_irq(%struct.parisc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.parisc_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.parisc_device* %0, %struct.parisc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %7 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %13 [
    i32 115, label %10
    i32 140, label %11
    i32 144, label %12
  ]

10:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %14

11:                                               ; preds = %2
  store i32 6, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  store i32 10, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  br label %33

14:                                               ; preds = %12, %11, %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %18 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %17, i32 0, i32 2
  %19 = call i32 @gsc_asic_assign_irq(i8* %15, i32 %16, i32* %18)
  %20 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %21 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %26 [
    i32 115, label %24
    i32 144, label %25
  ]

24:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  br label %27

25:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %27

26:                                               ; preds = %14
  br label %33

27:                                               ; preds = %25, %24
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %31 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %30, i32 0, i32 0
  %32 = call i32 @gsc_asic_assign_irq(i8* %28, i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %26, %13
  ret void
}

declare dso_local i32 @gsc_asic_assign_irq(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

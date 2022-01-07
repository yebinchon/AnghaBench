; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_asp.c_asp_choose_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_asp.c_asp_choose_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parisc_device = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parisc_device*, i8*)* @asp_choose_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asp_choose_irq(%struct.parisc_device* %0, i8* %1) #0 {
  %3 = alloca %struct.parisc_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.parisc_device* %0, %struct.parisc_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %7 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 113, label %10
    i32 114, label %11
    i32 115, label %12
    i32 116, label %13
    i32 117, label %14
    i32 118, label %21
    i32 119, label %22
    i32 122, label %23
    i32 123, label %24
    i32 124, label %25
    i32 125, label %26
    i32 127, label %27
  ]

10:                                               ; preds = %2
  store i32 9, i32* %5, align 4
  br label %29

11:                                               ; preds = %2
  store i32 8, i32* %5, align 4
  br label %29

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %29

13:                                               ; preds = %2
  store i32 7, i32* %5, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %16 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 4
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 5, i32 6
  store i32 %20, i32* %5, align 4
  br label %29

21:                                               ; preds = %2
  store i32 10, i32* %5, align 4
  br label %29

22:                                               ; preds = %2
  store i32 11, i32* %5, align 4
  br label %29

23:                                               ; preds = %2
  store i32 13, i32* %5, align 4
  br label %29

24:                                               ; preds = %2
  store i32 13, i32* %5, align 4
  br label %29

25:                                               ; preds = %2
  store i32 3, i32* %5, align 4
  br label %29

26:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %29

27:                                               ; preds = %2
  store i32 13, i32* %5, align 4
  br label %29

28:                                               ; preds = %2
  br label %48

29:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %14, %13, %12, %11, %10
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %33 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %32, i32 0, i32 3
  %34 = call i32 @gsc_asic_assign_irq(i8* %30, i32 %31, i32* %33)
  %35 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %36 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %41 [
    i32 115, label %39
    i32 118, label %40
  ]

39:                                               ; preds = %29
  store i32 2, i32* %5, align 4
  br label %42

40:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %42

41:                                               ; preds = %29
  br label %48

42:                                               ; preds = %40, %39
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.parisc_device*, %struct.parisc_device** %3, align 8
  %46 = getelementptr inbounds %struct.parisc_device, %struct.parisc_device* %45, i32 0, i32 1
  %47 = call i32 @gsc_asic_assign_irq(i8* %43, i32 %44, i32* %46)
  br label %48

48:                                               ; preds = %42, %41, %28
  ret void
}

declare dso_local i32 @gsc_asic_assign_irq(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

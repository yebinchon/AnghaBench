; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_link_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2400pci.c_rt2400pci_link_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.link_qual = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link_qual*, i32)* @rt2400pci_link_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2400pci_link_tuner(%struct.rt2x00_dev* %0, %struct.link_qual* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.link_qual*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.link_qual* %1, %struct.link_qual** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 60
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %3
  br label %51

14:                                               ; preds = %9
  %15 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %16 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 512
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %21 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %27 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %28 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = call i32 @rt2400pci_set_vgc(%struct.rt2x00_dev* %25, %struct.link_qual* %26, i32 %30)
  br label %51

32:                                               ; preds = %19, %14
  %33 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %34 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 100
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %39 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 8
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %44 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %45 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %46 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 4
  %49 = call i32 @rt2400pci_set_vgc(%struct.rt2x00_dev* %43, %struct.link_qual* %44, i32 %48)
  br label %50

50:                                               ; preds = %42, %37, %32
  br label %51

51:                                               ; preds = %13, %50, %24
  ret void
}

declare dso_local i32 @rt2400pci_set_vgc(%struct.rt2x00_dev*, %struct.link_qual*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

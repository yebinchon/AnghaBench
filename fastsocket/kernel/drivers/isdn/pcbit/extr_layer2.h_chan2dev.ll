; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_chan2dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_chan2dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { %struct.pcbit_chan*, %struct.pcbit_chan* }
%struct.pcbit_chan = type { i32 }

@MAX_PCBIT_CARDS = common dso_local global i32 0, align 4
@dev_pcbit = common dso_local global %struct.pcbit_dev** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcbit_dev* (%struct.pcbit_chan*)* @chan2dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcbit_dev* @chan2dev(%struct.pcbit_chan* %0) #0 {
  %2 = alloca %struct.pcbit_dev*, align 8
  %3 = alloca %struct.pcbit_chan*, align 8
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pcbit_chan* %0, %struct.pcbit_chan** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_PCBIT_CARDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.pcbit_dev**, %struct.pcbit_dev*** @dev_pcbit, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pcbit_dev*, %struct.pcbit_dev** %11, i64 %13
  %15 = load %struct.pcbit_dev*, %struct.pcbit_dev** %14, align 8
  store %struct.pcbit_dev* %15, %struct.pcbit_dev** %4, align 8
  %16 = icmp ne %struct.pcbit_dev* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %10
  %18 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %18, i32 0, i32 1
  %20 = load %struct.pcbit_chan*, %struct.pcbit_chan** %19, align 8
  %21 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %22 = icmp eq %struct.pcbit_chan* %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %24, i32 0, i32 0
  %26 = load %struct.pcbit_chan*, %struct.pcbit_chan** %25, align 8
  %27 = load %struct.pcbit_chan*, %struct.pcbit_chan** %3, align 8
  %28 = icmp eq %struct.pcbit_chan* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17
  %30 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  store %struct.pcbit_dev* %30, %struct.pcbit_dev** %2, align 8
  br label %37

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  store %struct.pcbit_dev* null, %struct.pcbit_dev** %2, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  ret %struct.pcbit_dev* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

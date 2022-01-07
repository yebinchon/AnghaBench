; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_finddev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_finddev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i32 }

@MAX_PCBIT_CARDS = common dso_local global i32 0, align 4
@dev_pcbit = common dso_local global %struct.pcbit_dev** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcbit_dev* (i32)* @finddev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcbit_dev* @finddev(i32 %0) #0 {
  %2 = alloca %struct.pcbit_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcbit_dev*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAX_PCBIT_CARDS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.pcbit_dev**, %struct.pcbit_dev*** @dev_pcbit, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pcbit_dev*, %struct.pcbit_dev** %11, i64 %13
  %15 = load %struct.pcbit_dev*, %struct.pcbit_dev** %14, align 8
  store %struct.pcbit_dev* %15, %struct.pcbit_dev** %4, align 8
  %16 = icmp ne %struct.pcbit_dev* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %10
  %18 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.pcbit_dev*, %struct.pcbit_dev** %4, align 8
  store %struct.pcbit_dev* %24, %struct.pcbit_dev** %2, align 8
  br label %31

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store %struct.pcbit_dev* null, %struct.pcbit_dev** %2, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  ret %struct.pcbit_dev* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

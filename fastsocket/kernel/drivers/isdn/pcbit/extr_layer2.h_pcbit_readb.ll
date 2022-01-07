; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_pcbit_readb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/pcbit/extr_layer2.h_pcbit_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcbit_dev = type { i64, i64 }

@BANK2 = common dso_local global i64 0, align 8
@BANKLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.pcbit_dev*)* @pcbit_readb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @pcbit_readb(%struct.pcbit_dev* %0) #0 {
  %2 = alloca %struct.pcbit_dev*, align 8
  %3 = alloca i8, align 1
  store %struct.pcbit_dev* %0, %struct.pcbit_dev** %2, align 8
  %4 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %5 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = trunc i64 %6 to i32
  %9 = call zeroext i8 @readb(i32 %8)
  store i8 %9, i8* %3, align 1
  %10 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BANK2, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @BANKLEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = icmp eq i64 %12, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %23 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BANK2, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.pcbit_dev*, %struct.pcbit_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pcbit_dev, %struct.pcbit_dev* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %1
  %30 = load i8, i8* %3, align 1
  ret i8 %30
}

declare dso_local zeroext i8 @readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

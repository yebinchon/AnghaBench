; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_scoop.c_reset_scoop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_scoop.c_reset_scoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scoop_dev = type { i64 }

@SCOOP_MCR = common dso_local global i64 0, align 8
@SCOOP_CDR = common dso_local global i64 0, align 8
@SCOOP_CCR = common dso_local global i64 0, align 8
@SCOOP_IMR = common dso_local global i64 0, align 8
@SCOOP_IRM = common dso_local global i64 0, align 8
@SCOOP_ISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_scoop(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.scoop_dev*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.scoop_dev* @dev_get_drvdata(%struct.device* %4)
  store %struct.scoop_dev* %5, %struct.scoop_dev** %3, align 8
  %6 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %7 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SCOOP_MCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @iowrite16(i32 256, i64 %10)
  %12 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %13 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCOOP_CDR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite16(i32 0, i64 %16)
  %18 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %19 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCOOP_CCR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite16(i32 0, i64 %22)
  %24 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %25 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SCOOP_IMR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @iowrite16(i32 0, i64 %28)
  %30 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %31 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCOOP_IRM, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite16(i32 255, i64 %34)
  %36 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %37 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SCOOP_ISR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @iowrite16(i32 0, i64 %40)
  %42 = load %struct.scoop_dev*, %struct.scoop_dev** %3, align 8
  %43 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SCOOP_IRM, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @iowrite16(i32 0, i64 %46)
  ret void
}

declare dso_local %struct.scoop_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @iowrite16(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

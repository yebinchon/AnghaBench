; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_count_voltages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_count_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_count_voltages(%struct.regulator* %0) #0 {
  %2 = alloca %struct.regulator*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  store %struct.regulator* %0, %struct.regulator** %2, align 8
  %4 = load %struct.regulator*, %struct.regulator** %2, align 8
  %5 = getelementptr inbounds %struct.regulator, %struct.regulator* %4, i32 0, i32 0
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  store %struct.regulator_dev* %6, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i64 [ %11, %13 ], [ %17, %14 ]
  %20 = trunc i64 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

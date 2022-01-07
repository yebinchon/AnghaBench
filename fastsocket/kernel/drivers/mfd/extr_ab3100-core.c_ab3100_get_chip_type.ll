; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ab3100-core.c_ab3100_get_chip_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ab3100-core.c_ab3100_get_chip_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab3100 = type { i32 }

@ABUNKNOWN = common dso_local global i32 0, align 4
@AB3000 = common dso_local global i32 0, align 4
@AB3100 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ab3100_get_chip_type(%struct.ab3100* %0) #0 {
  %2 = alloca %struct.ab3100*, align 8
  %3 = alloca i32, align 4
  store %struct.ab3100* %0, %struct.ab3100** %2, align 8
  %4 = load i32, i32* @ABUNKNOWN, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.ab3100*, %struct.ab3100** %2, align 8
  %6 = getelementptr inbounds %struct.ab3100, %struct.ab3100* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 240
  switch i32 %8, label %13 [
    i32 160, label %9
    i32 192, label %11
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* @AB3000, align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @AB3100, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %1, %11, %9
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

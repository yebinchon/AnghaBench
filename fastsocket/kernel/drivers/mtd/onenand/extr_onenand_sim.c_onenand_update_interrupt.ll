; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_sim.c_onenand_update_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_sim.c_onenand_update_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onenand_chip = type { i64 }

@ONENAND_INT_MASTER = common dso_local global i32 0, align 4
@ONENAND_INT_READ = common dso_local global i32 0, align 4
@ONENAND_INT_WRITE = common dso_local global i32 0, align 4
@ONENAND_INT_ERASE = common dso_local global i32 0, align 4
@ONENAND_INT_RESET = common dso_local global i32 0, align 4
@ONENAND_REG_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.onenand_chip*, i32)* @onenand_update_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_update_interrupt(%struct.onenand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.onenand_chip* %0, %struct.onenand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ONENAND_INT_MASTER, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %24 [
    i32 130, label %8
    i32 129, label %8
    i32 132, label %12
    i32 131, label %12
    i32 133, label %16
    i32 128, label %20
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* @ONENAND_INT_READ, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  br label %25

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @ONENAND_INT_WRITE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @ONENAND_INT_ERASE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @ONENAND_INT_RESET, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %28 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ONENAND_REG_INTERRUPT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writew(i32 %26, i64 %31)
  ret void
}

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

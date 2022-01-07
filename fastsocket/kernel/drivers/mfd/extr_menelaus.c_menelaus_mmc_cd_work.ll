; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_mmc_cd_work.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_menelaus.c_menelaus_mmc_cd_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menelaus_chip = type { i32, i32 (i32, i8)* }

@MENELAUS_MCT_PIN_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menelaus_chip*)* @menelaus_mmc_cd_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menelaus_mmc_cd_work(%struct.menelaus_chip* %0) #0 {
  %2 = alloca %struct.menelaus_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.menelaus_chip* %0, %struct.menelaus_chip** %2, align 8
  store i8 0, i8* %4, align 1
  %5 = load i32, i32* @MENELAUS_MCT_PIN_ST, align 4
  %6 = call i32 @menelaus_read_reg(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %42

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %16, 1
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %4, align 1
  br label %19

19:                                               ; preds = %14, %10
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, 2
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %4, align 1
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.menelaus_chip*, %struct.menelaus_chip** %2, align 8
  %30 = getelementptr inbounds %struct.menelaus_chip, %struct.menelaus_chip* %29, i32 0, i32 1
  %31 = load i32 (i32, i8)*, i32 (i32, i8)** %30, align 8
  %32 = icmp ne i32 (i32, i8)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.menelaus_chip*, %struct.menelaus_chip** %2, align 8
  %35 = getelementptr inbounds %struct.menelaus_chip, %struct.menelaus_chip* %34, i32 0, i32 1
  %36 = load i32 (i32, i8)*, i32 (i32, i8)** %35, align 8
  %37 = load %struct.menelaus_chip*, %struct.menelaus_chip** %2, align 8
  %38 = getelementptr inbounds %struct.menelaus_chip, %struct.menelaus_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8, i8* %4, align 1
  %41 = call i32 %36(i32 %39, i8 zeroext %40)
  br label %42

42:                                               ; preds = %9, %33, %28
  ret void
}

declare dso_local i32 @menelaus_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

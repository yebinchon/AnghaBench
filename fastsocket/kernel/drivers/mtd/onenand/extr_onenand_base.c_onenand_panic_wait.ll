; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_panic_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_panic_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32 (i64)*, i64 }

@ONENAND_REG_INTERRUPT = common dso_local global i64 0, align 8
@ONENAND_INT_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @onenand_panic_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @onenand_panic_wait(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.onenand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 0
  %8 = load %struct.onenand_chip*, %struct.onenand_chip** %7, align 8
  store %struct.onenand_chip* %8, %struct.onenand_chip** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2000
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %14 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %13, i32 0, i32 0
  %15 = load i32 (i64)*, i32 (i64)** %14, align 8
  %16 = load %struct.onenand_chip*, %struct.onenand_chip** %3, align 8
  %17 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ONENAND_REG_INTERRUPT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 %15(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ONENAND_INT_MASTER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  br label %32

27:                                               ; preds = %12
  %28 = call i32 @udelay(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %9

32:                                               ; preds = %26, %9
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

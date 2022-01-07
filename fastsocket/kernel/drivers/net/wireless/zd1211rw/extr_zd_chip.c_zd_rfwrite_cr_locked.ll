; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_rfwrite_cr_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_rfwrite_cr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.zd_ioreq16 = type { i32, i32 }

@ZD_CR244 = common dso_local global i32 0, align 4
@ZD_CR243 = common dso_local global i32 0, align 4
@ZD_CR242 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x %struct.zd_ioreq16], align 16
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i32 0, i32 0
  %8 = load i32, i32* @ZD_CR244, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i32 0, i32 1
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 16
  %12 = and i32 %11, 255
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i64 1
  %14 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %13, i32 0, i32 0
  %15 = load i32, i32* @ZD_CR243, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %13, i32 0, i32 1
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %13, i64 1
  %21 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %20, i32 0, i32 0
  %22 = load i32, i32* @ZD_CR242, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %20, i32 0, i32 1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %23, align 4
  %26 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %27 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %26, i32 0, i32 0
  %28 = call i32 @mutex_is_locked(i32* %27)
  %29 = call i32 @ZD_ASSERT(i32 %28)
  %30 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %31 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %33 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %32)
  %34 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %30, %struct.zd_ioreq16* %31, i32 %33)
  ret i32 %34
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_generic_patch_6m_band.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_zd_chip_generic_patch_6m_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.zd_ioreq16 = type { i32, i32, i32 }

@ZD_CR128 = common dso_local global i32 0, align 4
@ZD_CR129 = common dso_local global i32 0, align 4
@ZD_CR130 = common dso_local global i32 0, align 4
@ZD_CR47 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"patching for channel %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_chip_generic_patch_6m_band(%struct.zd_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x %struct.zd_ioreq16], align 16
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [4 x %struct.zd_ioreq16], [4 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i32 0, i32 0
  %8 = load i32, i32* @ZD_CR128, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i32 0, i32 1
  store i32 20, i32* %9, align 4
  %10 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %6, i64 1
  %12 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %11, i32 0, i32 0
  %13 = load i32, i32* @ZD_CR129, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %11, i32 0, i32 1
  store i32 18, i32* %14, align 4
  %15 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %11, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %11, i64 1
  %17 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %16, i32 0, i32 0
  %18 = load i32, i32* @ZD_CR130, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %16, i32 0, i32 1
  store i32 16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %16, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %16, i64 1
  %22 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %21, i32 0, i32 0
  %23 = load i32, i32* @ZD_CR47, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %21, i32 0, i32 1
  store i32 30, i32* %24, align 4
  %25 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %21, i32 0, i32 2
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 11
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %2
  %32 = getelementptr inbounds [4 x %struct.zd_ioreq16], [4 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %33 = getelementptr inbounds %struct.zd_ioreq16, %struct.zd_ioreq16* %32, i32 0, i32 1
  store i32 18, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %36 = call i32 @zd_chip_dev(%struct.zd_chip* %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_dbg_f(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %40 = getelementptr inbounds [4 x %struct.zd_ioreq16], [4 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %41 = getelementptr inbounds [4 x %struct.zd_ioreq16], [4 x %struct.zd_ioreq16]* %5, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %41)
  %43 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %39, %struct.zd_ioreq16* %40, i32 %42)
  ret i32 %43
}

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

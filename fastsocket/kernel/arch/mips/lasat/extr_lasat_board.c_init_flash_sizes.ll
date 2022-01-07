; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_lasat_board.c_init_flash_sizes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_lasat_board.c_init_flash_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64*, i32, i32 }

@lasat_board_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LASAT_MTD_BOOTLOADER = common dso_local global i64 0, align 8
@LASAT_MTD_SERVICE = common dso_local global i64 0, align 8
@LASAT_MTD_NORMAL = common dso_local global i64 0, align 8
@LASAT_MTD_CONFIG = common dso_local global i64 0, align 8
@LASAT_MTD_FS = common dso_local global i64 0, align 8
@LASAT_MTD_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_flash_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_flash_sizes() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 0), align 8
  store i64* %4, i64** %1, align 8
  %5 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 1), align 8
  store i64* %5, i64** %2, align 8
  %6 = load i64*, i64** %2, align 8
  %7 = load i64, i64* @LASAT_MTD_BOOTLOADER, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  store i64 262144, i64* %8, align 8
  %9 = load i64*, i64** %2, align 8
  %10 = load i64, i64* @LASAT_MTD_SERVICE, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  store i64 786432, i64* %11, align 8
  %12 = load i64*, i64** %2, align 8
  %13 = load i64, i64* @LASAT_MTD_NORMAL, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 1048576, i64* %14, align 8
  %15 = call i32 (...) @IS_LASAT_200()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %0
  store i32 503316480, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 2), align 8
  %18 = load i64*, i64** %1, align 8
  %19 = load i64, i64* @LASAT_MTD_BOOTLOADER, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 507510784, i64* %20, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 3), align 4
  %22 = icmp sgt i32 %21, 2097152
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i64*, i64** %2, align 8
  %25 = load i64, i64* @LASAT_MTD_CONFIG, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 1048576, i64* %26, align 8
  %27 = load i64*, i64** %2, align 8
  %28 = load i64, i64* @LASAT_MTD_FS, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 5242880, i64* %29, align 8
  br label %30

30:                                               ; preds = %23, %17
  br label %52

31:                                               ; preds = %0
  store i32 268435456, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 2), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 3), align 4
  %33 = icmp slt i32 %32, 16777216
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load i64*, i64** %1, align 8
  %36 = load i64, i64* @LASAT_MTD_BOOTLOADER, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 268435456, i64* %37, align 8
  %38 = load i64*, i64** %2, align 8
  %39 = load i64, i64* @LASAT_MTD_CONFIG, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 1048576, i64* %40, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 3), align 4
  %42 = icmp sge i32 %41, 4194304
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lasat_board_info, i32 0, i32 3), align 4
  %45 = sub nsw i32 %44, 3145728
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %2, align 8
  %48 = load i64, i64* @LASAT_MTD_FS, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %43, %34
  br label %51

51:                                               ; preds = %50, %31
  br label %52

52:                                               ; preds = %51, %30
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @LASAT_MTD_LAST, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i64*, i64** %1, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %63, %69
  %71 = load i64*, i64** %1, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %53

78:                                               ; preds = %53
  ret void
}

declare dso_local i32 @IS_LASAT_200(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_detect_flash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_detect_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_nand_flash = type { i64 }
%struct.pxa3xx_nand_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pxa3xx_nand_platform_data = type { i32, %struct.pxa3xx_nand_flash*, i64 }

@.str = private unnamed_addr constant [63 x i8] c"failed to detect configured nand flash; found %04x instead of\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@builtin_flash_types = common dso_local global %struct.pxa3xx_nand_flash** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_platform_data*)* @pxa3xx_nand_detect_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_detect_flash(%struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa3xx_nand_info*, align 8
  %5 = alloca %struct.pxa3xx_nand_platform_data*, align 8
  %6 = alloca %struct.pxa3xx_nand_flash*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pxa3xx_nand_info* %0, %struct.pxa3xx_nand_info** %4, align 8
  store %struct.pxa3xx_nand_platform_data* %1, %struct.pxa3xx_nand_platform_data** %5, align 8
  store i64 -1, i64* %7, align 8
  %9 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %5, align 8
  %10 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %15 = call i64 @pxa3xx_nand_detect_config(%struct.pxa3xx_nand_info* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %63

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %5, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %27, i32 0, i32 1
  %29 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %29, i64 %31
  store %struct.pxa3xx_nand_flash* %32, %struct.pxa3xx_nand_flash** %6, align 8
  %33 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %34 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %6, align 8
  %35 = call i64 @pxa3xx_nand_config_flash(%struct.pxa3xx_nand_info* %33, %struct.pxa3xx_nand_flash* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %51

38:                                               ; preds = %26
  %39 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %40 = call i64 @__readid(%struct.pxa3xx_nand_info* %39, i64* %7)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %51

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.pxa3xx_nand_flash*, %struct.pxa3xx_nand_flash** %6, align 8
  %46 = getelementptr inbounds %struct.pxa3xx_nand_flash, %struct.pxa3xx_nand_flash* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %63

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %42, %37
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %20

54:                                               ; preds = %20
  %55 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %4, align 8
  %56 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %49, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @pxa3xx_nand_detect_config(%struct.pxa3xx_nand_info*) #1

declare dso_local i64 @pxa3xx_nand_config_flash(%struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_flash*) #1

declare dso_local i64 @__readid(%struct.pxa3xx_nand_info*, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

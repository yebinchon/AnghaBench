; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_fw_dma_add_command_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_fw_dma_add_command_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.command_block* }
%struct.command_block = type { i64, i64, i64, i64 }

@CB_VALID = common dso_local global i64 0, align 8
@CB_SRC_LE = common dso_local global i64 0, align 8
@CB_DEST_LE = common dso_local global i64 0, align 8
@CB_SRC_AUTOINC = common dso_local global i64 0, align 8
@CB_SRC_IO_GATED = common dso_local global i64 0, align 8
@CB_DEST_AUTOINC = common dso_local global i64 0, align 8
@CB_SRC_SIZE_LONG = common dso_local global i64 0, align 8
@CB_DEST_SIZE_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"src_address=0x%x dest_address=0x%x length=0x%x\0A\00", align 1
@CB_NUMBER_OF_ELEMENTS_SMALL = common dso_local global i64 0, align 8
@CB_INT_ENABLED = common dso_local global i64 0, align 8
@CB_LAST_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i64, i64, i64, i32, i32)* @ipw_fw_dma_add_command_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_fw_dma_add_command_block(%struct.ipw_priv* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.command_block*, align 8
  %16 = alloca i64, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* @CB_VALID, align 8
  %18 = load i64, i64* @CB_SRC_LE, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @CB_DEST_LE, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @CB_SRC_AUTOINC, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @CB_SRC_IO_GATED, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @CB_DEST_AUTOINC, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @CB_SRC_SIZE_LONG, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @CB_DEST_SIZE_LONG, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %14, align 8
  store i64 0, i64* %16, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %32, i64 %33, i64 %34)
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %37 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CB_NUMBER_OF_ELEMENTS_SMALL, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %92

43:                                               ; preds = %6
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %16, align 8
  %48 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %49 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.command_block*, %struct.command_block** %50, align 8
  %52 = load i64, i64* %16, align 8
  %53 = getelementptr inbounds %struct.command_block, %struct.command_block* %51, i64 %52
  store %struct.command_block* %53, %struct.command_block** %15, align 8
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %8, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load i64, i64* @CB_INT_ENABLED, align 8
  %63 = load i64, i64* %14, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %61, %43
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* @CB_LAST_VALID, align 8
  %70 = load i64, i64* %14, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %14, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %14, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %9, align 8
  %78 = xor i64 %76, %77
  %79 = load i64, i64* %10, align 8
  %80 = xor i64 %78, %79
  %81 = load %struct.command_block*, %struct.command_block** %15, align 8
  %82 = getelementptr inbounds %struct.command_block, %struct.command_block* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.command_block*, %struct.command_block** %15, align 8
  %85 = getelementptr inbounds %struct.command_block, %struct.command_block* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.command_block*, %struct.command_block** %15, align 8
  %88 = getelementptr inbounds %struct.command_block, %struct.command_block* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load %struct.command_block*, %struct.command_block** %15, align 8
  %91 = getelementptr inbounds %struct.command_block, %struct.command_block* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %72, %42
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @IPW_DEBUG_FW_INFO(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

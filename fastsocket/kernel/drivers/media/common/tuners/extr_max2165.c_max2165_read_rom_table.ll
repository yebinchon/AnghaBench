; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_max2165.c_max2165_read_rom_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_max2165.c_max2165_read_rom_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2165_priv = type { i32, i32, i32, i32, i32, i32 }

@REG_ROM_TABLE_ADDR = common dso_local global i32 0, align 4
@REG_ROM_TABLE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tf_ntch_low_cfg = 0x%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"tf_ntch_hi_cfg = 0x%X\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"tf_balun_low_ref = 0x%X\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"tf_balun_hi_ref = 0x%X\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"bb_filter_7mhz_cfg = 0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"bb_filter_8mhz_cfg = 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2165_priv*)* @max2165_read_rom_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2165_read_rom_table(%struct.max2165_priv* %0) #0 {
  %2 = alloca %struct.max2165_priv*, align 8
  %3 = alloca [3 x i32], align 4
  %4 = alloca i32, align 4
  store %struct.max2165_priv* %0, %struct.max2165_priv** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 3
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %10 = load i32, i32* @REG_ROM_TABLE_ADDR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @max2165_write_reg(%struct.max2165_priv* %9, i32 %10, i32 %12)
  %14 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %15 = load i32, i32* @REG_ROM_TABLE_DATA, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %17
  %19 = call i32 @max2165_read_reg(%struct.max2165_priv* %14, i32 %15, i32* %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 4
  %27 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %28 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 15
  %32 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %33 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 15
  %37 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %38 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 4
  %42 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %43 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 15
  %47 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %48 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 4
  %52 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %53 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %55 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %59 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %63 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %67 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %71 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load %struct.max2165_priv*, %struct.max2165_priv** %2, align 8
  %75 = getelementptr inbounds %struct.max2165_priv, %struct.max2165_priv* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  ret i32 0
}

declare dso_local i32 @max2165_write_reg(%struct.max2165_priv*, i32, i32) #1

declare dso_local i32 @max2165_read_reg(%struct.max2165_priv*, i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

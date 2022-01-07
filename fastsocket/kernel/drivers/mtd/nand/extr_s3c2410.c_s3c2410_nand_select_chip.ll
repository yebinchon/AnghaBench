; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_s3c2410.c_s3c2410_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { %struct.s3c2410_nand_mtd* }
%struct.s3c2410_nand_mtd = type { %struct.TYPE_4__*, %struct.s3c2410_nand_info* }
%struct.TYPE_4__ = type { i32 }
%struct.s3c2410_nand_info = type { i64, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"invalid chip %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32)* @s3c2410_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2410_nand_select_chip(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2410_nand_info*, align 8
  %6 = alloca %struct.s3c2410_nand_mtd*, align 8
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 0
  %11 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  store %struct.nand_chip* %11, %struct.nand_chip** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %13, align 8
  store %struct.s3c2410_nand_mtd* %14, %struct.s3c2410_nand_mtd** %6, align 8
  %15 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %16 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %15, i32 0, i32 1
  %17 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %16, align 8
  store %struct.s3c2410_nand_info* %17, %struct.s3c2410_nand_info** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %22 = call i64 @allow_clk_stop(%struct.s3c2410_nand_info* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %26 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_enable(i32 %27)
  br label %29

29:                                               ; preds = %24, %20, %2
  %30 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %31 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @readl(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %38 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %8, align 8
  br label %92

42:                                               ; preds = %29
  %43 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %44 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %50 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %48, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %57 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %109

61:                                               ; preds = %47, %42
  %62 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %63 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = icmp ne %struct.TYPE_3__* %64, null
  br i1 %65, label %66, label %85

66:                                               ; preds = %61
  %67 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %68 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_4__*, i32)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %75 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %77, align 8
  %79 = load %struct.s3c2410_nand_mtd*, %struct.s3c2410_nand_mtd** %6, align 8
  %80 = getelementptr inbounds %struct.s3c2410_nand_mtd, %struct.s3c2410_nand_mtd* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 %78(%struct.TYPE_4__* %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %66
  br label %85

85:                                               ; preds = %84, %61
  %86 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %87 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = xor i64 %88, -1
  %90 = load i64, i64* %8, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %85, %36
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %95 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @writel(i64 %93, i32 %96)
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %102 = call i64 @allow_clk_stop(%struct.s3c2410_nand_info* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load %struct.s3c2410_nand_info*, %struct.s3c2410_nand_info** %5, align 8
  %106 = getelementptr inbounds %struct.s3c2410_nand_info, %struct.s3c2410_nand_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @clk_disable(i32 %107)
  br label %109

109:                                              ; preds = %55, %104, %100, %92
  ret void
}

declare dso_local i64 @allow_clk_stop(%struct.s3c2410_nand_info*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

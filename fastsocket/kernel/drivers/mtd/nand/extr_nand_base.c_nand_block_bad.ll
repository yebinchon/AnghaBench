; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_block_bad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_block_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32, i32, i32, i32, i32, i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.2*)*, i32 (%struct.mtd_info.3*, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque
%struct.mtd_info.3 = type opaque

@FL_READING = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i32)* @nand_block_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_block_bad(%struct.mtd_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nand_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  store %struct.nand_chip* %14, %struct.nand_chip** %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %15, %18
  %20 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %34 = load i32, i32* @FL_READING, align 4
  %35 = call i32 @nand_get_device(%struct.nand_chip* %32, %struct.mtd_info* %33, i32 %34)
  %36 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 8
  %38 = load i32 (%struct.mtd_info.3*, i32)*, i32 (%struct.mtd_info.3*, i32)** %37, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %40 = bitcast %struct.mtd_info* %39 to %struct.mtd_info.3*
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %38(%struct.mtd_info.3* %40, i32 %41)
  br label %43

43:                                               ; preds = %26, %3
  %44 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %45 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %43
  %51 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %52 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %51, i32 0, i32 6
  %53 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %52, align 8
  %54 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %55 = bitcast %struct.mtd_info* %54 to %struct.mtd_info.1*
  %56 = load i32, i32* @NAND_CMD_READOOB, align 4
  %57 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 254
  %61 = load i32, i32* %7, align 4
  %62 = call i32 %53(%struct.mtd_info.1* %55, i32 %56, i32 %60, i32 %61)
  %63 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 7
  %65 = load i32 (%struct.mtd_info.2*)*, i32 (%struct.mtd_info.2*)** %64, align 8
  %66 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %67 = bitcast %struct.mtd_info* %66 to %struct.mtd_info.2*
  %68 = call i32 %65(%struct.mtd_info.2* %67)
  %69 = call i32 @cpu_to_le16(i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %50
  %76 = load i32, i32* %11, align 4
  %77 = ashr i32 %76, 8
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %50
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 255
  %81 = icmp ne i32 %80, 255
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %78
  br label %105

84:                                               ; preds = %43
  %85 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %86 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %85, i32 0, i32 6
  %87 = load i32 (%struct.mtd_info.1*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, i32, i32, i32)** %86, align 8
  %88 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %89 = bitcast %struct.mtd_info* %88 to %struct.mtd_info.1*
  %90 = load i32, i32* @NAND_CMD_READOOB, align 4
  %91 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 %87(%struct.mtd_info.1* %89, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.nand_chip*, %struct.nand_chip** %10, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 5
  %98 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %97, align 8
  %99 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %100 = bitcast %struct.mtd_info* %99 to %struct.mtd_info.0*
  %101 = call i32 %98(%struct.mtd_info.0* %100)
  %102 = icmp ne i32 %101, 255
  br i1 %102, label %103, label %104

103:                                              ; preds = %84
  store i32 1, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %110 = call i32 @nand_release_device(%struct.mtd_info* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @nand_get_device(%struct.nand_chip*, %struct.mtd_info*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @nand_release_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

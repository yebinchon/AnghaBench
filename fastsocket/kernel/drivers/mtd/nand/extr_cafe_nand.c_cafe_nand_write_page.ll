; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_write_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_nand_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32, i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.1*, %struct.nand_chip*, i32, i32, i32)*, i64 (%struct.mtd_info.2*, i32*, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)*, %struct.TYPE_2__ }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque
%struct.mtd_info.3 = type opaque
%struct.TYPE_2__ = type { i32 (%struct.mtd_info.4*, %struct.nand_chip.5*, i32*)*, i32 (%struct.mtd_info.6*, %struct.nand_chip.7*, i32*)* }
%struct.mtd_info.4 = type opaque
%struct.nand_chip.5 = type opaque
%struct.mtd_info.6 = type opaque
%struct.nand_chip.7 = type opaque

@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NAND_CACHEPRG = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@NAND_STATUS_FAIL = common dso_local global i32 0, align 4
@FL_WRITING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NAND_CMD_CACHEDPROG = common dso_local global i32 0, align 4
@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*, i32*, i32, i32, i32)* @cafe_nand_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_nand_write_page(%struct.mtd_info* %0, %struct.nand_chip* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_info*, align 8
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %8, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 4
  %17 = load i32 (%struct.mtd_info.3*, i32, i32, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)** %16, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %19 = bitcast %struct.mtd_info* %18 to %struct.mtd_info.3*
  %20 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %21 = load i32, i32* %11, align 4
  %22 = call i32 %17(%struct.mtd_info.3* %19, i32 %20, i32 0, i32 %21)
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %6
  %27 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %28 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32 (%struct.mtd_info.6*, %struct.nand_chip.7*, i32*)*, i32 (%struct.mtd_info.6*, %struct.nand_chip.7*, i32*)** %29, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %32 = bitcast %struct.mtd_info* %31 to %struct.mtd_info.6*
  %33 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %34 = bitcast %struct.nand_chip* %33 to %struct.nand_chip.7*
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 %30(%struct.mtd_info.6* %32, %struct.nand_chip.7* %34, i32* %35)
  br label %48

37:                                               ; preds = %6
  %38 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mtd_info.4*, %struct.nand_chip.5*, i32*)*, i32 (%struct.mtd_info.4*, %struct.nand_chip.5*, i32*)** %40, align 8
  %42 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %43 = bitcast %struct.mtd_info* %42 to %struct.mtd_info.4*
  %44 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %45 = bitcast %struct.nand_chip* %44 to %struct.nand_chip.5*
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 %41(%struct.mtd_info.4* %43, %struct.nand_chip.5* %45, i32* %46)
  br label %48

48:                                               ; preds = %37, %26
  store i32 0, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NAND_CACHEPRG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %102, label %58

58:                                               ; preds = %51, %48
  %59 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %59, i32 0, i32 4
  %61 = load i32 (%struct.mtd_info.3*, i32, i32, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)** %60, align 8
  %62 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %63 = bitcast %struct.mtd_info* %62 to %struct.mtd_info.3*
  %64 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %65 = call i32 %61(%struct.mtd_info.3* %63, i32 %64, i32 -1, i32 -1)
  %66 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %67 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %66, i32 0, i32 1
  %68 = load i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.0*, %struct.nand_chip*)** %67, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %70 = bitcast %struct.mtd_info* %69 to %struct.mtd_info.0*
  %71 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %72 = call i32 %68(%struct.mtd_info.0* %70, %struct.nand_chip* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %58
  %78 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %79 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %78, i32 0, i32 2
  %80 = load i32 (%struct.mtd_info.1*, %struct.nand_chip*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, %struct.nand_chip*, i32, i32, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.mtd_info.1*, %struct.nand_chip*, i32, i32, i32)* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %83, i32 0, i32 2
  %85 = load i32 (%struct.mtd_info.1*, %struct.nand_chip*, i32, i32, i32)*, i32 (%struct.mtd_info.1*, %struct.nand_chip*, i32, i32, i32)** %84, align 8
  %86 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %87 = bitcast %struct.mtd_info* %86 to %struct.mtd_info.1*
  %88 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %89 = load i32, i32* @FL_WRITING, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 %85(%struct.mtd_info.1* %87, %struct.nand_chip* %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %82, %77, %58
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @NAND_STATUS_FAIL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %7, align 4
  br label %118

101:                                              ; preds = %93
  br label %117

102:                                              ; preds = %51
  %103 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %104 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %103, i32 0, i32 4
  %105 = load i32 (%struct.mtd_info.3*, i32, i32, i32)*, i32 (%struct.mtd_info.3*, i32, i32, i32)** %104, align 8
  %106 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %107 = bitcast %struct.mtd_info* %106 to %struct.mtd_info.3*
  %108 = load i32, i32* @NAND_CMD_CACHEDPROG, align 4
  %109 = call i32 %105(%struct.mtd_info.3* %107, i32 %108, i32 -1, i32 -1)
  %110 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 1
  %112 = load i32 (%struct.mtd_info.0*, %struct.nand_chip*)*, i32 (%struct.mtd_info.0*, %struct.nand_chip*)** %111, align 8
  %113 = load %struct.mtd_info*, %struct.mtd_info** %8, align 8
  %114 = bitcast %struct.mtd_info* %113 to %struct.mtd_info.0*
  %115 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %116 = call i32 %112(%struct.mtd_info.0* %114, %struct.nand_chip* %115)
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %102, %101
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %98
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

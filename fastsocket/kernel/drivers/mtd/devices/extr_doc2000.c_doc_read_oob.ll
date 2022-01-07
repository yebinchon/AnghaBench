; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_doc2000.c_doc_read_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_doc2000.c_doc_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.DiskOnChip* }
%struct.DiskOnChip = type { i64, i64, i64, i32, i64, %struct.Nand* }
%struct.Nand = type { i64, i64 }
%struct.mtd_oob_ops = type { i64, i64, i64, i64, i32* }

@MTD_OOB_PLACE = common dso_local global i64 0, align 8
@NAND_CMD_READOOB = common dso_local global i32 0, align 4
@CDSN_CTRL_WP = common dso_local global i32 0, align 4
@ADDR_COLUMN_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @doc_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doc_read_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mtd_oob_ops*, align 8
  %7 = alloca %struct.DiskOnChip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.Nand*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %6, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 0
  %15 = load %struct.DiskOnChip*, %struct.DiskOnChip** %14, align 8
  store %struct.DiskOnChip* %15, %struct.DiskOnChip** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %6, align 8
  %17 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %6, align 8
  %20 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %6, align 8
  %23 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MTD_OOB_PLACE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %6, align 8
  %30 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %35 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %34, i32 0, i32 3
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %38 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %37, i32 0, i32 5
  %39 = load %struct.Nand*, %struct.Nand** %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %42 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = lshr i64 %40, %43
  %45 = getelementptr inbounds %struct.Nand, %struct.Nand* %39, i64 %44
  store %struct.Nand* %45, %struct.Nand** %10, align 8
  %46 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %47 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.Nand*, %struct.Nand** %10, align 8
  %50 = getelementptr inbounds %struct.Nand, %struct.Nand* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %3
  %54 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %55 = load %struct.Nand*, %struct.Nand** %10, align 8
  %56 = getelementptr inbounds %struct.Nand, %struct.Nand* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @DoC_SelectFloor(%struct.DiskOnChip* %54, i64 %57)
  %59 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %60 = load %struct.Nand*, %struct.Nand** %10, align 8
  %61 = getelementptr inbounds %struct.Nand, %struct.Nand* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @DoC_SelectChip(%struct.DiskOnChip* %59, i64 %62)
  br label %79

64:                                               ; preds = %3
  %65 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %66 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.Nand*, %struct.Nand** %10, align 8
  %69 = getelementptr inbounds %struct.Nand, %struct.Nand* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %74 = load %struct.Nand*, %struct.Nand** %10, align 8
  %75 = getelementptr inbounds %struct.Nand, %struct.Nand* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @DoC_SelectChip(%struct.DiskOnChip* %73, i64 %76)
  br label %78

78:                                               ; preds = %72, %64
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.Nand*, %struct.Nand** %10, align 8
  %81 = getelementptr inbounds %struct.Nand, %struct.Nand* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %84 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.Nand*, %struct.Nand** %10, align 8
  %86 = getelementptr inbounds %struct.Nand, %struct.Nand* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %89 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %91 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %79
  %95 = load i64, i64* %5, align 8
  %96 = and i64 %95, 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, 256
  store i64 %100, i64* %5, align 8
  br label %104

101:                                              ; preds = %94
  %102 = load i64, i64* %5, align 8
  %103 = sub i64 %102, 8
  store i64 %103, i64* %5, align 8
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %79
  %106 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %107 = load i32, i32* @NAND_CMD_READOOB, align 4
  %108 = load i32, i32* @CDSN_CTRL_WP, align 4
  %109 = call i32 @DoC_Command(%struct.DiskOnChip* %106, i32 %107, i32 %108)
  %110 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %111 = load i32, i32* @ADDR_COLUMN_PAGE, align 4
  %112 = load i64, i64* %5, align 8
  %113 = load i32, i32* @CDSN_CTRL_WP, align 4
  %114 = call i32 @DoC_Address(%struct.DiskOnChip* %110, i32 %111, i64 %112, i32 %113, i32 0)
  %115 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %116 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %149

119:                                              ; preds = %105
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %120, %121
  %123 = load i64, i64* %5, align 8
  %124 = or i64 %123, 7
  %125 = add i64 %124, 1
  %126 = icmp ugt i64 %122, %125
  br i1 %126, label %127, label %149

127:                                              ; preds = %119
  %128 = load i64, i64* %5, align 8
  %129 = or i64 %128, 7
  %130 = add i64 %129, 1
  %131 = load i64, i64* %5, align 8
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %8, align 4
  %134 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 @DoC_ReadBuf(%struct.DiskOnChip* %134, i32* %135, i64 %137)
  %139 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %140 = load i32, i32* @NAND_CMD_READOOB, align 4
  %141 = load i32, i32* @CDSN_CTRL_WP, align 4
  %142 = call i32 @DoC_Command(%struct.DiskOnChip* %139, i32 %140, i32 %141)
  %143 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %144 = load i32, i32* @ADDR_COLUMN_PAGE, align 4
  %145 = load i64, i64* %5, align 8
  %146 = and i64 %145, -512
  %147 = load i32, i32* @CDSN_CTRL_WP, align 4
  %148 = call i32 @DoC_Address(%struct.DiskOnChip* %143, i32 %144, i64 %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %127, %119, %105
  %150 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i64, i64* %12, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 %155, %157
  %159 = call i32 @DoC_ReadBuf(%struct.DiskOnChip* %150, i32* %154, i64 %158)
  %160 = load i64, i64* %12, align 8
  %161 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %6, align 8
  %162 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  %163 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %164 = call i32 @DoC_WaitReady(%struct.DiskOnChip* %163)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.DiskOnChip*, %struct.DiskOnChip** %7, align 8
  %166 = getelementptr inbounds %struct.DiskOnChip, %struct.DiskOnChip* %165, i32 0, i32 3
  %167 = call i32 @mutex_unlock(i32* %166)
  %168 = load i32, i32* %9, align 4
  ret i32 %168
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DoC_SelectFloor(%struct.DiskOnChip*, i64) #1

declare dso_local i32 @DoC_SelectChip(%struct.DiskOnChip*, i64) #1

declare dso_local i32 @DoC_Command(%struct.DiskOnChip*, i32, i32) #1

declare dso_local i32 @DoC_Address(%struct.DiskOnChip*, i32, i64, i32, i32) #1

declare dso_local i32 @DoC_ReadBuf(%struct.DiskOnChip*, i32*, i64) #1

declare dso_local i32 @DoC_WaitReady(%struct.DiskOnChip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

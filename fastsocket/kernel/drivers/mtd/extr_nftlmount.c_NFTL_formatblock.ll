; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_NFTL_formatblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_nftlmount.c_NFTL_formatblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { i32, %struct.TYPE_2__, %struct.erase_info.0 }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 (%struct.mtd_info*, i32)*, i32 (%struct.mtd_info*, %struct.erase_info*)* }
%struct.erase_info = type opaque
%struct.erase_info.0 = type { i32, i32, i64, %struct.mtd_info* }
%struct.nftl_uci1 = type { i32, i32, i32 }

@SECTORSIZE = common dso_local global i64 0, align 8
@ERASE_MARK = common dso_local global i32 0, align 4
@MTD_ERASE_FAILED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Error while formatting block %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NFTL_formatblock(%struct.NFTLrecord* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.NFTLrecord*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nftl_uci1, align 4
  %10 = alloca %struct.erase_info.0*, align 8
  %11 = alloca %struct.mtd_info*, align 8
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %13 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %12, i32 0, i32 2
  store %struct.erase_info.0* %13, %struct.erase_info.0** %10, align 8
  %14 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %15 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  store %struct.mtd_info* %17, %struct.mtd_info** %11, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %21 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @SECTORSIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = add nsw i64 %26, 8
  %28 = bitcast %struct.nftl_uci1* %9 to i8*
  %29 = call i64 @nftl_read_oob(%struct.mtd_info* %18, i64 %27, i32 8, i64* %6, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %43

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %34, %36
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ERASE_MARK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* @ERASE_MARK, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @ERASE_MARK, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = call i32 @cpu_to_le32(i32 0)
  %53 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 2
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %32
  %55 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %56 = call i32 @memset(%struct.erase_info.0* %55, i32 0, i32 24)
  %57 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %58 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.mtd_info*, %struct.mtd_info** %59, align 8
  %61 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %62 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %61, i32 0, i32 3
  store %struct.mtd_info* %60, %struct.mtd_info** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %65 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %69 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %71 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %74 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 1
  %77 = load i32 (%struct.mtd_info*, %struct.erase_info*)*, i32 (%struct.mtd_info*, %struct.erase_info*)** %76, align 8
  %78 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %79 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %80 = bitcast %struct.erase_info.0* %79 to %struct.erase_info*
  %81 = call i32 %77(%struct.mtd_info* %78, %struct.erase_info* %80)
  %82 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %83 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MTD_ERASE_FAILED, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %54
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %131

90:                                               ; preds = %54
  %91 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 1, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %90
  %101 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %102 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %103 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %106 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @check_free_sectors(%struct.NFTLrecord* %101, i32 %104, i32 %107, i32 1)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %131

111:                                              ; preds = %100
  %112 = load i32, i32* %7, align 4
  %113 = call i8* @le32_to_cpu(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = getelementptr inbounds %struct.nftl_uci1, %struct.nftl_uci1* %9, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  %116 = load %struct.mtd_info*, %struct.mtd_info** %11, align 8
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %119 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = mul nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @SECTORSIZE, align 8
  %124 = add nsw i64 %122, %123
  %125 = add nsw i64 %124, 8
  %126 = bitcast %struct.nftl_uci1* %9 to i8*
  %127 = call i64 @nftl_write_oob(%struct.mtd_info* %116, i64 %125, i32 8, i64* %6, i8* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %111
  br label %131

130:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %146

131:                                              ; preds = %129, %110, %87
  %132 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %133 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load %struct.mtd_info*, %struct.mtd_info** %134, align 8
  %136 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %135, i32 0, i32 0
  %137 = load i32 (%struct.mtd_info*, i32)*, i32 (%struct.mtd_info*, i32)** %136, align 8
  %138 = load %struct.NFTLrecord*, %struct.NFTLrecord** %4, align 8
  %139 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load %struct.mtd_info*, %struct.mtd_info** %140, align 8
  %142 = load %struct.erase_info.0*, %struct.erase_info.0** %10, align 8
  %143 = getelementptr inbounds %struct.erase_info.0, %struct.erase_info.0* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %137(%struct.mtd_info* %141, i32 %144)
  store i32 -1, i32* %3, align 4
  br label %146

146:                                              ; preds = %131, %130
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i64, i32, i64*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(%struct.erase_info.0*, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @check_free_sectors(%struct.NFTLrecord*, i32, i32, i32) #1

declare dso_local i64 @nftl_write_oob(%struct.mtd_info*, i64, i32, i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

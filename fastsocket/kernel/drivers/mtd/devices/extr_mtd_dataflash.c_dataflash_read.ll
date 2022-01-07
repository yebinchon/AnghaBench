; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_mtd_dataflash.c_dataflash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, i64 }
%struct.dataflash = type { i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32*, i32 }
%struct.spi_message = type { i32 }

@MTD_DEBUG_LEVEL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: read 0x%x..0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MTD_DEBUG_LEVEL3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"READ: (%x) %x %x %x\0A\00", align 1
@OP_READ_CONTINUOUS = common dso_local global i32 0, align 4
@MTD_DEBUG_LEVEL1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: read %x..%x --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @dataflash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataflash_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dataflash*, align 8
  %13 = alloca [2 x %struct.spi_transfer], align 16
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dataflash*
  store %struct.dataflash* %21, %struct.dataflash** %12, align 8
  %22 = bitcast [2 x %struct.spi_transfer]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 64, i1 false)
  %23 = load i32, i32* @MTD_DEBUG_LEVEL2, align 4
  %24 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %25 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_name(i32* %27)
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, i8*, i32, i32, i32, ...) @DEBUG(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %34)
  %36 = load i64*, i64** %10, align 8
  store i64 0, i64* %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %153

40:                                               ; preds = %5
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %153

51:                                               ; preds = %40
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %55 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = udiv i32 %53, %56
  %58 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %59 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %57, %60
  %62 = load i64, i64* %8, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %65 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = urem i32 %63, %66
  %68 = add i32 %61, %67
  store i32 %68, i32* %15, align 4
  %69 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %70 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %16, align 8
  %72 = load i32, i32* @MTD_DEBUG_LEVEL3, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i32, i8*, i32, i32, i32, ...) @DEBUG(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i32 %81, i32 %84)
  %86 = call i32 @spi_message_init(%struct.spi_message* %14)
  %87 = load i32*, i32** %16, align 8
  %88 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %89 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %88, i32 0, i32 0
  store i32* %87, i32** %89, align 16
  %90 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %91 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 1
  store i32 8, i32* %91, align 8
  %92 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %93 = call i32 @spi_message_add_tail(%struct.spi_transfer* %92, %struct.spi_message* %14)
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i32 0, i32 2
  store i32* %94, i32** %96, align 16
  %97 = load i64, i64* %9, align 8
  %98 = trunc i64 %97 to i32
  %99 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %100 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %102 = call i32 @spi_message_add_tail(%struct.spi_transfer* %101, %struct.spi_message* %14)
  %103 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %104 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %103, i32 0, i32 4
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load i32, i32* @OP_READ_CONTINUOUS, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %15, align 4
  %110 = lshr i32 %109, 16
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %15, align 4
  %114 = lshr i32 %113, 8
  %115 = load i32*, i32** %16, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %15, align 4
  %118 = lshr i32 %117, 0
  %119 = load i32*, i32** %16, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %122 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = call i32 @spi_sync(%struct.TYPE_2__* %123, %struct.spi_message* %14)
  store i32 %124, i32* %17, align 4
  %125 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %126 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %125, i32 0, i32 4
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %17, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %51
  %131 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %14, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 8
  %134 = sext i32 %133 to i64
  %135 = load i64*, i64** %10, align 8
  store i64 %134, i64* %135, align 8
  store i32 0, i32* %17, align 4
  br label %151

136:                                              ; preds = %51
  %137 = load i32, i32* @MTD_DEBUG_LEVEL1, align 4
  %138 = load %struct.dataflash*, %struct.dataflash** %12, align 8
  %139 = getelementptr inbounds %struct.dataflash, %struct.dataflash* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @dev_name(i32* %141)
  %143 = load i64, i64* %8, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = add i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* %17, align 4
  %150 = call i32 (i32, i8*, i32, i32, i32, ...) @DEBUG(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %142, i32 %144, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %136, %130
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %151, %48, %39
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32, ...) #2

declare dso_local i32 @dev_name(i32*) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

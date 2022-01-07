; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_read_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_cafe_nand.c_cafe_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.cafe_priv* }
%struct.cafe_priv = type { i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@usedma = common dso_local global i64 0, align 8
@CAFE_NAND_READ_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Copy 0x%x bytes from position 0x%x in read buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @cafe_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cafe_read_buf(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cafe_priv*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 0
  %10 = load %struct.cafe_priv*, %struct.cafe_priv** %9, align 8
  store %struct.cafe_priv* %10, %struct.cafe_priv** %7, align 8
  %11 = load i64, i64* @usedma, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %16 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %19 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @memcpy(i32* %14, i64 %21, i32 %22)
  br label %37

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %27 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAFE_NAND_READ_DATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %32 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memcpy_fromio(i32* %25, i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %24, %13
  %38 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %39 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %44 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @cafe_dev_dbg(i32* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %45)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.cafe_priv*, %struct.cafe_priv** %7, align 8
  %50 = getelementptr inbounds %struct.cafe_priv, %struct.cafe_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i32) #1

declare dso_local i32 @cafe_dev_dbg(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

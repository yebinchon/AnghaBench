; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_inftlmount.c_check_free_sectors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_inftlmount.c_check_free_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.INFTLrecord = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32, i64 (%struct.mtd_info*, i32, i32, i64*, i32*)* }

@SECTORSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.INFTLrecord*, i32, i32, i32)* @check_free_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_free_sectors(%struct.INFTLrecord* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.INFTLrecord*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtd_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.INFTLrecord* %0, %struct.INFTLrecord** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @SECTORSIZE, align 4
  %17 = load %struct.INFTLrecord*, %struct.INFTLrecord** %6, align 8
  %18 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mtd_info*, %struct.mtd_info** %19, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %16, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.INFTLrecord*, %struct.INFTLrecord** %6, align 8
  %28 = getelementptr inbounds %struct.INFTLrecord, %struct.INFTLrecord* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.mtd_info*, %struct.mtd_info** %29, align 8
  store %struct.mtd_info* %30, %struct.mtd_info** %12, align 8
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %80, %4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %31
  %36 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 1
  %38 = load i64 (%struct.mtd_info*, i32, i32, i64*, i32*)*, i64 (%struct.mtd_info*, i32, i32, i64*, i32*)** %37, align 8
  %39 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SECTORSIZE, align 4
  %42 = call i64 %38(%struct.mtd_info* %39, i32 %40, i32 %41, i64* %13, i32* %26)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %85

45:                                               ; preds = %35
  %46 = load i32, i32* @SECTORSIZE, align 4
  %47 = call i64 @memcmpb(i32* %26, i32 255, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %85

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SECTORSIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %26, i64 %60
  %62 = call i64 @inftl_read_oob(%struct.mtd_info* %54, i32 %55, i32 %58, i64* %13, i32* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %85

65:                                               ; preds = %53
  %66 = load i32, i32* @SECTORSIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %26, i64 %67
  %69 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @memcmpb(i32* %68, i32 255, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %85

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %50
  %77 = load i32, i32* @SECTORSIZE, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @SECTORSIZE, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %14, align 4
  br label %31

84:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %85

85:                                               ; preds = %84, %74, %64, %49, %44
  %86 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmpb(i32*, i32, i32) #2

declare dso_local i64 @inftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

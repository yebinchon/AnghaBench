; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.alauda* }
%struct.alauda = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@__const.alauda_write.oob = private unnamed_addr constant [16 x i8] c"hello\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @alauda_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.alauda*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [16 x i8], align 16
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 1
  %18 = load %struct.alauda*, %struct.alauda** %17, align 8
  store %struct.alauda* %18, %struct.alauda** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.alauda*, %struct.alauda** %12, align 8
  %21 = getelementptr inbounds %struct.alauda, %struct.alauda* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.alauda*, %struct.alauda** %12, align 8
  %28 = getelementptr inbounds %struct.alauda, %struct.alauda* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = and i64 %26, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %103

35:                                               ; preds = %25
  %36 = load i64, i64* %9, align 8
  %37 = load i64*, i64** %10, align 8
  store i64 %36, i64* %37, align 8
  br label %38

38:                                               ; preds = %86, %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.alauda*, %struct.alauda** %12, align 8
  %44 = getelementptr inbounds %struct.alauda, %struct.alauda* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = ashr i64 %42, %47
  %49 = load %struct.alauda*, %struct.alauda** %12, align 8
  %50 = getelementptr inbounds %struct.alauda, %struct.alauda* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %48, %51
  store i64 %52, i64* %14, align 8
  %53 = bitcast [16 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %53, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.alauda_write.oob, i32 0, i32 0), i64 16, i1 false)
  %54 = load i64, i64* %14, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @alauda_isbad(%struct.mtd_info* %57, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %103

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 13
  %70 = call i32 @nand_calculate_ecc(%struct.mtd_info* %67, i32* %68, i8* %69)
  %71 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 256
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 8
  %75 = call i32 @nand_calculate_ecc(%struct.mtd_info* %71, i32* %73, i8* %74)
  %76 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %81 = call i32 @alauda_write_page(%struct.mtd_info* %76, i64 %77, i8* %79, i8* %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %66
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %6, align 4
  br label %103

86:                                               ; preds = %66
  %87 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %11, align 8
  %92 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %8, align 8
  %97 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %38

102:                                              ; preds = %38
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %84, %62, %32
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @alauda_isbad(%struct.mtd_info*, i64) #2

declare dso_local i32 @nand_calculate_ecc(%struct.mtd_info*, i32*, i8*) #2

declare dso_local i32 @alauda_write_page(%struct.mtd_info*, i64, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

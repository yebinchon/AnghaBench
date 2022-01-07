; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdpart.c_part_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mtd_part = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i64, i64, i64*, i32*)*, %struct.mtd_ecc_stats }
%struct.mtd_ecc_stats = type { i64, i64 }

@EUCLEAN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @part_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @part_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mtd_part*, align 8
  %12 = alloca %struct.mtd_ecc_stats, align 8
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %15 = call %struct.mtd_part* @PART(%struct.mtd_info* %14)
  store %struct.mtd_part* %15, %struct.mtd_part** %11, align 8
  %16 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %17 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = bitcast %struct.mtd_ecc_stats* %12 to i8*
  %21 = bitcast %struct.mtd_ecc_stats* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i64 0, i64* %8, align 8
  br label %43

28:                                               ; preds = %5
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ugt i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %36, %28
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %45 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_4__*, i64, i64, i64*, i32*)*, i32 (%struct.TYPE_4__*, i64, i64, i64*, i32*)** %47, align 8
  %49 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %50 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %54 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i64, i64* %8, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 %48(%struct.TYPE_4__* %51, i64 %56, i64 %57, i64* %58, i32* %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %109

64:                                               ; preds = %43
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @EUCLEAN, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %71 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %12, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %75, %77
  %79 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %78
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  br label %86

86:                                               ; preds = %69, %64
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @EBADMSG, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %86
  %92 = load %struct.mtd_part*, %struct.mtd_part** %11, align 8
  %93 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %12, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %97, %99
  %101 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %102 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %100
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 8
  br label %108

108:                                              ; preds = %91, %86
  br label %109

109:                                              ; preds = %108, %43
  %110 = load i32, i32* %13, align 4
  ret i32 %110
}

declare dso_local %struct.mtd_part* @PART(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

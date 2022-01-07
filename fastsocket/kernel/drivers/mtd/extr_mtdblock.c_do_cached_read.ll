; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_do_cached_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdblock.c_do_cached_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdblk_dev = type { i32, i64, i64, i64, %struct.mtd_info* }
%struct.mtd_info = type { i32 (%struct.mtd_info*, i64, i32, i64*, i8*)*, i32 }

@MTD_DEBUG_LEVEL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mtdblock: read on \22%s\22 at 0x%lx, size 0x%x\0A\00", align 1
@STATE_EMPTY = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdblk_dev*, i64, i32, i8*)* @do_cached_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cached_read(%struct.mtdblk_dev* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtdblk_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtdblk_dev* %0, %struct.mtdblk_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %18 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %17, i32 0, i32 4
  %19 = load %struct.mtd_info*, %struct.mtd_info** %18, align 8
  store %struct.mtd_info* %19, %struct.mtd_info** %10, align 8
  %20 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %21 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @MTD_DEBUG_LEVEL2, align 4
  %24 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DEBUG(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i32 (%struct.mtd_info*, i64, i32, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i32, i64*, i8*)** %34, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 %35(%struct.mtd_info* %36, i64 %37, i32 %38, i64* %12, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %122

41:                                               ; preds = %4
  br label %42

42:                                               ; preds = %109, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %121

45:                                               ; preds = %42
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = udiv i64 %46, %48
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %49, %51
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %15, align 4
  %59 = sub i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %63, %45
  %66 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %67 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @STATE_EMPTY, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %73 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load i8*, i8** %9, align 8
  %79 = load %struct.mtdblk_dev*, %struct.mtdblk_dev** %6, align 8
  %80 = getelementptr inbounds %struct.mtdblk_dev, %struct.mtdblk_dev* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @memcpy(i8* %78, i64 %84, i32 %85)
  br label %109

87:                                               ; preds = %71, %65
  %88 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %89 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %88, i32 0, i32 0
  %90 = load i32 (%struct.mtd_info*, i64, i32, i64*, i8*)*, i32 (%struct.mtd_info*, i64, i32, i64*, i8*)** %89, align 8
  %91 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i32, i32* %16, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 %90(%struct.mtd_info* %91, i64 %92, i32 %93, i64* %12, i8* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %5, align 4
  br label %122

100:                                              ; preds = %87
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* %16, align 4
  %103 = zext i32 %102 to i64
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %122

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %77
  %110 = load i32, i32* %16, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %9, align 8
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %7, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sub i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %42

121:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %105, %98, %32
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @DEBUG(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

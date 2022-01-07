; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_init_units.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_init_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i32*, %struct.TYPE_2__, i64, i64, i64, i32, i32*, %struct.gendisk* }
%struct.TYPE_2__ = type { i32, i64, i64, %struct.pcd_unit*, i32*, i32* }
%struct.gendisk = type { i32, i32*, i32, i32 }

@pcd_drive_count = common dso_local global i64 0, align 8
@pcd = common dso_local global %struct.pcd_unit* null, align 8
@PCD_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i64*** null, align 8
@D_SLV = common dso_local global i64 0, align 8
@D_PRT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@name = common dso_local global i8* null, align 8
@pcd_dops = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@pcd_bdops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_init_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_init_units() #0 {
  %1 = alloca %struct.pcd_unit*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.gendisk*, align 8
  store i64 0, i64* @pcd_drive_count, align 8
  store i32 0, i32* %2, align 4
  %4 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %4, %struct.pcd_unit** %1, align 8
  br label %5

5:                                                ; preds = %97, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @PCD_UNITS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %102

9:                                                ; preds = %5
  %10 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %10, %struct.gendisk** %3, align 8
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = icmp ne %struct.gendisk* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %97

14:                                               ; preds = %9
  %15 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %16 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %17 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %16, i32 0, i32 8
  store %struct.gendisk* %15, %struct.gendisk** %17, align 8
  %18 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %19 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %18, i32 0, i32 6
  %20 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %21 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %20, i32 0, i32 7
  store i32* %19, i32** %21, align 8
  %22 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %23 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %25 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %27 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i64***, i64**** @drives, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64**, i64*** %28, i64 %30
  %32 = load i64**, i64*** %31, align 8
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @D_SLV, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %38 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i64***, i64**** @drives, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64**, i64*** %39, i64 %41
  %43 = load i64**, i64*** %42, align 8
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @D_PRT, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %14
  %50 = load i64, i64* @pcd_drive_count, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @pcd_drive_count, align 8
  br label %52

52:                                               ; preds = %49, %14
  %53 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %54 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %59 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %61 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** @name, align 8
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @snprintf(i32* %62, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %67 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  store i32* @pcd_dops, i32** %68, align 8
  %69 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %70 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %71 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  store %struct.pcd_unit* %69, %struct.pcd_unit** %72, align 8
  %73 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %74 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %77 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %80 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @major, align 4
  %83 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %84 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %2, align 4
  %86 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %87 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %89 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %92 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @strcpy(i32 %90, i32* %93)
  %95 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %96 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %95, i32 0, i32 1
  store i32* @pcd_bdops, i32** %96, align 8
  br label %97

97:                                               ; preds = %52, %13
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  %100 = load %struct.pcd_unit*, %struct.pcd_unit** %1, align 8
  %101 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %100, i32 1
  store %struct.pcd_unit* %101, %struct.pcd_unit** %1, align 8
  br label %5

102:                                              ; preds = %5
  ret void
}

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

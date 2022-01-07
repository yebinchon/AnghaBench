; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_probe_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_probe_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@__const.pcd_probe_capabilities.cmd = private unnamed_addr constant [12 x i8] c"Z\08*\00\00\00\00\12\00\00\00\00", align 1
@pcd = common dso_local global %struct.pcd_unit* null, align 8
@PCD_UNITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mode sense capabilities\00", align 1
@CDC_CD_R = common dso_local global i32 0, align 4
@CDC_CD_RW = common dso_local global i32 0, align 4
@CDC_PLAY_AUDIO = common dso_local global i32 0, align 4
@CDC_LOCK = common dso_local global i32 0, align 4
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4
@CDC_CLOSE_TRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcd_probe_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcd_probe_capabilities() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 16
  %4 = alloca [12 x i8], align 1
  %5 = alloca %struct.pcd_unit*, align 8
  %6 = bitcast [12 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.pcd_probe_capabilities.cmd, i32 0, i32 0), i64 12, i1 false)
  store i32 0, i32* %1, align 4
  %7 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %7, %struct.pcd_unit** %5, align 8
  br label %8

8:                                                ; preds = %105, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @PCD_UNITS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %110

12:                                               ; preds = %8
  %13 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %14 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %105

18:                                               ; preds = %12
  %19 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %20 = getelementptr inbounds [12 x i8], [12 x i8]* %4, i64 0, i64 0
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %22 = call i32 @pcd_atapi(%struct.pcd_unit* %19, i8* %20, i32 18, i8* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %105

26:                                               ; preds = %18
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 11
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* @CDC_CD_R, align 4
  %34 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %35 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 11
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @CDC_CD_RW, align 4
  %47 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %48 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %46
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %39
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 12
  %54 = load i8, i8* %53, align 4
  %55 = sext i8 %54 to i32
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @CDC_PLAY_AUDIO, align 4
  %60 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %61 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %52
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 14
  %67 = load i8, i8* %66, align 2
  %68 = sext i8 %67 to i32
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* @CDC_LOCK, align 4
  %73 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %74 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %65
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 14
  %80 = load i8, i8* %79, align 2
  %81 = sext i8 %80 to i32
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %86 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %87 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %84, %78
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 14
  %93 = load i8, i8* %92, align 2
  %94 = sext i8 %93 to i32
  %95 = ashr i32 %94, 6
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* @CDC_CLOSE_TRAY, align 4
  %99 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %100 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %97, %91
  br label %105

105:                                              ; preds = %104, %25, %17
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  %108 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %109 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %108, i32 1
  store %struct.pcd_unit* %109, %struct.pcd_unit** %5, align 8
  br label %8

110:                                              ; preds = %8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pcd_atapi(%struct.pcd_unit*, i8*, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

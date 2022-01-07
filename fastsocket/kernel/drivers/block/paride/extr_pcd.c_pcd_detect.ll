; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%s: %s version %s, major %d, nice %d\0A\00", align 1
@name = common dso_local global i32 0, align 4
@PCD_VERSION = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@nice = common dso_local global i32 0, align 4
@pcd_drive_count = common dso_local global i64 0, align 8
@pcd = common dso_local global %struct.pcd_unit* null, align 8
@pcd_buffer = common dso_local global i32 0, align 4
@PI_PCD = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@PCD_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@D_PRT = common dso_local global i64 0, align 8
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@D_SLV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: No CD-ROM drive found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcd_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [18 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcd_unit*, align 8
  %6 = alloca i32*, align 8
  %7 = load i32, i32* @name, align 4
  %8 = load i32, i32* @name, align 4
  %9 = load i32, i32* @PCD_VERSION, align 4
  %10 = load i32, i32* @major, align 4
  %11 = load i32, i32* @nice, align 4
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  %13 = load i64, i64* @pcd_drive_count, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %0
  %16 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %16, %struct.pcd_unit** %5, align 8
  %17 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %18 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @pcd_buffer, align 4
  %21 = load i32, i32* @PI_PCD, align 4
  %22 = load i32, i32* @verbose, align 4
  %23 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %24 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pi_init(i32 %19, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %20, i32 %21, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %15
  %29 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %30 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0
  %31 = call i32 @pcd_probe(%struct.pcd_unit* %29, i32 -1, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %35 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %40 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %33, %28
  %44 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %45 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pi_release(i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %15
  br label %133

50:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  %51 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %51, %struct.pcd_unit** %5, align 8
  br label %52

52:                                               ; preds = %127, %50
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @PCD_UNITS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %132

56:                                               ; preds = %52
  %57 = load i32***, i32**** @drives, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32**, i32*** %57, i64 %59
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* @D_PRT, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %127

69:                                               ; preds = %56
  %70 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %71 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* @D_PRT, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* @D_MOD, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* @D_UNI, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i64, i64* @D_PRO, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* @D_DLY, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @pcd_buffer, align 4
  %94 = load i32, i32* @PI_PCD, align 4
  %95 = load i32, i32* @verbose, align 4
  %96 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %97 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @pi_init(i32 %72, i32 0, i32 %76, i32 %80, i32 %84, i32 %88, i32 %92, i32 %93, i32 %94, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %69
  br label %127

102:                                              ; preds = %69
  %103 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i64, i64* @D_SLV, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [18 x i8], [18 x i8]* %2, i64 0, i64 0
  %109 = call i32 @pcd_probe(%struct.pcd_unit* %103, i32 %107, i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %102
  %112 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %113 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %118 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %126

121:                                              ; preds = %111, %102
  %122 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %123 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pi_release(i32 %124)
  br label %126

126:                                              ; preds = %121, %116
  br label %127

127:                                              ; preds = %126, %101, %68
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  %130 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %131 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %130, i32 1
  store %struct.pcd_unit* %131, %struct.pcd_unit** %5, align 8
  br label %52

132:                                              ; preds = %52
  br label %133

133:                                              ; preds = %132, %49
  %134 = load i32, i32* %3, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %1, align 4
  br label %156

137:                                              ; preds = %133
  %138 = load i32, i32* @name, align 4
  %139 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %138)
  store i32 0, i32* %4, align 4
  %140 = load %struct.pcd_unit*, %struct.pcd_unit** @pcd, align 8
  store %struct.pcd_unit* %140, %struct.pcd_unit** %5, align 8
  br label %141

141:                                              ; preds = %150, %137
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @PCD_UNITS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %147 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @put_disk(i64 %148)
  br label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  %153 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %154 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %153, i32 1
  store %struct.pcd_unit* %154, %struct.pcd_unit** %5, align 8
  br label %141

155:                                              ; preds = %141
  store i32 -1, i32* %1, align 4
  br label %156

156:                                              ; preds = %155, %136
  %157 = load i32, i32* %1, align 4
  ret i32 %157
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @pi_init(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcd_probe(%struct.pcd_unit*, i32, i8*) #1

declare dso_local i32 @pi_release(i32) #1

declare dso_local i32 @put_disk(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

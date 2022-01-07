; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32, i32, i32*, i32, i32*, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: %s version %s, major %d\0A\00", align 1
@name = common dso_local global i8* null, align 8
@PT_VERSION = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@PT_UNITS = common dso_local global i32 0, align 4
@pt = common dso_local global %struct.pt_unit* null, align 8
@DU = common dso_local global i32* null, align 8
@D_SLV = common dso_local global i64 0, align 8
@PT_NAMELEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@D_PRT = common dso_local global i64 0, align 8
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@pt_scratch = common dso_local global i32 0, align 4
@PI_PT = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: No ATAPI tape drive detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pt_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pt_unit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_unit*, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i8*, i8** @name, align 8
  %8 = load i8*, i8** @name, align 8
  %9 = load i32, i32* @PT_VERSION, align 4
  %10 = load i32, i32* @major, align 4
  %11 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8, i32 %9, i32 %10)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %105, %0
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PT_UNITS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load %struct.pt_unit*, %struct.pt_unit** @pt, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %17, i64 %19
  store %struct.pt_unit* %20, %struct.pt_unit** %6, align 8
  %21 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %22 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %21, i32 0, i32 8
  %23 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %24 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %26 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %25, i32 0, i32 7
  %27 = call i32 @atomic_set(i32* %26, i32 1)
  %28 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %29 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %28, i32 0, i32 6
  store i64 0, i64* %29, align 8
  %30 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %31 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %33 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %35 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %34, i32 0, i32 4
  store i32* null, i32** %35, align 8
  %36 = load i32*, i32** @DU, align 8
  %37 = load i64, i64* @D_SLV, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %41 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %43 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PT_NAMELEN, align 4
  %46 = load i8*, i8** @name, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @snprintf(i32 %44, i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47)
  %49 = load i32*, i32** @DU, align 8
  %50 = load i64, i64* @D_PRT, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %16
  br label %105

55:                                               ; preds = %16
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %59 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** @DU, align 8
  %62 = load i64, i64* @D_PRT, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** @DU, align 8
  %66 = load i64, i64* @D_MOD, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @DU, align 8
  %70 = load i64, i64* @D_UNI, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** @DU, align 8
  %74 = load i64, i64* @D_PRO, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** @DU, align 8
  %78 = load i64, i64* @D_DLY, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @pt_scratch, align 4
  %82 = load i32, i32* @PI_PT, align 4
  %83 = load i32, i32* @verbose, align 4
  %84 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %85 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @pi_init(i32* %60, i32 0, i32 %64, i32 %68, i32 %72, i32 %76, i32 %80, i32 %81, i32 %82, i32 %83, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %55
  %90 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %91 = call i32 @pt_probe(%struct.pt_unit* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %95 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %103

98:                                               ; preds = %89
  %99 = load %struct.pt_unit*, %struct.pt_unit** %6, align 8
  %100 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @pi_release(i32* %101)
  br label %103

103:                                              ; preds = %98, %93
  br label %104

104:                                              ; preds = %103, %55
  br label %105

105:                                              ; preds = %104, %54
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %12

108:                                              ; preds = %12
  %109 = load i32, i32* %3, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %108
  %112 = load %struct.pt_unit*, %struct.pt_unit** @pt, align 8
  store %struct.pt_unit* %112, %struct.pt_unit** %2, align 8
  %113 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %114 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @pt_scratch, align 4
  %117 = load i32, i32* @PI_PT, align 4
  %118 = load i32, i32* @verbose, align 4
  %119 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %120 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @pi_init(i32* %115, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %116, i32 %117, i32 %118, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %111
  %125 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %126 = call i32 @pt_probe(%struct.pt_unit* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %124
  %129 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %130 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %138

133:                                              ; preds = %124
  %134 = load %struct.pt_unit*, %struct.pt_unit** %2, align 8
  %135 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @pi_release(i32* %136)
  br label %138

138:                                              ; preds = %133, %128
  br label %139

139:                                              ; preds = %138, %111
  br label %140

140:                                              ; preds = %139, %108
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 0, i32* %1, align 4
  br label %147

144:                                              ; preds = %140
  %145 = load i8*, i8** @name, align 8
  %146 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %145)
  store i32 -1, i32* %1, align 4
  br label %147

147:                                              ; preds = %144, %143
  %148 = load i32, i32* %1, align 4
  ret i32 %148
}

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @pi_init(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pt_probe(%struct.pt_unit*) #1

declare dso_local i32 @pi_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

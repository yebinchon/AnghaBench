; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pg.c_pg_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32, i32 }

@devices = common dso_local global %struct.pg* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: %s version %s, major %d\0A\00", align 1
@name = common dso_local global i32 0, align 4
@PG_VERSION = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@pg_drive_count = common dso_local global i64 0, align 8
@pg_scratch = common dso_local global i32 0, align 4
@PI_PG = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@PG_UNITS = common dso_local global i32 0, align 4
@drives = common dso_local global i32*** null, align 8
@D_PRT = common dso_local global i64 0, align 8
@D_MOD = common dso_local global i64 0, align 8
@D_UNI = common dso_local global i64 0, align 8
@D_PRO = common dso_local global i64 0, align 8
@D_DLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: No ATAPI device detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pg_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load %struct.pg*, %struct.pg** @devices, align 8
  %7 = getelementptr inbounds %struct.pg, %struct.pg* %6, i64 0
  store %struct.pg* %7, %struct.pg** %2, align 8
  %8 = load i32, i32* @name, align 4
  %9 = load i32, i32* @name, align 4
  %10 = load i32, i32* @PG_VERSION, align 4
  %11 = load i32, i32* @major, align 4
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 0, i32* %3, align 4
  %13 = load i64, i64* @pg_drive_count, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %0
  %16 = load %struct.pg*, %struct.pg** %2, align 8
  %17 = getelementptr inbounds %struct.pg, %struct.pg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @pg_scratch, align 4
  %20 = load i32, i32* @PI_PG, align 4
  %21 = load i32, i32* @verbose, align 4
  %22 = load %struct.pg*, %struct.pg** %2, align 8
  %23 = getelementptr inbounds %struct.pg, %struct.pg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @pi_init(i32 %18, i32 1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %15
  %28 = load %struct.pg*, %struct.pg** %2, align 8
  %29 = call i32 @pg_probe(%struct.pg* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.pg*, %struct.pg** %2, align 8
  %33 = getelementptr inbounds %struct.pg, %struct.pg* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %27
  %37 = load %struct.pg*, %struct.pg** %2, align 8
  %38 = getelementptr inbounds %struct.pg, %struct.pg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pi_release(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  br label %42

42:                                               ; preds = %41, %15
  br label %115

43:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %109, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @PG_UNITS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %114

48:                                               ; preds = %44
  %49 = load i32***, i32**** @drives, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32**, i32*** %49, i64 %51
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %5, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* @D_PRT, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %109

61:                                               ; preds = %48
  %62 = load %struct.pg*, %struct.pg** %2, align 8
  %63 = getelementptr inbounds %struct.pg, %struct.pg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i64, i64* @D_PRT, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* @D_MOD, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* @D_UNI, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* @D_PRO, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* @D_DLY, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @pg_scratch, align 4
  %86 = load i32, i32* @PI_PG, align 4
  %87 = load i32, i32* @verbose, align 4
  %88 = load %struct.pg*, %struct.pg** %2, align 8
  %89 = getelementptr inbounds %struct.pg, %struct.pg* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @pi_init(i32 %64, i32 0, i32 %68, i32 %72, i32 %76, i32 %80, i32 %84, i32 %85, i32 %86, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %61
  %94 = load %struct.pg*, %struct.pg** %2, align 8
  %95 = call i32 @pg_probe(%struct.pg* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load %struct.pg*, %struct.pg** %2, align 8
  %99 = getelementptr inbounds %struct.pg, %struct.pg* %98, i32 0, i32 0
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %93
  %103 = load %struct.pg*, %struct.pg** %2, align 8
  %104 = getelementptr inbounds %struct.pg, %struct.pg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @pi_release(i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %61
  br label %109

109:                                              ; preds = %108, %60
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  %112 = load %struct.pg*, %struct.pg** %2, align 8
  %113 = getelementptr inbounds %struct.pg, %struct.pg* %112, i32 1
  store %struct.pg* %113, %struct.pg** %2, align 8
  br label %44

114:                                              ; preds = %44
  br label %115

115:                                              ; preds = %114, %42
  %116 = load i32, i32* %3, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %1, align 4
  br label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @name, align 4
  %121 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  store i32 -1, i32* %1, align 4
  br label %122

122:                                              ; preds = %119, %118
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @pi_init(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pg_probe(%struct.pg*) #1

declare dso_local i32 @pi_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

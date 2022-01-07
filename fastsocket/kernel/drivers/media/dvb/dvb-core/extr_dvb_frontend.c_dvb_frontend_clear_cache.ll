; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dvb_frontend_clear_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_frontend.c_dvb_frontend_clear_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

@DTV_CLEAR = common dso_local global i32 0, align 4
@SYS_UNDEFINED = common dso_local global i32 0, align 4
@INVERSION_AUTO = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_AUTO = common dso_local global i32 0, align 4
@BANDWIDTH_AUTO = common dso_local global i32 0, align 4
@GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dvb_frontend_clear_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_frontend_clear_cache(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = call i32 @memset(%struct.TYPE_4__* %5, i32 0, i32 4)
  %7 = load i32, i32* @DTV_CLEAR, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 17
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* @SYS_UNDEFINED, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 16
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @INVERSION_AUTO, align 4
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 15
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** @FEC_AUTO, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 14
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @TRANSMISSION_MODE_AUTO, align 4
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 13
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @BANDWIDTH_AUTO, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 12
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @GUARD_INTERVAL_AUTO, align 4
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 11
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @HIERARCHY_AUTO, align 4
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 10
  store i32 %35, i32* %38, align 8
  %39 = load i8*, i8** @QAM_AUTO, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 9
  store i8* %39, i8** %42, align 8
  %43 = load i8*, i8** @FEC_AUTO, align 8
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** @FEC_AUTO, align 8
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 7
  store i8* %47, i8** %50, align 8
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %52 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 -1, i32* %53, align 8
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 -1, i32* %56, align 4
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 -1, i32* %59, align 8
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 -1, i32* %62, align 4
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  store i32 -1, i32* %65, align 8
  %66 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  store i32 7, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %107, %1
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %110

72:                                               ; preds = %69
  %73 = load i8*, i8** @FEC_AUTO, align 8
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i8* %73, i8** %81, align 8
  %82 = load i8*, i8** @QAM_AUTO, align 8
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i8* %82, i8** %90, align 8
  %91 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %92 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 -1, i32* %98, align 8
  %99 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i32 -1, i32* %106, align 4
  br label %107

107:                                              ; preds = %72
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %69

110:                                              ; preds = %69
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

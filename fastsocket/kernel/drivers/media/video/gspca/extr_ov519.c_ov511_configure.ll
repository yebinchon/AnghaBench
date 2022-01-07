; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov511_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov_regvals = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@R51x_SYS_RESET = common dso_local global i32 0, align 4
@R51x_SYS_INIT = common dso_local global i32 0, align 4
@R511_DRAM_FLOW_CTL = common dso_local global i32 0, align 4
@R51x_SYS_SNAP = common dso_local global i32 0, align 4
@R511_FIFO_OPTS = common dso_local global i32 0, align 4
@R511_COMP_EN = common dso_local global i32 0, align 4
@R511_COMP_LUT_EN = common dso_local global i32 0, align 4
@__const.ov511_configure.compress_511 = private unnamed_addr constant [8 x %struct.ov_regvals] [%struct.ov_regvals { i32 112, i32 31 }, %struct.ov_regvals { i32 113, i32 5 }, %struct.ov_regvals { i32 114, i32 6 }, %struct.ov_regvals { i32 115, i32 6 }, %struct.ov_regvals { i32 116, i32 20 }, %struct.ov_regvals { i32 117, i32 3 }, %struct.ov_regvals { i32 118, i32 4 }, %struct.ov_regvals { i32 119, i32 4 }], align 16
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Device custom id %x\00", align 1
@R51x_SYS_CUST_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @ov511_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov511_configure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [7 x %struct.ov_regvals], align 16
  %5 = alloca [7 x %struct.ov_regvals], align 16
  %6 = alloca [7 x %struct.ov_regvals], align 16
  %7 = alloca [8 x %struct.ov_regvals], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %10, i32 0, i32 0
  %12 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %10, i32 0, i32 1
  store i32 127, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %10, i64 1
  %15 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %14, i32 0, i32 0
  %16 = load i32, i32* @R51x_SYS_INIT, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %14, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %14, i64 1
  %19 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %18, i32 0, i32 0
  %20 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %18, i32 0, i32 1
  store i32 127, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %18, i64 1
  %23 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %22, i32 0, i32 0
  %24 = load i32, i32* @R51x_SYS_INIT, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %22, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %22, i64 1
  %27 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %26, i32 0, i32 0
  %28 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %26, i32 0, i32 1
  store i32 63, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %26, i64 1
  %31 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %30, i32 0, i32 0
  %32 = load i32, i32* @R51x_SYS_INIT, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %30, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %30, i64 1
  %35 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %34, i32 0, i32 0
  %36 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %34, i32 0, i32 1
  store i32 61, i32* %37, align 4
  %38 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %5, i64 0, i64 0
  %39 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %38, i32 0, i32 0
  %40 = load i32, i32* @R511_DRAM_FLOW_CTL, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %38, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %38, i64 1
  %43 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %42, i32 0, i32 0
  %44 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %42, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %42, i64 1
  %47 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %46, i32 0, i32 0
  %48 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %46, i32 0, i32 1
  store i32 2, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %46, i64 1
  %51 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %50, i32 0, i32 0
  %52 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %52, i32* %51, align 8
  %53 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %50, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %50, i64 1
  %55 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %54, i32 0, i32 0
  %56 = load i32, i32* @R511_FIFO_OPTS, align 4
  store i32 %56, i32* %55, align 8
  %57 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %54, i32 0, i32 1
  store i32 31, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %54, i64 1
  %59 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %58, i32 0, i32 0
  %60 = load i32, i32* @R511_COMP_EN, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %58, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %58, i64 1
  %63 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %62, i32 0, i32 0
  %64 = load i32, i32* @R511_COMP_LUT_EN, align 4
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %62, i32 0, i32 1
  store i32 3, i32* %65, align 4
  %66 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %6, i64 0, i64 0
  %67 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %66, i32 0, i32 0
  %68 = load i32, i32* @R511_DRAM_FLOW_CTL, align 4
  store i32 %68, i32* %67, align 8
  %69 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %66, i32 0, i32 1
  store i32 255, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %66, i64 1
  %71 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %70, i32 0, i32 0
  %72 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %72, i32* %71, align 8
  %73 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %70, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %70, i64 1
  %75 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %74, i32 0, i32 0
  %76 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %74, i32 0, i32 1
  store i32 2, i32* %77, align 4
  %78 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %74, i64 1
  %79 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %78, i32 0, i32 0
  %80 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %80, i32* %79, align 8
  %81 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %78, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %78, i64 1
  %83 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %82, i32 0, i32 0
  %84 = load i32, i32* @R511_FIFO_OPTS, align 4
  store i32 %84, i32* %83, align 8
  %85 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %82, i32 0, i32 1
  store i32 255, i32* %85, align 4
  %86 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %82, i64 1
  %87 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %86, i32 0, i32 0
  %88 = load i32, i32* @R511_COMP_EN, align 4
  store i32 %88, i32* %87, align 8
  %89 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %86, i32 0, i32 1
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %86, i64 1
  %91 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %90, i32 0, i32 0
  %92 = load i32, i32* @R511_COMP_LUT_EN, align 4
  store i32 %92, i32* %91, align 8
  %93 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %90, i32 0, i32 1
  store i32 3, i32* %93, align 4
  %94 = bitcast [8 x %struct.ov_regvals]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %94, i8* align 16 bitcast ([8 x %struct.ov_regvals]* @__const.ov511_configure.compress_511 to i8*), i64 64, i1 false)
  %95 = load i32, i32* @D_PROBE, align 4
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = load i32, i32* @R51x_SYS_CUST_ID, align 4
  %98 = call i32 @reg_r(%struct.sd* %96, i32 %97)
  %99 = call i32 @PDEBUG(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %4, i64 0, i64 0
  %102 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %4, i64 0, i64 0
  %103 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %102)
  %104 = call i32 @write_regvals(%struct.sd* %100, %struct.ov_regvals* %101, i32 %103)
  %105 = load %struct.sd*, %struct.sd** %3, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %120 [
    i32 129, label %108
    i32 128, label %114
  ]

108:                                              ; preds = %1
  %109 = load %struct.sd*, %struct.sd** %3, align 8
  %110 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %5, i64 0, i64 0
  %111 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %5, i64 0, i64 0
  %112 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %111)
  %113 = call i32 @write_regvals(%struct.sd* %109, %struct.ov_regvals* %110, i32 %112)
  br label %120

114:                                              ; preds = %1
  %115 = load %struct.sd*, %struct.sd** %3, align 8
  %116 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %6, i64 0, i64 0
  %117 = getelementptr inbounds [7 x %struct.ov_regvals], [7 x %struct.ov_regvals]* %6, i64 0, i64 0
  %118 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %117)
  %119 = call i32 @write_regvals(%struct.sd* %115, %struct.ov_regvals* %116, i32 %118)
  br label %120

120:                                              ; preds = %1, %114, %108
  %121 = load %struct.sd*, %struct.sd** %3, align 8
  %122 = getelementptr inbounds [8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* %7, i64 0, i64 0
  %123 = getelementptr inbounds [8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* %7, i64 0, i64 0
  %124 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %123)
  %125 = call i32 @write_regvals(%struct.sd* %121, %struct.ov_regvals* %122, i32 %124)
  %126 = load %struct.sd*, %struct.sd** %3, align 8
  %127 = call i32 @ov51x_upload_quan_tables(%struct.sd* %126)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #2

declare dso_local i32 @reg_r(%struct.sd*, i32) #2

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #2

declare dso_local i32 @ov51x_upload_quan_tables(%struct.sd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

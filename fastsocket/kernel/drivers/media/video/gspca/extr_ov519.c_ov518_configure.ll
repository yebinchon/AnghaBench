; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov518_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_ov518_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }
%struct.ov_regvals = type { i32, i32 }

@R51x_SYS_RESET = common dso_local global i32 0, align 4
@R51x_SYS_INIT = common dso_local global i32 0, align 4
@R51x_SYS_SNAP = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Device revision %d\00", align 1
@R51x_SYS_CUST_ID = common dso_local global i32 0, align 4
@R518_GPIO_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @ov518_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov518_configure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x %struct.ov_regvals], align 16
  %5 = alloca [10 x %struct.ov_regvals], align 16
  %6 = alloca [16 x %struct.ov_regvals], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = getelementptr inbounds [8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* %4, i64 0, i64 0
  %10 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %9, i32 0, i32 0
  %11 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %9, i32 0, i32 1
  store i32 64, i32* %12, align 4
  %13 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %9, i64 1
  %14 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %13, i32 0, i32 0
  %15 = load i32, i32* @R51x_SYS_INIT, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %13, i32 0, i32 1
  store i32 225, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %13, i64 1
  %18 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %17, i32 0, i32 0
  %19 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %17, i32 0, i32 1
  store i32 62, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %17, i64 1
  %22 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %21, i32 0, i32 0
  %23 = load i32, i32* @R51x_SYS_INIT, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %21, i32 0, i32 1
  store i32 225, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %21, i64 1
  %26 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %25, i32 0, i32 0
  %27 = load i32, i32* @R51x_SYS_RESET, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %25, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %25, i64 1
  %30 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %29, i32 0, i32 0
  %31 = load i32, i32* @R51x_SYS_INIT, align 4
  store i32 %31, i32* %30, align 8
  %32 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %29, i32 0, i32 1
  store i32 225, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %29, i64 1
  %34 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %33, i32 0, i32 0
  store i32 70, i32* %34, align 8
  %35 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %33, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %33, i64 1
  %37 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %36, i32 0, i32 0
  store i32 93, i32* %37, align 8
  %38 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %36, i32 0, i32 1
  store i32 3, i32* %38, align 4
  %39 = getelementptr inbounds [10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* %5, i64 0, i64 0
  %40 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %39, i32 0, i32 0
  %41 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %39, i32 0, i32 1
  store i32 2, i32* %42, align 4
  %43 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %39, i64 1
  %44 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %43, i32 0, i32 0
  %45 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %43, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %43, i64 1
  %48 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %47, i32 0, i32 0
  store i32 49, i32* %48, align 8
  %49 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %47, i32 0, i32 1
  store i32 15, i32* %49, align 4
  %50 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %47, i64 1
  %51 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %50, i32 0, i32 0
  store i32 93, i32* %51, align 8
  %52 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %50, i32 0, i32 1
  store i32 3, i32* %52, align 4
  %53 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %50, i64 1
  %54 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %53, i32 0, i32 0
  store i32 36, i32* %54, align 8
  %55 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %53, i32 0, i32 1
  store i32 159, i32* %55, align 4
  %56 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %53, i64 1
  %57 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %56, i32 0, i32 0
  store i32 37, i32* %57, align 8
  %58 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %56, i32 0, i32 1
  store i32 144, i32* %58, align 4
  %59 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %56, i64 1
  %60 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %59, i32 0, i32 0
  store i32 32, i32* %60, align 8
  %61 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %59, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %59, i64 1
  %63 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %62, i32 0, i32 0
  store i32 81, i32* %63, align 8
  %64 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %62, i32 0, i32 1
  store i32 4, i32* %64, align 4
  %65 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %62, i64 1
  %66 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %65, i32 0, i32 0
  store i32 113, i32* %66, align 8
  %67 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %65, i32 0, i32 1
  store i32 25, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %65, i64 1
  %69 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %68, i32 0, i32 0
  store i32 47, i32* %69, align 8
  %70 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %68, i32 0, i32 1
  store i32 128, i32* %70, align 4
  %71 = getelementptr inbounds [16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* %6, i64 0, i64 0
  %72 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %71, i32 0, i32 0
  %73 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %71, i32 0, i32 1
  store i32 2, i32* %74, align 4
  %75 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %71, i64 1
  %76 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %75, i32 0, i32 0
  %77 = load i32, i32* @R51x_SYS_SNAP, align 4
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %75, i32 0, i32 1
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %75, i64 1
  %80 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %79, i32 0, i32 0
  store i32 49, i32* %80, align 8
  %81 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %79, i32 0, i32 1
  store i32 15, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %79, i64 1
  %83 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %82, i32 0, i32 0
  store i32 93, i32* %83, align 8
  %84 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %82, i32 0, i32 1
  store i32 3, i32* %84, align 4
  %85 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %82, i64 1
  %86 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %85, i32 0, i32 0
  store i32 36, i32* %86, align 8
  %87 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %85, i32 0, i32 1
  store i32 159, i32* %87, align 4
  %88 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %85, i64 1
  %89 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %88, i32 0, i32 0
  store i32 37, i32* %89, align 8
  %90 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %88, i32 0, i32 1
  store i32 144, i32* %90, align 4
  %91 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %88, i64 1
  %92 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %91, i32 0, i32 0
  store i32 32, i32* %92, align 8
  %93 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %91, i32 0, i32 1
  store i32 96, i32* %93, align 4
  %94 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %91, i64 1
  %95 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %94, i32 0, i32 0
  store i32 81, i32* %95, align 8
  %96 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %94, i32 0, i32 1
  store i32 2, i32* %96, align 4
  %97 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %94, i64 1
  %98 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %97, i32 0, i32 0
  store i32 113, i32* %98, align 8
  %99 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %97, i32 0, i32 1
  store i32 25, i32* %99, align 4
  %100 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %97, i64 1
  %101 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %100, i32 0, i32 0
  store i32 64, i32* %101, align 8
  %102 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %100, i32 0, i32 1
  store i32 255, i32* %102, align 4
  %103 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %100, i64 1
  %104 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %103, i32 0, i32 0
  store i32 65, i32* %104, align 8
  %105 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %103, i32 0, i32 1
  store i32 66, i32* %105, align 4
  %106 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %103, i64 1
  %107 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %106, i32 0, i32 0
  store i32 70, i32* %107, align 8
  %108 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %106, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %106, i64 1
  %110 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %109, i32 0, i32 0
  store i32 51, i32* %110, align 8
  %111 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %109, i32 0, i32 1
  store i32 4, i32* %111, align 4
  %112 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %109, i64 1
  %113 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %112, i32 0, i32 0
  store i32 33, i32* %113, align 8
  %114 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %112, i32 0, i32 1
  store i32 25, i32* %114, align 4
  %115 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %112, i64 1
  %116 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %115, i32 0, i32 0
  store i32 63, i32* %116, align 8
  %117 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %115, i32 0, i32 1
  store i32 16, i32* %117, align 4
  %118 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %115, i64 1
  %119 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %118, i32 0, i32 0
  store i32 47, i32* %119, align 8
  %120 = getelementptr inbounds %struct.ov_regvals, %struct.ov_regvals* %118, i32 0, i32 1
  store i32 128, i32* %120, align 4
  %121 = load i32, i32* @D_PROBE, align 4
  %122 = load %struct.sd*, %struct.sd** %3, align 8
  %123 = load i32, i32* @R51x_SYS_CUST_ID, align 4
  %124 = call i32 @reg_r(%struct.sd* %122, i32 %123)
  %125 = and i32 31, %124
  %126 = call i32 @PDEBUG(i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load %struct.sd*, %struct.sd** %3, align 8
  %128 = getelementptr inbounds [8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* %4, i64 0, i64 0
  %129 = getelementptr inbounds [8 x %struct.ov_regvals], [8 x %struct.ov_regvals]* %4, i64 0, i64 0
  %130 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %129)
  %131 = call i32 @write_regvals(%struct.sd* %127, %struct.ov_regvals* %128, i32 %130)
  %132 = load %struct.sd*, %struct.sd** %3, align 8
  %133 = load i32, i32* @R518_GPIO_CTL, align 4
  %134 = call i32 @reg_w_mask(%struct.sd* %132, i32 %133, i32 0, i32 2)
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  switch i32 %137, label %150 [
    i32 129, label %138
    i32 128, label %144
  ]

138:                                              ; preds = %1
  %139 = load %struct.sd*, %struct.sd** %3, align 8
  %140 = getelementptr inbounds [10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* %5, i64 0, i64 0
  %141 = getelementptr inbounds [10 x %struct.ov_regvals], [10 x %struct.ov_regvals]* %5, i64 0, i64 0
  %142 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %141)
  %143 = call i32 @write_regvals(%struct.sd* %139, %struct.ov_regvals* %140, i32 %142)
  br label %150

144:                                              ; preds = %1
  %145 = load %struct.sd*, %struct.sd** %3, align 8
  %146 = getelementptr inbounds [16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* %6, i64 0, i64 0
  %147 = getelementptr inbounds [16 x %struct.ov_regvals], [16 x %struct.ov_regvals]* %6, i64 0, i64 0
  %148 = call i32 @ARRAY_SIZE(%struct.ov_regvals* %147)
  %149 = call i32 @write_regvals(%struct.sd* %145, %struct.ov_regvals* %146, i32 %148)
  br label %150

150:                                              ; preds = %1, %144, %138
  %151 = load %struct.sd*, %struct.sd** %3, align 8
  %152 = call i32 @ov51x_upload_quan_tables(%struct.sd* %151)
  %153 = load %struct.sd*, %struct.sd** %3, align 8
  %154 = call i32 @reg_w(%struct.sd* %153, i32 47, i32 128)
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @write_regvals(%struct.sd*, %struct.ov_regvals*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ov_regvals*) #1

declare dso_local i32 @reg_w_mask(%struct.sd*, i32, i32, i32) #1

declare dso_local i32 @ov51x_upload_quan_tables(%struct.sd*) #1

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

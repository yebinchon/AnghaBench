; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_recover_scsi_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_recover_scsi_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32 }
%struct.sym_ccb = type { i32 }

@nc_dsp = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@getjob_begin = common dso_local global i32 0, align 4
@getjob_end = common dso_local global i32 0, align 4
@ungetjob = common dso_local global i32 0, align 4
@reselect = common dso_local global i32 0, align 4
@sel_for_abort = common dso_local global i32 0, align 4
@sel_for_abort_1 = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@done_end = common dso_local global i32 0, align 4
@nc_ctest3 = common dso_local global i32 0, align 4
@CLF = common dso_local global i32 0, align 4
@nc_stest3 = common dso_local global i32 0, align 4
@TE = common dso_local global i32 0, align 4
@CSF = common dso_local global i32 0, align 4
@complete_error = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i32)* @sym_recover_scsi_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_recover_scsi_int(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sym_ccb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %9 = load i32, i32* @nc_dsp, align 4
  %10 = call i64 @INL(%struct.sym_hcb* %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %12 = load i32, i32* @nc_dsa, align 4
  %13 = call i64 @INL(%struct.sym_hcb* %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb* %14, i64 %15)
  store %struct.sym_ccb* %16, %struct.sym_ccb** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %19 = load i32, i32* @getjob_begin, align 4
  %20 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %18, i32 %19)
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %25 = load i32, i32* @getjob_end, align 4
  %26 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %24, i32 %25)
  %27 = add nsw i64 %26, 1
  %28 = icmp slt i64 %23, %27
  br i1 %28, label %104, label %29

29:                                               ; preds = %22, %2
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %32 = load i32, i32* @ungetjob, align 4
  %33 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %31, i32 %32)
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %38 = load i32, i32* @reselect, align 4
  %39 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %37, i32 %38)
  %40 = add nsw i64 %39, 1
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %104, label %42

42:                                               ; preds = %35, %29
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %45 = load i32, i32* @sel_for_abort, align 4
  %46 = call i64 @SCRIPTB_BA(%struct.sym_hcb* %44, i32 %45)
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %51 = load i32, i32* @sel_for_abort_1, align 4
  %52 = call i64 @SCRIPTB_BA(%struct.sym_hcb* %50, i32 %51)
  %53 = add nsw i64 %52, 1
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %104, label %55

55:                                               ; preds = %48, %42
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %58 = load i32, i32* @done, align 4
  %59 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %57, i32 %58)
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %64 = load i32, i32* @done_end, align 4
  %65 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %63, i32 %64)
  %66 = add nsw i64 %65, 1
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %104, label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %70 = load i32, i32* @nc_ctest3, align 4
  %71 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %72 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CLF, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @OUTB(%struct.sym_hcb* %69, i32 %70, i32 %75)
  %77 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %78 = load i32, i32* @nc_stest3, align 4
  %79 = load i32, i32* @TE, align 4
  %80 = load i32, i32* @CSF, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @OUTB(%struct.sym_hcb* %77, i32 %78, i32 %81)
  %83 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %84 = icmp ne %struct.sym_ccb* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %68
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.sym_ccb*, %struct.sym_ccb** %7, align 8
  %88 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %90 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %91 = load i32, i32* @complete_error, align 4
  %92 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %90, i32 %91)
  %93 = call i32 @OUTL_DSP(%struct.sym_hcb* %89, i64 %92)
  br label %103

94:                                               ; preds = %68
  %95 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %96 = load i32, i32* @nc_dsa, align 4
  %97 = call i32 @OUTL(%struct.sym_hcb* %95, i32 %96, i32 16777215)
  %98 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %99 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %100 = load i32, i32* @start, align 4
  %101 = call i64 @SCRIPTA_BA(%struct.sym_hcb* %99, i32 %100)
  %102 = call i32 @OUTL_DSP(%struct.sym_hcb* %98, i64 %101)
  br label %103

103:                                              ; preds = %94, %85
  br label %105

104:                                              ; preds = %61, %48, %35, %22
  br label %106

105:                                              ; preds = %103
  br label %109

106:                                              ; preds = %104
  %107 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %108 = call i32 @sym_start_reset(%struct.sym_hcb* %107)
  br label %109

109:                                              ; preds = %106, %105
  ret void
}

declare dso_local i64 @INL(%struct.sym_hcb*, i32) #1

declare dso_local %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb*, i64) #1

declare dso_local i64 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i64 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i64) #1

declare dso_local i32 @OUTL(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @sym_start_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

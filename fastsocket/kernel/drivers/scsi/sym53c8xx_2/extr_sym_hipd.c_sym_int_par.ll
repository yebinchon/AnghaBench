; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_hipd.c_sym_int_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { i32* }
%struct.sym_ccb = type { i32 }

@HS_PRT = common dso_local global i32 0, align 4
@nc_dsp = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@nc_sbcl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\0A\00", align 1
@nc_scntl1 = common dso_local global i32 0, align 4
@ISCON = common dso_local global i32 0, align 4
@HS_UNEXPECTED = common dso_local global i32 0, align 4
@HF_PRT = common dso_local global i32 0, align 4
@HF_EXT_ERR = common dso_local global i32 0, align 4
@XE_PARITY_ERR = common dso_local global i32 0, align 4
@M_PARITY = common dso_local global i32 0, align 4
@M_ID_ERROR = common dso_local global i32 0, align 4
@pm_handle = common dso_local global i32 0, align 4
@MA = common dso_local global i32 0, align 4
@dispatch = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_hcb*, i32)* @sym_int_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_par(%struct.sym_hcb* %0, i32 %1) #0 {
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sym_ccb*, align 8
  store %struct.sym_hcb* %0, %struct.sym_hcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %14 = load i32, i32* @HS_PRT, align 4
  %15 = call i32 @INB(%struct.sym_hcb* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %17 = load i32, i32* @nc_dsp, align 4
  %18 = call i32 @INL(%struct.sym_hcb* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %20 = load i32, i32* @nc_dbc, align 4
  %21 = call i32 @INL(%struct.sym_hcb* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %23 = load i32, i32* @nc_dsa, align 4
  %24 = call i32 @INL(%struct.sym_hcb* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %26 = load i32, i32* @nc_sbcl, align 4
  %27 = call i32 @INB(%struct.sym_hcb* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 24
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 7
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb* %32, i32 %33)
  store %struct.sym_ccb* %34, %struct.sym_ccb** %12, align 8
  %35 = call i64 (...) @printk_ratelimit()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %2
  %38 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %39 = call i8* @sym_name(%struct.sym_hcb* %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %2
  %45 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %46 = load i32, i32* @nc_scntl1, align 4
  %47 = call i32 @INB(%struct.sym_hcb* %45, i32 %46)
  %48 = load i32, i32* @ISCON, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %53 = load i32, i32* @HS_UNEXPECTED, align 4
  %54 = call i32 @sym_recover_scsi_int(%struct.sym_hcb* %52, i32 %53)
  br label %144

55:                                               ; preds = %44
  %56 = load %struct.sym_ccb*, %struct.sym_ccb** %12, align 8
  %57 = icmp ne %struct.sym_ccb* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  br label %141

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 192
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67, %63, %59
  br label %141

72:                                               ; preds = %67
  %73 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %74 = load i32, i32* @HF_PRT, align 4
  %75 = load i32, i32* @HF_EXT_ERR, align 4
  %76 = call i32 @OUTONB(%struct.sym_hcb* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @XE_PARITY_ERR, align 4
  %78 = load %struct.sym_ccb*, %struct.sym_ccb** %12, align 8
  %79 = getelementptr inbounds %struct.sym_ccb, %struct.sym_ccb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 7
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* @M_PARITY, align 4
  br label %88

86:                                               ; preds = %72
  %87 = load i32, i32* @M_ID_ERROR, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %91 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %129

99:                                               ; preds = %96, %88
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %102 = load i32, i32* @pm_handle, align 4
  %103 = call i32 @SCRIPTB_BA(%struct.sym_hcb* %101, i32 %102)
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @OUTL_DSP(%struct.sym_hcb* %106, i32 %107)
  br label %128

109:                                              ; preds = %99
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @MA, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %116 = call i32 @sym_int_ma(%struct.sym_hcb* %115)
  br label %127

117:                                              ; preds = %109
  %118 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %119 = load %struct.sym_ccb*, %struct.sym_ccb** %12, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @sym_set_script_dp(%struct.sym_hcb* %118, %struct.sym_ccb* %119, i32 %120)
  %122 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %123 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %124 = load i32, i32* @dispatch, align 4
  %125 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %123, i32 %124)
  %126 = call i32 @OUTL_DSP(%struct.sym_hcb* %122, i32 %125)
  br label %127

127:                                              ; preds = %117, %114
  br label %128

128:                                              ; preds = %127, %105
  br label %140

129:                                              ; preds = %96
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 7
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %141

133:                                              ; preds = %129
  %134 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %135 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %136 = load i32, i32* @dispatch, align 4
  %137 = call i32 @SCRIPTA_BA(%struct.sym_hcb* %135, i32 %136)
  %138 = call i32 @OUTL_DSP(%struct.sym_hcb* %134, i32 %137)
  br label %139

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %128
  br label %144

141:                                              ; preds = %132, %71, %58
  %142 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %143 = call i32 @sym_start_reset(%struct.sym_hcb* %142)
  br label %144

144:                                              ; preds = %141, %140, %51
  ret void
}

declare dso_local i32 @INB(%struct.sym_hcb*, i32) #1

declare dso_local i32 @INL(%struct.sym_hcb*, i32) #1

declare dso_local %struct.sym_ccb* @sym_ccb_from_dsa(%struct.sym_hcb*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @sym_name(%struct.sym_hcb*) #1

declare dso_local i32 @sym_recover_scsi_int(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTONB(%struct.sym_hcb*, i32, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @OUTL_DSP(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_int_ma(%struct.sym_hcb*) #1

declare dso_local i32 @sym_set_script_dp(%struct.sym_hcb*, %struct.sym_ccb*, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.sym_hcb*, i32) #1

declare dso_local i32 @sym_start_reset(%struct.sym_hcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

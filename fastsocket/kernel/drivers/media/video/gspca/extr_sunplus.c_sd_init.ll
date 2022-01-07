; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sunplus.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sunplus.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32 }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Opening SPCA504 (PC-CAM 600)\00", align 1
@LogitechClickSmart420 = common dso_local global i32 0, align 4
@spca504A_clicksmart420_open_data = common dso_local global i32 0, align 4
@spca504_pccam600_open_data = common dso_local global i32 0, align 4
@qtable_creative_pccam = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Opening SPCA504\00", align 1
@AiptekMiniPenCam13 = common dso_local global i32 0, align 4
@qtable_spca504_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %72 [
    i32 131, label %9
    i32 129, label %22
    i32 128, label %27
    i32 130, label %42
  ]

9:                                                ; preds = %1
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = call i32 @reg_w_riv(%struct.gspca_dev* %10, i32 29, i32 0, i32 0)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = call i32 @reg_w_riv(%struct.gspca_dev* %12, i32 0, i32 8966, i32 1)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w_riv(%struct.gspca_dev* %14, i32 0, i32 3332, i32 0)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = call i32 @reg_w_riv(%struct.gspca_dev* %16, i32 0, i32 8192, i32 0)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = call i32 @reg_w_riv(%struct.gspca_dev* %18, i32 0, i32 8961, i32 19)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %21 = call i32 @reg_w_riv(%struct.gspca_dev* %20, i32 0, i32 8966, i32 0)
  br label %22

22:                                               ; preds = %1, %9
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @spca50x_GetFirmware(%struct.gspca_dev* %25)
  br label %105

27:                                               ; preds = %1
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = call i32 @spca50x_GetFirmware(%struct.gspca_dev* %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @reg_r(%struct.gspca_dev* %30, i32 0, i32 20482, i32 1)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w_1(%struct.gspca_dev* %32, i32 36, i32 0, i32 0, i32 0)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @reg_r(%struct.gspca_dev* %34, i32 36, i32 0, i32 1)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @reg_w_riv(%struct.gspca_dev* %38, i32 52, i32 0, i32 0)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %40)
  br label %105

42:                                               ; preds = %1
  %43 = load i32, i32* @D_STREAM, align 4
  %44 = call i32 @PDEBUG(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @reg_w_riv(%struct.gspca_dev* %45, i32 224, i32 0, i32 0)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @reg_w_riv(%struct.gspca_dev* %47, i32 224, i32 0, i32 1)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @spca504_wait_status(%struct.gspca_dev* %49)
  %51 = load %struct.sd*, %struct.sd** %3, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LogitechClickSmart420, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %42
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = load i32, i32* @spca504A_clicksmart420_open_data, align 4
  %59 = load i32, i32* @spca504A_clicksmart420_open_data, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @write_vector(%struct.gspca_dev* %57, i32 %58, i32 %60)
  br label %68

62:                                               ; preds = %42
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = load i32, i32* @spca504_pccam600_open_data, align 4
  %65 = load i32, i32* @spca504_pccam600_open_data, align 4
  %66 = call i32 @ARRAY_SIZE(i32 %65)
  %67 = call i32 @write_vector(%struct.gspca_dev* %63, i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = load i32, i32* @qtable_creative_pccam, align 4
  %71 = call i32 @setup_qtable(%struct.gspca_dev* %69, i32 %70)
  br label %105

72:                                               ; preds = %1
  %73 = load i32, i32* @D_STREAM, align 4
  %74 = call i32 @PDEBUG(i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.sd*, %struct.sd** %3, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AiptekMiniPenCam13, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %72
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @spca504_read_info(%struct.gspca_dev* %81)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %83, i32 36, i32 8, i32 3, i32 158, i32 1)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %85, i32 36, i32 8, i32 3, i32 158, i32 0)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %87, i32 36, i32 0, i32 0, i32 157, i32 1)
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %89, i32 8, i32 6, i32 0, i32 134, i32 1)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = call i32 @reg_w_riv(%struct.gspca_dev* %91, i32 0, i32 9996, i32 5)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %94 = call i32 @reg_w_riv(%struct.gspca_dev* %93, i32 0, i32 8976, i32 5)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %95, i32 1, i32 15, i32 0, i32 255, i32 0)
  br label %97

97:                                               ; preds = %80, %72
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = call i32 @reg_w_riv(%struct.gspca_dev* %98, i32 0, i32 8192, i32 0)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @reg_w_riv(%struct.gspca_dev* %100, i32 0, i32 10371, i32 1)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = load i32, i32* @qtable_spca504_default, align 4
  %104 = call i32 @setup_qtable(%struct.gspca_dev* %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %68, %27, %22
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  ret i32 %108
}

declare dso_local i32 @reg_w_riv(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca504B_PollingDataReady(%struct.gspca_dev*) #1

declare dso_local i32 @spca50x_GetFirmware(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_w_1(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @spca504B_WaitCmdStatus(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @spca504_wait_status(%struct.gspca_dev*) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @setup_qtable(%struct.gspca_dev*, i32) #1

declare dso_local i32 @spca504_read_info(%struct.gspca_dev*) #1

declare dso_local i32 @spca504A_acknowledged_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

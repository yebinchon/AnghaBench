; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sunplus.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sunplus.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32 }
%struct.sd = type { i32, i32, i32, i32, i32 }

@BRIDGE_SPCA504B = common dso_local global i32 0, align 4
@AiptekMiniPenCam13 = common dso_local global i32 0, align 4
@LogitechClickSmart420 = common dso_local global i32 0, align 4
@spca504A_clicksmart420_init_data = common dso_local global i32 0, align 4
@spca504_pccam600_init_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @jpeg_define(i32 %9, i32 %12, i32 %15, i32 34)
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sd*, %struct.sd** %3, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @jpeg_set_qual(i32 %19, i32 %22)
  %24 = load %struct.sd*, %struct.sd** %3, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BRIDGE_SPCA504B, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @spca504B_setQtable(%struct.gspca_dev* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @spca504B_SetSizeType(%struct.gspca_dev* %33)
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %38 [
    i32 132, label %59
    i32 131, label %90
  ]

38:                                               ; preds = %32
  %39 = load %struct.sd*, %struct.sd** %3, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %51 [
    i32 128, label %42
    i32 130, label %42
    i32 129, label %42
  ]

42:                                               ; preds = %38, %38, %38
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = call i32 @reg_w_riv(%struct.gspca_dev* %43, i32 240, i32 0, i32 0)
  %45 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %46 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = call i32 @reg_r(%struct.gspca_dev* %47, i32 240, i32 4, i32 0)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %49)
  br label %58

51:                                               ; preds = %38
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @reg_w_riv(%struct.gspca_dev* %52, i32 49, i32 4, i32 0)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %54)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %56)
  br label %58

58:                                               ; preds = %51, %42
  br label %127

59:                                               ; preds = %32
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AiptekMiniPenCam13, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = call i32 @spca504_read_info(%struct.gspca_dev* %66)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %68, i32 36, i32 8, i32 3, i32 158, i32 1)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %70, i32 36, i32 8, i32 3, i32 158, i32 0)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %72, i32 36, i32 0, i32 0, i32 157, i32 1)
  br label %83

74:                                               ; preds = %59
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = call i32 @spca504_acknowledged_command(%struct.gspca_dev* %75, i32 36, i32 8, i32 3)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = call i32 @spca504_read_info(%struct.gspca_dev* %77)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = call i32 @spca504_acknowledged_command(%struct.gspca_dev* %79, i32 36, i32 8, i32 3)
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @spca504_acknowledged_command(%struct.gspca_dev* %81, i32 36, i32 0, i32 0)
  br label %83

83:                                               ; preds = %74, %65
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @spca504B_SetSizeType(%struct.gspca_dev* %84)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = call i32 @reg_w_riv(%struct.gspca_dev* %86, i32 0, i32 9996, i32 5)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @reg_w_riv(%struct.gspca_dev* %88, i32 0, i32 8976, i32 5)
  br label %127

90:                                               ; preds = %32
  %91 = load %struct.sd*, %struct.sd** %3, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LogitechClickSmart420, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = load i32, i32* @spca504A_clicksmart420_init_data, align 4
  %99 = load i32, i32* @spca504A_clicksmart420_init_data, align 4
  %100 = call i32 @ARRAY_SIZE(i32 %99)
  %101 = call i32 @write_vector(%struct.gspca_dev* %97, i32 %98, i32 %100)
  br label %108

102:                                              ; preds = %90
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %104 = load i32, i32* @spca504_pccam600_init_data, align 4
  %105 = load i32, i32* @spca504_pccam600_init_data, align 4
  %106 = call i32 @ARRAY_SIZE(i32 %105)
  %107 = call i32 @write_vector(%struct.gspca_dev* %103, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %102, %96
  %109 = load %struct.sd*, %struct.sd** %3, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 4, i32 1
  store i32 %114, i32* %4, align 4
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @reg_w_riv(%struct.gspca_dev* %115, i32 12, i32 0, i32 %116)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @reg_w_riv(%struct.gspca_dev* %118, i32 176, i32 0, i32 %119)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %122 = call i32 @reg_w_riv(%struct.gspca_dev* %121, i32 48, i32 1, i32 800)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @reg_w_riv(%struct.gspca_dev* %123, i32 48, i32 2, i32 1600)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = call i32 @spca504B_SetSizeType(%struct.gspca_dev* %125)
  br label %127

127:                                              ; preds = %108, %83, %58
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = call i32 @init_ctl_reg(%struct.gspca_dev* %128)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  ret i32 %132
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @spca504B_setQtable(%struct.gspca_dev*) #1

declare dso_local i32 @spca504B_SetSizeType(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w_riv(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca504B_WaitCmdStatus(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca504B_PollingDataReady(%struct.gspca_dev*) #1

declare dso_local i32 @spca504_read_info(%struct.gspca_dev*) #1

declare dso_local i32 @spca504A_acknowledged_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spca504_acknowledged_command(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @write_vector(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @init_ctl_reg(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

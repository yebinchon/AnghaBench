; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sunplus.c_spca504B_SetSizeType.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sunplus.c_spca504B_SetSizeType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32, i32 }

@AiptekMiniPenCam13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @spca504B_SetSizeType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spca504B_SetSizeType(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %46 [
    i32 128, label %20
    i32 130, label %58
    i32 129, label %80
  ]

20:                                               ; preds = %1
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = call i32 @reg_w_riv(%struct.gspca_dev* %21, i32 49, i32 0, i32 0)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = call i32 @spca50x_GetFirmware(%struct.gspca_dev* %27)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = call i32 @reg_w_1(%struct.gspca_dev* %29, i32 36, i32 0, i32 8, i32 2)
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %32 = call i32 @reg_r(%struct.gspca_dev* %31, i32 36, i32 8, i32 1)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @reg_w_1(%struct.gspca_dev* %33, i32 37, i32 0, i32 4, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @reg_r(%struct.gspca_dev* %36, i32 37, i32 4, i32 1)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %38)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @reg_w_riv(%struct.gspca_dev* %40, i32 49, i32 4, i32 0)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = call i32 @spca504B_WaitCmdStatus(%struct.gspca_dev* %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %44)
  br label %91

46:                                               ; preds = %1
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @reg_w_1(%struct.gspca_dev* %47, i32 37, i32 0, i32 4, i32 %48)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = call i32 @reg_r(%struct.gspca_dev* %50, i32 37, i32 4, i32 1)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @reg_w_1(%struct.gspca_dev* %52, i32 39, i32 0, i32 0, i32 6)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = call i32 @reg_r(%struct.gspca_dev* %54, i32 39, i32 0, i32 1)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = call i32 @spca504B_PollingDataReady(%struct.gspca_dev* %56)
  br label %91

58:                                               ; preds = %1
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 3
  store i32 %60, i32* %4, align 4
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AiptekMiniPenCam13, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %58
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, 15
  %71 = or i32 128, %70
  %72 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %67, i32 8, i32 %68, i32 0, i32 %71, i32 1)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @spca504A_acknowledged_command(%struct.gspca_dev* %73, i32 1, i32 3, i32 0, i32 159, i32 0)
  br label %79

75:                                               ; preds = %58
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @spca504_acknowledged_command(%struct.gspca_dev* %76, i32 8, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %75, %66
  br label %91

80:                                               ; preds = %1
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, 15
  %84 = or i32 1280, %83
  %85 = call i32 @reg_w_riv(%struct.gspca_dev* %81, i32 160, i32 %84, i32 0)
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, 15
  %89 = or i32 1280, %88
  %90 = call i32 @reg_w_riv(%struct.gspca_dev* %86, i32 32, i32 1, i32 %89)
  br label %91

91:                                               ; preds = %80, %79, %46, %20
  ret void
}

declare dso_local i32 @reg_w_riv(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca504B_WaitCmdStatus(%struct.gspca_dev*) #1

declare dso_local i32 @spca504B_PollingDataReady(%struct.gspca_dev*) #1

declare dso_local i32 @spca50x_GetFirmware(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w_1(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @spca504A_acknowledged_command(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spca504_acknowledged_command(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_command_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_command_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CPIA_COMMAND_SetExposure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @command_setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command_setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = load i32, i32* @CPIA_COMMAND_SetExposure, align 4
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sd*, %struct.sd** %4, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sd*, %struct.sd** %4, align 8
  %26 = getelementptr inbounds %struct.sd, %struct.sd* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sd*, %struct.sd** %4, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sd*, %struct.sd** %4, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sd*, %struct.sd** %4, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sd*, %struct.sd** %4, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sd*, %struct.sd** %4, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @do_command_extended(%struct.gspca_dev* %8, i32 %9, i32 %14, i32 1, i32 %19, i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %1
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %108

70:                                               ; preds = %1
  %71 = load %struct.sd*, %struct.sd** %4, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %106

77:                                               ; preds = %70
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %79 = load i32, i32* @CPIA_COMMAND_SetExposure, align 4
  %80 = load %struct.sd*, %struct.sd** %4, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sd*, %struct.sd** %4, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sd*, %struct.sd** %4, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sd*, %struct.sd** %4, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sd*, %struct.sd** %4, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @do_command_extended(%struct.gspca_dev* %78, i32 %79, i32 0, i32 %84, i32 0, i32 0, i32 %89, i32 %94, i32 %99, i32 %104, i32 0, i32 0, i32 0, i32 0)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %77, %70
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %68
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @do_command_extended(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

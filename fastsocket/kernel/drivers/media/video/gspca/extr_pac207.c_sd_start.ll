; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac207.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_pac207.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i64, i64 }

@pac207_sensor_init = common dso_local global i32* null, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pac207_start mode 176x144\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pac207_start mode 352x288\00", align 1
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
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @pac207_write_reg(%struct.gspca_dev* %7, i32 15, i32 16)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32*, i32** @pac207_sensor_init, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pac207_write_regs(%struct.gspca_dev* %9, i32 2, i32 %12, i32 8)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = load i32*, i32** @pac207_sensor_init, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pac207_write_regs(%struct.gspca_dev* %14, i32 10, i32 %17, i32 8)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32*, i32** @pac207_sensor_init, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pac207_write_regs(%struct.gspca_dev* %19, i32 18, i32 %22, i32 8)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32*, i32** @pac207_sensor_init, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pac207_write_regs(%struct.gspca_dev* %24, i32 66, i32 %27, i32 8)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 176
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %35 = call i32 @pac207_write_reg(%struct.gspca_dev* %34, i32 74, i32 255)
  br label %39

36:                                               ; preds = %1
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = call i32 @pac207_write_reg(%struct.gspca_dev* %37, i32 74, i32 48)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = call i32 @pac207_write_reg(%struct.gspca_dev* %40, i32 75, i32 0)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pac207_write_reg(%struct.gspca_dev* %42, i32 8, i32 %45)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pac207_write_reg(%struct.gspca_dev* %47, i32 14, i32 %50)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pac207_write_reg(%struct.gspca_dev* %52, i32 2, i32 %55)
  store i32 2, i32* %4, align 4
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 176
  br i1 %60, label %61, label %66

61:                                               ; preds = %39
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @D_STREAM, align 4
  %65 = call i32 @PDEBUG(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %69

66:                                               ; preds = %39
  %67 = load i32, i32* @D_STREAM, align 4
  %68 = call i32 @PDEBUG(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @pac207_write_reg(%struct.gspca_dev* %70, i32 65, i32 %71)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @pac207_write_reg(%struct.gspca_dev* %73, i32 19, i32 1)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = call i32 @pac207_write_reg(%struct.gspca_dev* %75, i32 28, i32 1)
  %77 = call i32 @msleep(i32 10)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @pac207_write_reg(%struct.gspca_dev* %78, i32 64, i32 1)
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = getelementptr inbounds %struct.sd, %struct.sd* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  %82 = load %struct.sd*, %struct.sd** %3, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.sd*, %struct.sd** %3, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 3
  %86 = call i32 @atomic_set(i32* %85, i32 -1)
  ret i32 0
}

declare dso_local i32 @pac207_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @pac207_write_regs(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

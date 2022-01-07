; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_set_vflip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k4aa.c_s5k4aa_set_vflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32* }

@S5K4AA_PAGE_MAP_2 = common dso_local global i32 0, align 4
@VFLIP_IDX = common dso_local global i64 0, align 8
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Set vertical flip to %d\00", align 1
@S5K4AA_PAGE_MAP = common dso_local global i32 0, align 4
@S5K4AA_READ_MODE = common dso_local global i32 0, align 4
@s5k4aa_vflip_dmi_table = common dso_local global i32 0, align 4
@S5K4AA_RM_V_FLIP = common dso_local global i32 0, align 4
@S5K4AA_ROWSTART_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @s5k4aa_set_vflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4aa_set_vflip(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %6, align 8
  %12 = load %struct.sd*, %struct.sd** %6, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @S5K4AA_PAGE_MAP_2, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i64, i64* @VFLIP_IDX, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @D_V4L2, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @PDEBUG(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.sd*, %struct.sd** %6, align 8
  %24 = load i32, i32* @S5K4AA_PAGE_MAP, align 4
  %25 = call i32 @m5602_write_sensor(%struct.sd* %23, i32 %24, i32* %8, i32 1)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %85

30:                                               ; preds = %2
  %31 = load %struct.sd*, %struct.sd** %6, align 8
  %32 = load i32, i32* @S5K4AA_READ_MODE, align 4
  %33 = call i32 @m5602_read_sensor(%struct.sd* %31, i32 %32, i32* %8, i32 1)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %85

38:                                               ; preds = %30
  %39 = load i32, i32* @s5k4aa_vflip_dmi_table, align 4
  %40 = call i64 @dmi_check_system(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @S5K4AA_RM_V_FLIP, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 1
  %54 = shl i32 %53, 7
  %55 = or i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.sd*, %struct.sd** %6, align 8
  %57 = load i32, i32* @S5K4AA_READ_MODE, align 4
  %58 = call i32 @m5602_write_sensor(%struct.sd* %56, i32 %57, i32* %8, i32 1)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %47
  %64 = load %struct.sd*, %struct.sd** %6, align 8
  %65 = load i32, i32* @S5K4AA_ROWSTART_LO, align 4
  %66 = call i32 @m5602_read_sensor(%struct.sd* %64, i32 %65, i32* %8, i32 1)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %85

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 254
  store i32 %76, i32* %8, align 4
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.sd*, %struct.sd** %6, align 8
  %82 = load i32, i32* @S5K4AA_ROWSTART_LO, align 4
  %83 = call i32 @m5602_write_sensor(%struct.sd* %81, i32 %82, i32* %8, i32 1)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %69, %61, %36, %28
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i64 @dmi_check_system(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

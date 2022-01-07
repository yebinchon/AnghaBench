; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_init_super_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_init_super_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@SUP_BLK_TUNE2 = common dso_local global i32 0, align 4
@SUP_BLK_TUNE1 = common dso_local global i32 0, align 4
@SUP_BLK_PLL2 = common dso_local global i32 0, align 4
@SUP_BLK_PWRDN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c": Init Super Block failed in send cmd\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c": Init Super Block failed in receive cmd\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c": Init Super Block force break in loop !!!!\0A\00", align 1
@SUP_BLK_TUNE3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_init_super_block(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %7, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %13 = load i32, i32* @SUP_BLK_TUNE2, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @afe_write_byte(%struct.cx231xx* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %99

20:                                               ; preds = %2
  %21 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %22 = load i32, i32* @SUP_BLK_TUNE2, align 4
  %23 = call i32 @afe_read_byte(%struct.cx231xx* %21, i32 %22, i32* %8)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %99

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 768
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, 64
  store i32 %33, i32* %7, align 4
  %34 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %35 = load i32, i32* @SUP_BLK_TUNE1, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @afe_write_byte(%struct.cx231xx* %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %99

42:                                               ; preds = %28
  %43 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %44 = load i32, i32* @SUP_BLK_PLL2, align 4
  %45 = call i32 @afe_write_byte(%struct.cx231xx* %43, i32 %44, i32 15)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %99

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %79, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 24
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  %55 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %56 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %57 = call i32 @afe_write_byte(%struct.cx231xx* %55, i32 %56, i32 24)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @cx231xx_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %80

62:                                               ; preds = %54
  %63 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %64 = load i32, i32* @SUP_BLK_PWRDN, align 4
  %65 = call i32 @afe_read_byte(%struct.cx231xx* %63, i32 %64, i32* %8)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, 255
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @cx231xx_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %80

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 @cx231xx_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %80

79:                                               ; preds = %72
  br label %51

80:                                               ; preds = %77, %70, %60, %51
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %99

85:                                               ; preds = %80
  %86 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %87 = load i32, i32* @SUP_BLK_TUNE3, align 4
  %88 = call i32 @afe_write_byte(%struct.cx231xx* %86, i32 %87, i32 64)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %99

93:                                               ; preds = %85
  %94 = call i32 @msleep(i32 5)
  %95 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %96 = load i32, i32* @SUP_BLK_TUNE3, align 4
  %97 = call i32 @afe_write_byte(%struct.cx231xx* %95, i32 %96, i32 0)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %93, %91, %83, %48, %40, %26, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @afe_write_byte(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @afe_read_byte(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @cx231xx_info(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

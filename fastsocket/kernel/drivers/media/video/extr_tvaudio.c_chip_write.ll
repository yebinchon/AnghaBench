; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_chip_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"chip_write: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"I/O error (write 0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Tried to access a non-existent register: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"chip_write: reg%d=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"I/O error (write reg%d=0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*, i32, i32)* @chip_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chip_write(%struct.CHIPSTATE* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.CHIPSTATE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_subdev*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca [2 x i8], align 1
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %12 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %11, i32 0, i32 1
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %8, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = load i32, i32* @debug, align 4
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %18, %struct.v4l2_subdev* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %24 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %22, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %29, i8* %30, align 1
  %31 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %33 = call i32 @i2c_master_send(%struct.i2c_client* %31, i8* %32, i32 1)
  %34 = icmp ne i32 1, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_warn(%struct.v4l2_subdev* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %4, align 4
  br label %87

39:                                               ; preds = %17
  br label %86

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %44 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = icmp sge i32 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @v4l2_info(%struct.v4l2_subdev* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %87

55:                                               ; preds = %40
  %56 = load i32, i32* @debug, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) @v4l2_dbg(i32 1, i32 %56, %struct.v4l2_subdev* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %5, align 8
  %63 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load i32, i32* %6, align 4
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %71, i8* %72, align 1
  %73 = load i32, i32* %7, align 4
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %74, i8* %75, align 1
  %76 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %77 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %78 = call i32 @i2c_master_send(%struct.i2c_client* %76, i8* %77, i32 2)
  %79 = icmp ne i32 2, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %55
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (%struct.v4l2_subdev*, i8*, i32, ...) @v4l2_warn(%struct.v4l2_subdev* %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83)
  store i32 -1, i32* %4, align 4
  br label %87

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85, %39
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %80, %49, %35
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

declare dso_local i32 @v4l2_warn(%struct.v4l2_subdev*, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

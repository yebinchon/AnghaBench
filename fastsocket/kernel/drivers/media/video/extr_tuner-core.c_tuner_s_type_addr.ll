; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_s_type_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_s_type_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tuner_setup = type { i64, i32, i64, i32, i32 }
%struct.tuner = type { i64, i32 }
%struct.i2c_client = type { i64 }

@.str = private unnamed_addr constant [76 x i8] c"Calling set_type_addr for type=%d, addr=0x%02x, mode=0x%02x, config=0x%02x\0A\00", align 1
@UNSET = common dso_local global i64 0, align 8
@ADDR_UNSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [93 x i8] c"set addr discarded for type %i, mask %x. Asked to change tuner at addr 0x%02x, with mask %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.tuner_setup*)* @tuner_s_type_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_s_type_addr(%struct.v4l2_subdev* %0, %struct.tuner_setup* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.tuner_setup*, align 8
  %5 = alloca %struct.tuner*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.tuner_setup* %1, %struct.tuner_setup** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %7)
  store %struct.tuner* %8, %struct.tuner** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %12 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %15 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %18 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %21 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @tuner_dbg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16, i64 %19, i32 %22)
  %24 = load %struct.tuner*, %struct.tuner** %5, align 8
  %25 = getelementptr inbounds %struct.tuner, %struct.tuner* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNSET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %2
  %30 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %31 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @ADDR_UNSET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.tuner*, %struct.tuner** %5, align 8
  %38 = getelementptr inbounds %struct.tuner, %struct.tuner* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %42 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %40, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %36, %29, %2
  %47 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %48 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %46, %36
  %56 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %57 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %58 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %61 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %65 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %68 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @set_type(%struct.i2c_client* %56, i64 %59, i32 %63, i32 %66, i32 %69)
  br label %87

71:                                               ; preds = %46
  %72 = load %struct.tuner*, %struct.tuner** %5, align 8
  %73 = getelementptr inbounds %struct.tuner, %struct.tuner* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tuner*, %struct.tuner** %5, align 8
  %76 = getelementptr inbounds %struct.tuner, %struct.tuner* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %79 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.tuner_setup*, %struct.tuner_setup** %4, align 8
  %83 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @tuner_dbg(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %77, i64 %81, i32 %85)
  br label %87

87:                                               ; preds = %71, %55
  ret i32 0
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @tuner_dbg(i8*, i64, i32, i64, i32) #1

declare dso_local i32 @set_type(%struct.i2c_client*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_om6802_sensor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_om6802_sensor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@__const.om6802_sensor_init.val = private unnamed_addr constant [6 x i32] [i32 98, i32 0, i32 100, i32 0, i32 96, i32 5], align 16
@om6802_sensor_init.sensor_init = internal constant [29 x i32] [i32 223, i32 109, i32 221, i32 24, i32 90, i32 224, i32 92, i32 7, i32 93, i32 176, i32 94, i32 30, i32 96, i32 113, i32 239, i32 0, i32 233, i32 0, i32 234, i32 0, i32 144, i32 36, i32 145, i32 178, i32 130, i32 50, i32 253, i32 65, i32 0], align 16
@sensor_reset = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Bad sensor reset %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @om6802_sensor_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @om6802_sensor_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([6 x i32]* @__const.om6802_sensor_init.val to i8*), i64 24, i1 false)
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = load i32*, i32** @sensor_reset, align 8
  %10 = call i32 @reg_w_buf(%struct.gspca_dev* %8, i32* %9, i32 8)
  %11 = call i32 @msleep(i32 100)
  store i32 4, i32* %3, align 4
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @reg_r(%struct.gspca_dev* %17, i32 96)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %25

23:                                               ; preds = %16
  %24 = call i32 @msleep(i32 100)
  br label %12

25:                                               ; preds = %22, %12
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @reg_r(%struct.gspca_dev* %26, i32 99)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 23
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %25
  store i32* getelementptr inbounds ([29 x i32], [29 x i32]* @om6802_sensor_init.sensor_init, i64 0, i64 0), i32** %4, align 8
  br label %34

34:                                               ; preds = %70, %33
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %39, align 4
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %4, align 8
  %45 = load i32, i32* %43, align 4
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @reg_w(%struct.gspca_dev* %51, i32 15488)
  br label %53

53:                                               ; preds = %50, %38
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %56 = call i32 @reg_w_buf(%struct.gspca_dev* %54, i32* %55, i32 24)
  store i32 4, i32* %3, align 4
  br label %57

57:                                               ; preds = %69, %53
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %3, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = call i32 @msleep(i32 15)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @reg_r(%struct.gspca_dev* %63, i32 96)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 1
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %70

69:                                               ; preds = %61
  br label %57

70:                                               ; preds = %68, %57
  br label %34

71:                                               ; preds = %34
  %72 = call i32 @msleep(i32 15)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %74 = call i32 @reg_w(%struct.gspca_dev* %73, i32 15488)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #2

declare dso_local i32 @err(i8*, i32) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_grundig_29504_401_tuner_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_grundig_29504_401_tuner_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @grundig_29504_401_tuner_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grundig_29504_401_tuner_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.av7110*, %struct.av7110** %16, align 8
  store %struct.av7110* %17, %struct.av7110** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i32 97, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 16, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 36125000, %25
  %27 = sdiv i32 %26, 166666
  store i32 %27, i32* %7, align 4
  store i32 136, i32* %8, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 175000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 2, i32* %9, align 4
  br label %55

33:                                               ; preds = %2
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 390000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  br label %54

39:                                               ; preds = %33
  %40 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %41 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 470000000
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 2, i32* %9, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 750000000
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  br label %52

51:                                               ; preds = %45
  store i32 3, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %38
  br label %55

55:                                               ; preds = %54, %32
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %58, 175000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 14, i32* %10, align 4
  br label %69

61:                                               ; preds = %55
  %62 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %63 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 470000000
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 5, i32* %10, align 4
  br label %68

67:                                               ; preds = %61
  store i32 3, i32* %10, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %60
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 127
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %72, i32* %73, align 16
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 10
  %79 = and i32 %78, 96
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 %83, 6
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %84, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %86, i32* %87, align 4
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %69
  %94 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %96, align 8
  %98 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %99 = bitcast %struct.dvb_frontend* %98 to %struct.dvb_frontend.0*
  %100 = call i32 %97(%struct.dvb_frontend.0* %99, i32 1)
  br label %101

101:                                              ; preds = %93, %69
  %102 = load %struct.av7110*, %struct.av7110** %6, align 8
  %103 = getelementptr inbounds %struct.av7110, %struct.av7110* %102, i32 0, i32 0
  %104 = call i32 @i2c_transfer(i32* %103, %struct.i2c_msg* %12, i32 1)
  %105 = icmp ne i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

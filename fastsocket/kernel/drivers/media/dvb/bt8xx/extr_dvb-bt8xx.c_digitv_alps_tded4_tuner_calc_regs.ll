; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_digitv_alps_tded4_tuner_calc_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dvb-bt8xx.c_digitv_alps_tded4_tuner_calc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"frequency %u, div %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32*, i32)* @digitv_alps_tded4_tuner_calc_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digitv_alps_tded4_tuner_calc_regs(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.dvb_frontend_parameters*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dvb_ofdm_parameters*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %14, %struct.dvb_ofdm_parameters** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %77

20:                                               ; preds = %4
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 83333
  %25 = mul nsw i32 %24, 3
  %26 = sdiv i32 %25, 500000
  %27 = load i32, i32* @IF_FREQUENCYx6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 97, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 127
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 133, i32* %41, align 4
  %42 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %48 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 470000000
  br i1 %50, label %51, label %54

51:                                               ; preds = %20
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 2, i32* %53, align 4
  br label %66

54:                                               ; preds = %20
  %55 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 823000000
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 136, i32* %61, align 4
  br label %65

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32 8, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %11, align 8
  %68 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 8
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, 4
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %66
  store i32 5, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %17
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

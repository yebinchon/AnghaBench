; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-fe.c_compute_tps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_cinergyT2-fe.c_compute_tps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend_parameters = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend_parameters*)* @compute_tps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_tps(%struct.dvb_frontend_parameters* %0) #0 {
  %2 = alloca %struct.dvb_frontend_parameters*, align 8
  %3 = alloca %struct.dvb_ofdm_parameters*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend_parameters* %0, %struct.dvb_frontend_parameters** %2, align 8
  %5 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %7, %struct.dvb_ofdm_parameters** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %24 [
    i32 145, label %11
    i32 144, label %14
    i32 143, label %17
    i32 142, label %20
    i32 146, label %23
    i32 141, label %23
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, 128
  store i32 %13, i32* %4, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, 256
  store i32 %16, i32* %4, align 4
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, 384
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 512
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %1, %1
  br label %24

24:                                               ; preds = %1, %23
  br label %25

25:                                               ; preds = %24, %20, %17, %14, %11
  %26 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %42 [
    i32 145, label %29
    i32 144, label %32
    i32 143, label %35
    i32 142, label %38
    i32 146, label %41
    i32 141, label %41
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, 16
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, 32
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 48
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, 64
  store i32 %40, i32* %4, align 4
  br label %43

41:                                               ; preds = %25, %25
  br label %42

42:                                               ; preds = %25, %41
  br label %43

43:                                               ; preds = %42, %38, %35, %32, %29
  %44 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %54 [
    i32 132, label %47
    i32 131, label %50
    i32 130, label %53
  ]

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, 8192
  store i32 %49, i32* %4, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, 16384
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %43, %53
  br label %55

55:                                               ; preds = %54, %50, %47
  %56 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %3, align 8
  %57 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %63 [
    i32 128, label %59
    i32 129, label %62
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %55, %62
  br label %64

64:                                               ; preds = %63, %59
  %65 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %78 [
    i32 140, label %68
    i32 137, label %71
    i32 138, label %74
    i32 139, label %77
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, 4
  store i32 %70, i32* %4, align 4
  br label %79

71:                                               ; preds = %64
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, 8
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %64
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, 12
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %64, %77
  br label %79

79:                                               ; preds = %78, %74, %71, %68
  %80 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %93 [
    i32 136, label %83
    i32 135, label %86
    i32 134, label %89
    i32 133, label %92
  ]

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = or i32 %84, 1024
  store i32 %85, i32* %4, align 4
  br label %94

86:                                               ; preds = %79
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, 2048
  store i32 %88, i32* %4, align 4
  br label %94

89:                                               ; preds = %79
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, 3072
  store i32 %91, i32* %4, align 4
  br label %94

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %79, %92
  br label %94

94:                                               ; preds = %93, %89, %86, %83
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

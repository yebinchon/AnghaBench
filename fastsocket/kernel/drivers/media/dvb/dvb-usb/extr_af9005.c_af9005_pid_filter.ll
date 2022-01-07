; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_pid_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"set pid filter, index %d, pid %x, onoff %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"first pid set, enable pid table\0A\00", align 1
@XD_MP2IF_PID_DATA_L = common dso_local global i32 0, align 4
@XD_MP2IF_PID_DATA_H = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"last pid unset, disable pid table\0A\00", align 1
@XD_MP2IF_PID_IDX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"set pid ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*, i32, i32, i32)* @af9005_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_pid_filter(%struct.dvb_usb_adapter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 31
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %4
  %21 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @af9005_pid_filter_control(%struct.dvb_usb_adapter* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %91

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XD_MP2IF_PID_DATA_L, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @af9005_write_ofdm_register(i32 %38, i32 %39, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %35
  %48 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @XD_MP2IF_PID_DATA_H, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 8
  %54 = call i32 @af9005_write_ofdm_register(i32 %50, i32 %51, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %47
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, 96
  store i32 %61, i32* %10, align 4
  br label %78

62:                                               ; preds = %4
  %63 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @af9005_pid_filter_control(%struct.dvb_usb_adapter* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %91

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %62
  br label %78

78:                                               ; preds = %77, %59
  %79 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %6, align 8
  %80 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @XD_MP2IF_PID_IDX, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @af9005_write_ofdm_register(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %91

89:                                               ; preds = %78
  %90 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %87, %74, %57, %45, %32
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @af9005_pid_filter_control(%struct.dvb_usb_adapter*, i32) #1

declare dso_local i32 @af9005_write_ofdm_register(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

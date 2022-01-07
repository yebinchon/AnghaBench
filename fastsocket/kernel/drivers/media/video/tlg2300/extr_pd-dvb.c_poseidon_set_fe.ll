; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_poseidon_set_fe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-dvb.c_poseidon_set_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.poseidon* }
%struct.poseidon = type { i32, %struct.pd_dvb_adapter }
%struct.pd_dvb_adapter = type { i64, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@dvb_bandwidth_length = common dso_local global i64 0, align 8
@dvb_bandwidth = common dso_local global i64** null, align 8
@TUNE_FREQ_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"error line\00", align 1
@DVBT_BANDW_SEL = common dso_local global i32 0, align 4
@TAKE_REQUEST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @poseidon_set_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_set_fe(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.poseidon*, align 8
  %11 = alloca %struct.pd_dvb_adapter*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 -1, i64* %9, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.poseidon*, %struct.poseidon** %13, align 8
  store %struct.poseidon* %14, %struct.poseidon** %10, align 8
  %15 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %16 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %15, i32 0, i32 1
  store %struct.pd_dvb_adapter* %16, %struct.pd_dvb_adapter** %11, align 8
  %17 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %18 = call i64 @in_hibernation(%struct.poseidon* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %122

23:                                               ; preds = %2
  %24 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %25 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %52, %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @dvb_bandwidth_length, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64**, i64*** @dvb_bandwidth, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i64*, i64** %37, i64 %38
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %36, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i64**, i64*** @dvb_bandwidth, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64*, i64** %45, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %44, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %27

55:                                               ; preds = %27
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %11, align 8
  %61 = call i64 @check_scan_ok(i32 %58, i64 %59, %struct.pd_dvb_adapter* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %115

63:                                               ; preds = %55
  %64 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %65 = load i32, i32* @TUNE_FREQ_SELECT, align 4
  %66 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %68, 1000
  %70 = sext i32 %69 to i64
  %71 = call i64 @send_set_req(%struct.poseidon* %64, i32 %65, i64 %70, i64* %7)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = or i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = call i32 @log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %116

78:                                               ; preds = %63
  %79 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %80 = load i32, i32* @DVBT_BANDW_SEL, align 4
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @send_set_req(%struct.poseidon* %79, i32 %80, i64 %81, i64* %7)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %7, align 8
  %85 = or i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = call i32 @log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %116

89:                                               ; preds = %78
  %90 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %91 = load i32, i32* @TAKE_REQUEST, align 4
  %92 = call i64 @send_set_req(%struct.poseidon* %90, i32 %91, i64 0, i64* %7)
  store i64 %92, i64* %6, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = or i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = call i32 @log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %116

99:                                               ; preds = %89
  %100 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %11, align 8
  %101 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %100, i32 0, i32 3
  %102 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %103 = call i32 @memcpy(i32* %101, %struct.dvb_frontend_parameters* %102, i32 16)
  %104 = load i64, i64* %9, align 8
  %105 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %11, align 8
  %106 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %108 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %11, align 8
  %111 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @jiffies, align 4
  %113 = load %struct.pd_dvb_adapter*, %struct.pd_dvb_adapter** %11, align 8
  %114 = getelementptr inbounds %struct.pd_dvb_adapter, %struct.pd_dvb_adapter* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  br label %115

115:                                              ; preds = %99, %55
  br label %116

116:                                              ; preds = %115, %97, %87, %76
  %117 = load %struct.poseidon*, %struct.poseidon** %10, align 8
  %118 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i64, i64* %6, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %116, %20
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i64 @in_hibernation(%struct.poseidon*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @check_scan_ok(i32, i64, %struct.pd_dvb_adapter*) #1

declare dso_local i64 @send_set_req(%struct.poseidon*, i32, i64, i64*) #1

declare dso_local i32 @log(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.dvb_frontend_parameters*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_ver_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_ver_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.vio_ver_info = type { i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"GOT VERSION ACK maj[%u] min[%u] devclass[%u]\0A\00", align 1
@VIO_HS_GOTVERS = common dso_local global i32 0, align 4
@VIO_SUBTYPE_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_ver_info*)* @process_ver_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ver_ack(%struct.vio_driver_state* %0, %struct.vio_ver_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_ver_info*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_ver_info* %1, %struct.vio_ver_info** %5, align 8
  %6 = load i32, i32* @HS, align 4
  %7 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %8 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %11 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %14 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @viodbg(i32 %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %12, i32 %15)
  %17 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %18 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VIO_HS_GOTVERS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  %24 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %25 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %29 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %34 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %38 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %32, %23
  %42 = load i32, i32* @VIO_SUBTYPE_NACK, align 4
  %43 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %44 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %47 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %48 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %47, i32 0, i32 2
  %49 = call i32 @send_ctrl(%struct.vio_driver_state* %46, %struct.TYPE_4__* %48, i32 24)
  %50 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %51 = call i32 @handshake_failure(%struct.vio_driver_state* %50)
  store i32 %51, i32* %3, align 4
  br label %83

52:                                               ; preds = %32
  br label %69

53:                                               ; preds = %2
  %54 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %55 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %58 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.vio_ver_info*, %struct.vio_ver_info** %5, align 8
  %61 = getelementptr inbounds %struct.vio_ver_info, %struct.vio_ver_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %64 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load i32, i32* @VIO_HS_GOTVERS, align 4
  %67 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %68 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %53, %52
  %70 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %71 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %81 [
    i32 128, label %73
    i32 129, label %73
  ]

73:                                               ; preds = %69, %69
  %74 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %75 = call i32 @send_attr(%struct.vio_driver_state* %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %79 = call i32 @handshake_failure(%struct.vio_driver_state* %78)
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %73
  br label %82

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %80
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %77, %41
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @viodbg(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @send_ctrl(%struct.vio_driver_state*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

declare dso_local i32 @send_attr(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

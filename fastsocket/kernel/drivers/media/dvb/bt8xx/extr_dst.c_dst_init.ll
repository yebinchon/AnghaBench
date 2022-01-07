; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i32, i64, i32, i32, i32, i32, i64, i32, i32, i32 }

@dst_init.sat_tuna_188 = internal global [10 x i32] [i32 9, i32 0, i32 3, i32 182, i32 1, i32 0, i32 115, i32 33, i32 0, i32 0], align 16
@dst_init.sat_tuna_204 = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 85, i32 189, i32 80, i32 0, i32 0], align 16
@dst_init.ter_tuna_188 = internal global [10 x i32] [i32 9, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@dst_init.ter_tuna_204 = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@dst_init.cab_tuna_188 = internal global [10 x i32] [i32 9, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@dst_init.cab_tuna_204 = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@dst_init.atsc_tuner = internal global [10 x i32] [i32 0, i32 0, i32 3, i32 182, i32 1, i32 7, i32 0, i32 0, i32 0, i32 0], align 16
@INVERSION_OFF = common dso_local global i32 0, align 4
@SEC_VOLTAGE_13 = common dso_local global i32 0, align 4
@SEC_TONE_OFF = common dso_local global i32 0, align 4
@BANDWIDTH_7_MHZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@DST_TYPE_IS_ATSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dst_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  store %struct.dst_state* %6, %struct.dst_state** %3, align 8
  %7 = load i32, i32* @INVERSION_OFF, align 4
  %8 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %9 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @SEC_VOLTAGE_13, align 4
  %11 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %12 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @SEC_TONE_OFF, align 4
  %14 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %15 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %17 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %19 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %18, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = load i32, i32* @BANDWIDTH_7_MHZ, align 4
  %21 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %22 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @jiffies, align 4
  %24 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %25 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %27 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %1
  %32 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %36 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.sat_tuna_188, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.sat_tuna_204, i64 0, i64 0)
  %43 = call i32 @memcpy(i32 %34, i32* %42, i32 40)
  br label %96

44:                                               ; preds = %1
  %45 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %46 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %52 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %55 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.ter_tuna_188, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.ter_tuna_204, i64 0, i64 0)
  %62 = call i32 @memcpy(i32 %53, i32* %61, i32 40)
  br label %95

63:                                               ; preds = %44
  %64 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %65 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %71 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %74 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.cab_tuna_188, i64 0, i64 0), i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.cab_tuna_204, i64 0, i64 0)
  %81 = call i32 @memcpy(i32 %72, i32* %80, i32 40)
  br label %94

82:                                               ; preds = %63
  %83 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %84 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DST_TYPE_IS_ATSC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %90 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32 %91, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @dst_init.atsc_tuner, i64 0, i64 0), i32 40)
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %69
  br label %95

95:                                               ; preds = %94, %50
  br label %96

96:                                               ; preds = %95, %31
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

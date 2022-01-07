; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ocores.c_ocores_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ocores.c_ocores_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32 }
%struct.ocores_i2c = type { i32, i64, i32, %struct.i2c_msg*, i64 }

@STATE_START = common dso_local global i64 0, align 8
@OCI2C_DATA = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_START = common dso_local global i32 0, align 4
@STATE_ERROR = common dso_local global i64 0, align 8
@STATE_DONE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @ocores_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocores_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocores_i2c*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = call %struct.ocores_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %9)
  store %struct.ocores_i2c* %10, %struct.ocores_i2c** %8, align 8
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %12 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %13 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %12, i32 0, i32 3
  store %struct.i2c_msg* %11, %struct.i2c_msg** %13, align 8
  %14 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %15 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %18 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @STATE_START, align 8
  %20 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %21 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %23 = load i32, i32* @OCI2C_DATA, align 4
  %24 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %25 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %24, i32 0, i32 3
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 1
  %30 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %31 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %30, i32 0, i32 3
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @I2C_M_RD, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = or i32 %29, %39
  %41 = call i32 @oc_setreg(%struct.ocores_i2c* %22, i32 %23, i32 %40)
  %42 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %43 = load i32, i32* @OCI2C_CMD, align 4
  %44 = load i32, i32* @OCI2C_CMD_START, align 4
  %45 = call i32 @oc_setreg(%struct.ocores_i2c* %42, i32 %43, i32 %44)
  %46 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %47 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %50 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STATE_ERROR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %3
  %55 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %56 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STATE_DONE, align 8
  %59 = icmp eq i64 %57, %58
  br label %60

60:                                               ; preds = %54, %3
  %61 = phi i1 [ true, %3 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @HZ, align 4
  %64 = call i64 @wait_event_timeout(i32 %48, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.ocores_i2c*, %struct.ocores_i2c** %8, align 8
  %68 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @STATE_DONE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  br label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  br label %77

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ]
  store i32 %78, i32* %4, align 4
  br label %82

79:                                               ; preds = %60
  %80 = load i32, i32* @ETIMEDOUT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79, %77
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.ocores_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

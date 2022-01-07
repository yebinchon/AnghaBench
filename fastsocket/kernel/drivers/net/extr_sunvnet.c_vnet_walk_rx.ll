; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_walk_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_vnet_walk_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.vio_driver_state }
%struct.vio_driver_state = type { i32 }
%struct.vio_dring_state = type { i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"vnet_walk_rx start[%08x] end[%08x]\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@VIO_DRING_ACTIVE = common dso_local global i32 0, align 4
@VIO_DRING_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnet_port*, %struct.vio_dring_state*, i64, i64)* @vnet_walk_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnet_walk_rx(%struct.vnet_port* %0, %struct.vio_dring_state* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca %struct.vio_dring_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vio_driver_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnet_port* %0, %struct.vnet_port** %6, align 8
  store %struct.vio_dring_state* %1, %struct.vio_dring_state** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %16 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %15, i32 0, i32 0
  store %struct.vio_driver_state* %16, %struct.vio_driver_state** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %22 = call i64 @prev_idx(i64 %20, %struct.vio_dring_state* %21)
  br label %27

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %26 = call i64 @next_idx(i64 %24, %struct.vio_dring_state* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi i64 [ %22, %19 ], [ %26, %23 ]
  store i64 %28, i64* %9, align 8
  %29 = load i32, i32* @DATA, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @viodbg(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %84, %27
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  %38 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %39 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @vnet_walk_rx_one(%struct.vnet_port* %38, %struct.vio_dring_state* %39, i64 %40, i32* %13)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ECONNRESET, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %5, align 4
  br label %103

48:                                               ; preds = %37
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %85

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* %8, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %63 = call i64 @next_idx(i64 %61, %struct.vio_dring_state* %62)
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %58
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %72 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @VIO_DRING_ACTIVE, align 4
  %76 = call i32 @vnet_send_ack(%struct.vnet_port* %71, %struct.vio_dring_state* %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @ECONNRESET, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %5, align 4
  br label %103

83:                                               ; preds = %70
  store i32 -1, i32* %11, align 4
  br label %84

84:                                               ; preds = %83, %66, %58
  br label %33

85:                                               ; preds = %51, %33
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, -1
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %94 = call i64 @prev_idx(i64 %92, %struct.vio_dring_state* %93)
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %12, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %91, %85
  %97 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %98 = load %struct.vio_dring_state*, %struct.vio_dring_state** %7, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @VIO_DRING_STOPPED, align 4
  %102 = call i32 @vnet_send_ack(%struct.vnet_port* %97, %struct.vio_dring_state* %98, i32 %99, i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %96, %81, %46
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i64 @prev_idx(i64, %struct.vio_dring_state*) #1

declare dso_local i64 @next_idx(i64, %struct.vio_dring_state*) #1

declare dso_local i32 @viodbg(i32, i8*, i64, i64) #1

declare dso_local i32 @vnet_walk_rx_one(%struct.vnet_port*, %struct.vio_dring_state*, i64, i32*) #1

declare dso_local i32 @vnet_send_ack(%struct.vnet_port*, %struct.vio_dring_state*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

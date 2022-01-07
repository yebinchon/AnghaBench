; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_hss_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_hss_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, i32 }
%struct.msg = type { i32, i32, i32, i32, i32 }

@PKT_NUM_PIPES_WRITE = common dso_local global i32 0, align 4
@PKT_NUM_PIPES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HSS_SET_PKT_PIPES\00", align 1
@PKT_PIPE_FIFO_SIZEW_WRITE = common dso_local global i32 0, align 4
@PKT_PIPE_FIFO_SIZEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"HSS_SET_PKT_FIFO\00", align 1
@PKT_PIPE_MODE_WRITE = common dso_local global i32 0, align 4
@NPE_PKT_MODE_HDLC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"HSS_SET_PKT_MODE\00", align 1
@PKT_PIPE_RX_SIZE_WRITE = common dso_local global i32 0, align 4
@HDLC_MAX_MRU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"HSS_SET_PKT_RX_SIZE\00", align 1
@PKT_PIPE_IDLE_PATTERN_WRITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"HSS_SET_PKT_IDLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @hss_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hss_load_firmware(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca %struct.msg, align 4
  %5 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %3, align 8
  %6 = load %struct.port*, %struct.port** %3, align 8
  %7 = getelementptr inbounds %struct.port, %struct.port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.port*, %struct.port** %3, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @npe_running(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %11
  %18 = load %struct.port*, %struct.port** %3, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.port*, %struct.port** %3, align 8
  %22 = getelementptr inbounds %struct.port, %struct.port* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @npe_name(i32 %23)
  %25 = load %struct.port*, %struct.port** %3, align 8
  %26 = getelementptr inbounds %struct.port, %struct.port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @npe_load_firmware(i32 %20, i32 %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %69

32:                                               ; preds = %17, %11
  %33 = call i32 @memset(%struct.msg* %4, i32 0, i32 20)
  %34 = load i32, i32* @PKT_NUM_PIPES_WRITE, align 4
  %35 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.port*, %struct.port** %3, align 8
  %37 = getelementptr inbounds %struct.port, %struct.port* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @PKT_NUM_PIPES, align 4
  %41 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  %42 = load %struct.port*, %struct.port** %3, align 8
  %43 = call i32 @hss_npe_send(%struct.port* %42, %struct.msg* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @PKT_PIPE_FIFO_SIZEW_WRITE, align 4
  %45 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @PKT_PIPE_FIFO_SIZEW, align 4
  %47 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = load %struct.port*, %struct.port** %3, align 8
  %49 = call i32 @hss_npe_send(%struct.port* %48, %struct.msg* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @PKT_PIPE_MODE_WRITE, align 4
  %51 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @NPE_PKT_MODE_HDLC, align 4
  %53 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load %struct.port*, %struct.port** %3, align 8
  %55 = call i32 @hss_npe_send(%struct.port* %54, %struct.msg* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @PKT_PIPE_RX_SIZE_WRITE, align 4
  %57 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @HDLC_MAX_MRU, align 4
  %59 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load %struct.port*, %struct.port** %3, align 8
  %61 = call i32 @hss_npe_send(%struct.port* %60, %struct.msg* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @PKT_PIPE_IDLE_PATTERN_WRITE, align 4
  %63 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 0
  store i32 2139062143, i32* %64, align 4
  %65 = load %struct.port*, %struct.port** %3, align 8
  %66 = call i32 @hss_npe_send(%struct.port* %65, %struct.msg* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %67 = load %struct.port*, %struct.port** %3, align 8
  %68 = getelementptr inbounds %struct.port, %struct.port* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %32, %30, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @npe_running(i32) #1

declare dso_local i32 @npe_load_firmware(i32, i32, i32) #1

declare dso_local i32 @npe_name(i32) #1

declare dso_local i32 @memset(%struct.msg*, i32, i32) #1

declare dso_local i32 @hss_npe_send(%struct.port*, %struct.msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_process_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_process_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@ERROR_PROCESSED = common dso_local global i32 0, align 4
@HOSTCC_FLOW_ATTN = common dso_local global i32 0, align 4
@HOSTCC_FLOW_ATTN_MBUF_LWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FLOW Attention error.  Resetting chip.\0A\00", align 1
@MSGINT_STATUS = common dso_local global i32 0, align 4
@MSGINT_STATUS_MSI_REQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MSI Status error.  Resetting chip.\0A\00", align 1
@RDMAC_STATUS = common dso_local global i32 0, align 4
@WDMAC_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"DMA Status error.  Resetting chip.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_process_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_process_error(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.tg3*, %struct.tg3** %2, align 8
  %6 = load i32, i32* @ERROR_PROCESSED, align 4
  %7 = call i64 @tg3_flag(%struct.tg3* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %60

10:                                               ; preds = %1
  %11 = load i32, i32* @HOSTCC_FLOW_ATTN, align 4
  %12 = call i32 @tr32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @HOSTCC_FLOW_ATTN_MBUF_LWM, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.tg3*, %struct.tg3** %2, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %10
  %24 = load i32, i32* @MSGINT_STATUS, align 4
  %25 = call i32 @tr32(i32 %24)
  %26 = load i32, i32* @MSGINT_STATUS_MSI_REQ, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.tg3*, %struct.tg3** %2, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* @RDMAC_STATUS, align 4
  %37 = call i32 @tr32(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @WDMAC_STATUS, align 4
  %41 = call i32 @tr32(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39, %35
  %44 = load %struct.tg3*, %struct.tg3** %2, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_err(i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %60

52:                                               ; preds = %48
  %53 = load %struct.tg3*, %struct.tg3** %2, align 8
  %54 = call i32 @tg3_dump_state(%struct.tg3* %53)
  %55 = load %struct.tg3*, %struct.tg3** %2, align 8
  %56 = load i32, i32* @ERROR_PROCESSED, align 4
  %57 = call i32 @tg3_flag_set(%struct.tg3* %55, i32 %56)
  %58 = load %struct.tg3*, %struct.tg3** %2, align 8
  %59 = call i32 @tg3_reset_task_schedule(%struct.tg3* %58)
  br label %60

60:                                               ; preds = %52, %51, %9
  ret void
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @tg3_dump_state(%struct.tg3*) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_reset_task_schedule(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

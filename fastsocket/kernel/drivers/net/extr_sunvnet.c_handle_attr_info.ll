; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_handle_attr_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunvnet.c_handle_attr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_net_attr_info = type { i64, i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"GOT NET ATTR INFO xmode[0x%x] atype[0x%x] addr[%llx] ackfreq[%u] mtu[%llu]\0A\00", align 1
@VIO_DRING_MODE = common dso_local global i64 0, align 8
@VNET_ADDR_ETHERMAC = common dso_local global i64 0, align 8
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"SEND NET ATTR NACK\0A\00", align 1
@VIO_SUBTYPE_NACK = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"SEND NET ATTR ACK\0A\00", align 1
@VIO_SUBTYPE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_net_attr_info*)* @handle_attr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_attr_info(%struct.vio_driver_state* %0, %struct.vio_net_attr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_net_attr_info*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_net_attr_info* %1, %struct.vio_net_attr_info** %5, align 8
  %6 = load i32, i32* @HS, align 4
  %7 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %8 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %11 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %14 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %17 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %20 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @viodbg(i32 %6, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %12, i64 %15, i32 %18, i64 %21)
  %23 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %24 = call i32 @vio_send_sid(%struct.vio_driver_state* %23)
  %25 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %26 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %29 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VIO_DRING_MODE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %2
  %34 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %35 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VNET_ADDR_ETHERMAC, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %41 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ETH_FRAME_LEN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39, %33, %2
  %46 = load i32, i32* @HS, align 4
  %47 = call i32 (i32, i8*, ...) @viodbg(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @VIO_SUBTYPE_NACK, align 4
  %49 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %50 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %53 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %54 = call i32 @vio_ldc_send(%struct.vio_driver_state* %52, %struct.vio_net_attr_info* %53, i32 48)
  %55 = load i32, i32* @ECONNRESET, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %67

57:                                               ; preds = %39
  %58 = load i32, i32* @HS, align 4
  %59 = call i32 (i32, i8*, ...) @viodbg(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @VIO_SUBTYPE_ACK, align 4
  %61 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %62 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %65 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %66 = call i32 @vio_ldc_send(%struct.vio_driver_state* %64, %struct.vio_net_attr_info* %65, i32 48)
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %45
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @viodbg(i32, i8*, ...) #1

declare dso_local i32 @vio_send_sid(%struct.vio_driver_state*) #1

declare dso_local i32 @vio_ldc_send(%struct.vio_driver_state*, %struct.vio_net_attr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

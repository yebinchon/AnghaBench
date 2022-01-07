; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_ppp.c_ppp_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_hdlc_ppp.c_ppp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ppp = type { %struct.proto* }
%struct.proto = type { i32, i32, %struct.TYPE_2__, %struct.net_device* }
%struct.TYPE_2__ = type { i64, i32 }

@IDX_COUNT = common dso_local global i32 0, align 4
@ppp_timer = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@PID_LCP = common dso_local global i32 0, align 4
@IDX_LCP = common dso_local global i64 0, align 8
@PID_IPCP = common dso_local global i32 0, align 4
@IDX_IPCP = common dso_local global i64 0, align 8
@PID_IPV6CP = common dso_local global i32 0, align 4
@IDX_IPV6CP = common dso_local global i64 0, align 8
@START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ppp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proto*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ppp* @get_ppp(%struct.net_device* %6)
  store %struct.ppp* %7, %struct.ppp** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IDX_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.ppp*, %struct.ppp** %3, align 8
  %14 = getelementptr inbounds %struct.ppp, %struct.ppp* %13, i32 0, i32 0
  %15 = load %struct.proto*, %struct.proto** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.proto, %struct.proto* %15, i64 %17
  store %struct.proto* %18, %struct.proto** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load %struct.proto*, %struct.proto** %5, align 8
  %21 = getelementptr inbounds %struct.proto, %struct.proto* %20, i32 0, i32 3
  store %struct.net_device* %19, %struct.net_device** %21, align 8
  %22 = load %struct.proto*, %struct.proto** %5, align 8
  %23 = getelementptr inbounds %struct.proto, %struct.proto* %22, i32 0, i32 2
  %24 = call i32 @init_timer(%struct.TYPE_2__* %23)
  %25 = load i32, i32* @ppp_timer, align 4
  %26 = load %struct.proto*, %struct.proto** %5, align 8
  %27 = getelementptr inbounds %struct.proto, %struct.proto* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.proto*, %struct.proto** %5, align 8
  %30 = ptrtoint %struct.proto* %29 to i64
  %31 = load %struct.proto*, %struct.proto** %5, align 8
  %32 = getelementptr inbounds %struct.proto, %struct.proto* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load i32, i32* @CLOSED, align 4
  %35 = load %struct.proto*, %struct.proto** %5, align 8
  %36 = getelementptr inbounds %struct.proto, %struct.proto* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %12
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load i32, i32* @PID_LCP, align 4
  %42 = load %struct.ppp*, %struct.ppp** %3, align 8
  %43 = getelementptr inbounds %struct.ppp, %struct.ppp* %42, i32 0, i32 0
  %44 = load %struct.proto*, %struct.proto** %43, align 8
  %45 = load i64, i64* @IDX_LCP, align 8
  %46 = getelementptr inbounds %struct.proto, %struct.proto* %44, i64 %45
  %47 = getelementptr inbounds %struct.proto, %struct.proto* %46, i32 0, i32 0
  store i32 %41, i32* %47, align 8
  %48 = load i32, i32* @PID_IPCP, align 4
  %49 = load %struct.ppp*, %struct.ppp** %3, align 8
  %50 = getelementptr inbounds %struct.ppp, %struct.ppp* %49, i32 0, i32 0
  %51 = load %struct.proto*, %struct.proto** %50, align 8
  %52 = load i64, i64* @IDX_IPCP, align 8
  %53 = getelementptr inbounds %struct.proto, %struct.proto* %51, i64 %52
  %54 = getelementptr inbounds %struct.proto, %struct.proto* %53, i32 0, i32 0
  store i32 %48, i32* %54, align 8
  %55 = load i32, i32* @PID_IPV6CP, align 4
  %56 = load %struct.ppp*, %struct.ppp** %3, align 8
  %57 = getelementptr inbounds %struct.ppp, %struct.ppp* %56, i32 0, i32 0
  %58 = load %struct.proto*, %struct.proto** %57, align 8
  %59 = load i64, i64* @IDX_IPV6CP, align 8
  %60 = getelementptr inbounds %struct.proto, %struct.proto* %58, i64 %59
  %61 = getelementptr inbounds %struct.proto, %struct.proto* %60, i32 0, i32 0
  store i32 %55, i32* %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load i32, i32* @PID_LCP, align 4
  %64 = load i32, i32* @START, align 4
  %65 = call i32 @ppp_cp_event(%struct.net_device* %62, i32 %63, i32 %64, i32 0, i32 0, i32 0, i32* null)
  ret void
}

declare dso_local %struct.ppp* @get_ppp(%struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @ppp_cp_event(%struct.net_device*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

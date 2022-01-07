; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_queue_update_ws.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_roq_queue_update_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32 (%struct.i2400m*, i32)* }
%struct.i2400m_roq = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_roq_data = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"(i2400m %p roq %p skb %p sn %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"SW BUG? queue_update_ws nsn %u (sn %u ws %u)\0A\00", align 1
@I2400M_RT_WARM = common dso_local global i32 0, align 4
@I2400M_RO_TYPE_PACKET_WS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"(i2400m %p roq %p skb %p sn %u) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32)* @i2400m_roq_queue_update_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_roq_queue_update_ws(%struct.i2400m* %0, %struct.i2400m_roq* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.i2400m_roq*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2400m_roq_data*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.i2400m_roq* %1, %struct.i2400m_roq** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %15 = call %struct.device* @i2400m_dev(%struct.i2400m* %14)
  store %struct.device* %15, %struct.device** %9, align 8
  %16 = load %struct.device*, %struct.device** %9, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %18 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @d_fnstart(i32 2, %struct.device* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %17, %struct.i2400m_roq* %18, %struct.sk_buff* %19, i32 %20)
  %22 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %23 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %22, i32 0, i32 1
  %24 = call i32 @skb_queue_len(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @__i2400m_roq_nsn(%struct.i2400m_roq* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %29 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp uge i32 %31, 1024
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %4
  %37 = load %struct.device*, %struct.device** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %41 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %42)
  %44 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %45 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %46 = call i32 @i2400m_roq_log_dump(%struct.i2400m* %44, %struct.i2400m_roq* %45)
  %47 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %48 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %47, i32 0, i32 0
  %49 = load i32 (%struct.i2400m*, i32)*, i32 (%struct.i2400m*, i32)** %48, align 8
  %50 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %51 = load i32, i32* @I2400M_RT_WARM, align 4
  %52 = call i32 %49(%struct.i2400m* %50, i32 %51)
  br label %90

53:                                               ; preds = %4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = bitcast i32* %58 to %struct.i2400m_roq_data*
  store %struct.i2400m_roq_data* %59, %struct.i2400m_roq_data** %13, align 8
  %60 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = load %struct.i2400m_roq_data*, %struct.i2400m_roq_data** %13, align 8
  %63 = getelementptr inbounds %struct.i2400m_roq_data, %struct.i2400m_roq_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @i2400m_net_erx(%struct.i2400m* %60, %struct.sk_buff* %61, i32 %64)
  br label %73

66:                                               ; preds = %53
  %67 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %68 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @__i2400m_roq_queue(%struct.i2400m* %67, %struct.i2400m_roq* %68, %struct.sk_buff* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %56
  %74 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %75 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  %78 = call i32 @__i2400m_roq_update_ws(%struct.i2400m* %74, %struct.i2400m_roq* %75, i32 %77)
  %79 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %80 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %81 = load i32, i32* @I2400M_RO_TYPE_PACKET_WS, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %87 = getelementptr inbounds %struct.i2400m_roq, %struct.i2400m_roq* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @i2400m_roq_log_add(%struct.i2400m* %79, %struct.i2400m_roq* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %73, %36
  %91 = load %struct.device*, %struct.device** %9, align 8
  %92 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %93 = load %struct.i2400m_roq*, %struct.i2400m_roq** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @d_fnend(i32 2, %struct.device* %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %92, %struct.i2400m_roq* %93, %struct.sk_buff* %94, i32 %95)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @__i2400m_roq_nsn(%struct.i2400m_roq*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @i2400m_roq_log_dump(%struct.i2400m*, %struct.i2400m_roq*) #1

declare dso_local i32 @i2400m_net_erx(%struct.i2400m*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__i2400m_roq_queue(%struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__i2400m_roq_update_ws(%struct.i2400m*, %struct.i2400m_roq*, i32) #1

declare dso_local i32 @i2400m_roq_log_add(%struct.i2400m*, %struct.i2400m_roq*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_roq*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

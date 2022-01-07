; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_post_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i32, i32 }
%struct.srp_iu = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_send_wr = type { i64, i32, i32, i32, %struct.ib_sge*, i32* }

@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_target_port*, %struct.srp_iu*, i32)* @srp_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_post_send(%struct.srp_target_port* %0, %struct.srp_iu* %1, i32 %2) #0 {
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca %struct.srp_iu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_sge, align 4
  %8 = alloca %struct.ib_send_wr, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  store %struct.srp_target_port* %0, %struct.srp_target_port** %4, align 8
  store %struct.srp_iu* %1, %struct.srp_iu** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.srp_iu*, %struct.srp_iu** %5, align 8
  %11 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 2
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %17 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.srp_iu*, %struct.srp_iu** %5, align 8
  %22 = ptrtoint %struct.srp_iu* %21 to i64
  %23 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 4
  store %struct.ib_sge* %7, %struct.ib_sge** %24, align 8
  %25 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @IB_WR_SEND, align 4
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %29 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %8, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %31 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ib_post_send(i32 %32, %struct.ib_send_wr* %8, %struct.ib_send_wr** %9)
  ret i32 %33
}

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, %struct.ib_send_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

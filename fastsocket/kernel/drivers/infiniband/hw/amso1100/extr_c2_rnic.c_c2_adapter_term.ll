; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_adapter_term.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_rnic.c_c2_adapter_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { i64 }
%struct.c2wr_init_req = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.c2wr = type { i32 }

@CCWR_TERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2_dev*)* @c2_adapter_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2_adapter_term(%struct.c2_dev* %0) #0 {
  %2 = alloca %struct.c2_dev*, align 8
  %3 = alloca %struct.c2wr_init_req, align 8
  store %struct.c2_dev* %0, %struct.c2_dev** %2, align 8
  %4 = call i32 @memset(%struct.c2wr_init_req* %3, i32 0, i32 8)
  %5 = load i32, i32* @CCWR_TERM, align 4
  %6 = call i32 @c2_wr_set_id(%struct.c2wr_init_req* %3, i32 %5)
  %7 = getelementptr inbounds %struct.c2wr_init_req, %struct.c2wr_init_req* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %10 = bitcast %struct.c2wr_init_req* %3 to %union.c2wr*
  %11 = call i32 @vq_send_wr(%struct.c2_dev* %9, %union.c2wr* %10)
  %12 = load %struct.c2_dev*, %struct.c2_dev** %2, align 8
  %13 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

declare dso_local i32 @memset(%struct.c2wr_init_req*, i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_init_req*, i32) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

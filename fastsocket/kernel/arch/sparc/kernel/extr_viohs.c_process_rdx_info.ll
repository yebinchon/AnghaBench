; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_rdx_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_rdx_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_rdx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"GOT RDX INFO\0A\00", align 1
@VIO_SUBTYPE_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SEND RDX ACK\0A\00", align 1
@VIO_HS_SENT_RDX_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_rdx*)* @process_rdx_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_rdx_info(%struct.vio_driver_state* %0, %struct.vio_rdx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_rdx*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_rdx* %1, %struct.vio_rdx** %5, align 8
  %6 = load i32, i32* @HS, align 4
  %7 = call i32 @viodbg(i32 %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @VIO_SUBTYPE_ACK, align 4
  %9 = load %struct.vio_rdx*, %struct.vio_rdx** %5, align 8
  %10 = getelementptr inbounds %struct.vio_rdx, %struct.vio_rdx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* @HS, align 4
  %13 = call i32 @viodbg(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %15 = load %struct.vio_rdx*, %struct.vio_rdx** %5, align 8
  %16 = getelementptr inbounds %struct.vio_rdx, %struct.vio_rdx* %15, i32 0, i32 0
  %17 = call i64 @send_ctrl(%struct.vio_driver_state* %14, %struct.TYPE_2__* %16, i32 4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %21 = call i32 @handshake_failure(%struct.vio_driver_state* %20)
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @VIO_HS_SENT_RDX_ACK, align 4
  %24 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %25 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @viodbg(i32, i8*) #1

declare dso_local i64 @send_ctrl(%struct.vio_driver_state*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_dreg_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_dreg_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i32, %struct.vio_dring_state* }
%struct.vio_dring_state = type { i64 }
%struct.vio_dring_register = type { i64, i32, i32, i32, i32 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"GOT DRING_REG ACK ident[%llx] ndesc[%u] dsz[%u] opt[0x%x] ncookies[%u]\0A\00", align 1
@VIO_DRIVER_TX_RING = common dso_local global i64 0, align 8
@VIO_DR_STATE_TXREQ = common dso_local global i32 0, align 4
@VIO_DR_STATE_TXREG = common dso_local global i32 0, align 4
@VIO_HS_SENT_RDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_dring_register*)* @process_dreg_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_dreg_ack(%struct.vio_driver_state* %0, %struct.vio_dring_register* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_dring_register*, align 8
  %6 = alloca %struct.vio_dring_state*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_dring_register* %1, %struct.vio_dring_register** %5, align 8
  %7 = load i32, i32* @HS, align 4
  %8 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %9 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %12 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %15 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %18 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %21 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @viodbg(i32 %7, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %25 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %24, i32 0, i32 2
  %26 = load %struct.vio_dring_state*, %struct.vio_dring_state** %25, align 8
  %27 = load i64, i64* @VIO_DRIVER_TX_RING, align 8
  %28 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %26, i64 %27
  store %struct.vio_dring_state* %28, %struct.vio_dring_state** %6, align 8
  %29 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %30 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VIO_DR_STATE_TXREQ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %37 = call i32 @handshake_failure(%struct.vio_driver_state* %36)
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %2
  %39 = load %struct.vio_dring_register*, %struct.vio_dring_register** %5, align 8
  %40 = getelementptr inbounds %struct.vio_dring_register, %struct.vio_dring_register* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vio_dring_state*, %struct.vio_dring_state** %6, align 8
  %43 = getelementptr inbounds %struct.vio_dring_state, %struct.vio_dring_state* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @VIO_DR_STATE_TXREG, align 4
  %45 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %46 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %50 = call i64 @all_drings_registered(%struct.vio_driver_state* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %38
  %53 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %54 = call i64 @send_rdx(%struct.vio_driver_state* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %58 = call i32 @handshake_failure(%struct.vio_driver_state* %57)
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load i32, i32* @VIO_HS_SENT_RDX, align 4
  %61 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %62 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %38
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56, %35
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @viodbg(i32, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

declare dso_local i64 @all_drings_registered(%struct.vio_driver_state*) #1

declare dso_local i64 @send_rdx(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

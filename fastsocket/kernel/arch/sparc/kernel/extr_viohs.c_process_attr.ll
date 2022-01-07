; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_process_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@VIO_HS_GOTVERS = common dso_local global i32 0, align 4
@VIO_HS_GOT_ATTR = common dso_local global i32 0, align 4
@VIO_DR_STATE_TXREQ = common dso_local global i32 0, align 4
@VIO_HS_SENT_DREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, i8*)* @process_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_attr(%struct.vio_driver_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %8 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VIO_HS_GOTVERS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %15 = call i32 @handshake_failure(%struct.vio_driver_state* %14)
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %2
  %17 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %18 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.vio_driver_state*, i8*)**
  %22 = load i32 (%struct.vio_driver_state*, i8*)*, i32 (%struct.vio_driver_state*, i8*)** %21, align 8
  %23 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 %22(%struct.vio_driver_state* %23, i8* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %30 = call i32 @handshake_failure(%struct.vio_driver_state* %29)
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %16
  %32 = load i32, i32* @VIO_HS_GOT_ATTR, align 4
  %33 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %34 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %38 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VIO_DR_STATE_TXREQ, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %31
  %44 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %45 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VIO_HS_SENT_DREG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %43
  %51 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %52 = call i64 @send_dreg(%struct.vio_driver_state* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %56 = call i32 @handshake_failure(%struct.vio_driver_state* %55)
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %50
  %58 = load i32, i32* @VIO_HS_SENT_DREG, align 4
  %59 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %60 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %57, %43, %31
  br label %64

64:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %54, %28, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @handshake_failure(%struct.vio_driver_state*) #1

declare dso_local i64 @send_dreg(%struct.vio_driver_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

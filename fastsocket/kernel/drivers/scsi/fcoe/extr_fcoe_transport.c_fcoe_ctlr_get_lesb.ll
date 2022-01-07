; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_ctlr_get_lesb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_transport.c_fcoe_ctlr_get_lesb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.fcoe_ctlr = type { i32 }
%struct.net_device = type { i32 }
%struct.fcoe_fc_els_lesb = type { i32, i32, i32, i32, i32, i32 }
%struct.fc_els_lesb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fcoe_ctlr_get_lesb(%struct.fcoe_ctlr_device* %0) #0 {
  %2 = alloca %struct.fcoe_ctlr_device*, align 8
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fcoe_fc_els_lesb*, align 8
  %6 = alloca %struct.fc_els_lesb, align 4
  store %struct.fcoe_ctlr_device* %0, %struct.fcoe_ctlr_device** %2, align 8
  %7 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %8 = call %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device* %7)
  store %struct.fcoe_ctlr* %8, %struct.fcoe_ctlr** %3, align 8
  %9 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %10 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.net_device* @fcoe_get_netdev(i32 %11)
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %14 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @__fcoe_get_lesb(i32 %15, %struct.fc_els_lesb* %6, %struct.net_device* %16)
  %18 = bitcast %struct.fc_els_lesb* %6 to %struct.fcoe_fc_els_lesb*
  store %struct.fcoe_fc_els_lesb* %18, %struct.fcoe_fc_els_lesb** %5, align 8
  %19 = load %struct.fcoe_fc_els_lesb*, %struct.fcoe_fc_els_lesb** %5, align 8
  %20 = getelementptr inbounds %struct.fcoe_fc_els_lesb, %struct.fcoe_fc_els_lesb* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @ntohl(i32 %21)
  %23 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %24 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  store i8* %22, i8** %25, align 8
  %26 = load %struct.fcoe_fc_els_lesb*, %struct.fcoe_fc_els_lesb** %5, align 8
  %27 = getelementptr inbounds %struct.fcoe_fc_els_lesb, %struct.fcoe_fc_els_lesb* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @ntohl(i32 %28)
  %30 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %31 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i8* %29, i8** %32, align 8
  %33 = load %struct.fcoe_fc_els_lesb*, %struct.fcoe_fc_els_lesb** %5, align 8
  %34 = getelementptr inbounds %struct.fcoe_fc_els_lesb, %struct.fcoe_fc_els_lesb* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @ntohl(i32 %35)
  %37 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %38 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i8* %36, i8** %39, align 8
  %40 = load %struct.fcoe_fc_els_lesb*, %struct.fcoe_fc_els_lesb** %5, align 8
  %41 = getelementptr inbounds %struct.fcoe_fc_els_lesb, %struct.fcoe_fc_els_lesb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ntohl(i32 %42)
  %44 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %45 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  %47 = load %struct.fcoe_fc_els_lesb*, %struct.fcoe_fc_els_lesb** %5, align 8
  %48 = getelementptr inbounds %struct.fcoe_fc_els_lesb, %struct.fcoe_fc_els_lesb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @ntohl(i32 %49)
  %51 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %52 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.fcoe_fc_els_lesb*, %struct.fcoe_fc_els_lesb** %5, align 8
  %55 = getelementptr inbounds %struct.fcoe_fc_els_lesb, %struct.fcoe_fc_els_lesb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @ntohl(i32 %56)
  %58 = load %struct.fcoe_ctlr_device*, %struct.fcoe_ctlr_device** %2, align 8
  %59 = getelementptr inbounds %struct.fcoe_ctlr_device, %struct.fcoe_ctlr_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  ret void
}

declare dso_local %struct.fcoe_ctlr* @fcoe_ctlr_device_priv(%struct.fcoe_ctlr_device*) #1

declare dso_local %struct.net_device* @fcoe_get_netdev(i32) #1

declare dso_local i32 @__fcoe_get_lesb(i32, %struct.fc_els_lesb*, %struct.net_device*) #1

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

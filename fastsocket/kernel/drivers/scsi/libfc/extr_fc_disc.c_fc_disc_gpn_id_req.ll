; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_id_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_rport_priv = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fc_frame.1 = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FC_NS_GPN_ID = common dso_local global i32 0, align 4
@fc_disc_gpn_id_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_lport*, %struct.fc_rport_priv*)* @fc_disc_gpn_id_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_disc_gpn_id_req(%struct.fc_lport* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_rport_priv*, align 8
  %6 = alloca %struct.fc_frame.1*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %5, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = call %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport* %7, i32 8)
  store %struct.fc_frame.1* %8, %struct.fc_frame.1** %6, align 8
  %9 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %10 = icmp ne %struct.fc_frame.1* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %16 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)*, i32 (%struct.fc_lport.0*, i32, %struct.fc_frame*, i32, i32, %struct.fc_rport_priv*, i32)** %17, align 8
  %19 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %20 = bitcast %struct.fc_lport* %19 to %struct.fc_lport.0*
  %21 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %22 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fc_frame.1*, %struct.fc_frame.1** %6, align 8
  %26 = bitcast %struct.fc_frame.1* %25 to %struct.fc_frame*
  %27 = load i32, i32* @FC_NS_GPN_ID, align 4
  %28 = load i32, i32* @fc_disc_gpn_id_resp, align 4
  %29 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %30 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %31 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 3, %32
  %34 = call i32 %18(%struct.fc_lport.0* %20, i32 %24, %struct.fc_frame* %26, i32 %27, i32 %28, %struct.fc_rport_priv* %29, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %14
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %14
  %40 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %5, align 8
  %41 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %40, i32 0, i32 0
  %42 = call i32 @kref_get(i32* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %36, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.fc_frame.1* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

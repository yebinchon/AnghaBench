; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_ft_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_gpn_ft_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_disc = type { i32, i64, i64, i64 }
%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.fc_lport.0*, i32, %struct.fc_frame.1*, i32, i32, %struct.fc_disc.2*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame.1 = type opaque
%struct.fc_disc.2 = type opaque

@FC_NS_GPN_FT = common dso_local global i32 0, align 4
@fc_disc_gpn_ft_resp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_disc*)* @fc_disc_gpn_ft_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_gpn_ft_req(%struct.fc_disc* %0) #0 {
  %2 = alloca %struct.fc_disc*, align 8
  %3 = alloca %struct.fc_frame*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.fc_disc* %0, %struct.fc_disc** %2, align 8
  %5 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %6 = call %struct.fc_lport* @fc_disc_lport(%struct.fc_disc* %5)
  store %struct.fc_lport* %6, %struct.fc_lport** %4, align 8
  %7 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %8 = call i32 @fc_lport_test_ready(%struct.fc_lport* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %14 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %16 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %18 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %20 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %22 = call %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport* %21, i32 8)
  store %struct.fc_frame* %22, %struct.fc_frame** %3, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %24 = icmp ne %struct.fc_frame* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %47

26:                                               ; preds = %1
  %27 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %28 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.fc_lport.0*, i32, %struct.fc_frame.1*, i32, i32, %struct.fc_disc.2*, i32)*, i64 (%struct.fc_lport.0*, i32, %struct.fc_frame.1*, i32, i32, %struct.fc_disc.2*, i32)** %29, align 8
  %31 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %32 = bitcast %struct.fc_lport* %31 to %struct.fc_lport.0*
  %33 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %34 = bitcast %struct.fc_frame* %33 to %struct.fc_frame.1*
  %35 = load i32, i32* @FC_NS_GPN_FT, align 4
  %36 = load i32, i32* @fc_disc_gpn_ft_resp, align 4
  %37 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %38 = bitcast %struct.fc_disc* %37 to %struct.fc_disc.2*
  %39 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %40 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 3, %41
  %43 = call i64 %30(%struct.fc_lport.0* %32, i32 0, %struct.fc_frame.1* %34, i32 %35, i32 %36, %struct.fc_disc.2* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %26
  br label %50

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %25
  %48 = load %struct.fc_disc*, %struct.fc_disc** %2, align 8
  %49 = call i32 @fc_disc_error(%struct.fc_disc* %48, i32* null)
  br label %50

50:                                               ; preds = %47, %45
  ret void
}

declare dso_local %struct.fc_lport* @fc_disc_lport(%struct.fc_disc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_lport_test_ready(%struct.fc_lport*) #1

declare dso_local %struct.fc_frame* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_disc_error(%struct.fc_disc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

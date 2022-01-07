; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_retry_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_retry_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i64, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*)* }

@FC_SRB_ABORT_PENDING = common dso_local global i32 0, align 4
@FC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*)* @fc_fcp_retry_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_retry_cmd(%struct.fc_fcp_pkt* %0) #0 {
  %2 = alloca %struct.fc_fcp_pkt*, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %2, align 8
  %3 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %4 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %9 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32*)*, i32 (i32*)** %12, align 8
  %14 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %15 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 %13(i32* %16)
  %18 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %19 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %7, %1
  %21 = load i32, i32* @FC_SRB_ABORT_PENDING, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %24 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %28 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @FC_ERROR, align 4
  %30 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %31 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %2, align 8
  %33 = call i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt* %32)
  ret void
}

declare dso_local i32 @fc_fcp_complete_locked(%struct.fc_fcp_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

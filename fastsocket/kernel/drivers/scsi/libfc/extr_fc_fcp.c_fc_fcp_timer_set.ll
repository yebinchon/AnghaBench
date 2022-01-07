; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_timer_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_fcp.c_fc_fcp_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fcp_pkt = type { i32, i32 }

@FC_SRB_COMPL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_fcp_pkt*, i64)* @fc_fcp_timer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_fcp_timer_set(%struct.fc_fcp_pkt* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_fcp_pkt*, align 8
  %4 = alloca i64, align 8
  store %struct.fc_fcp_pkt* %0, %struct.fc_fcp_pkt** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %6 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @FC_SRB_COMPL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load %struct.fc_fcp_pkt*, %struct.fc_fcp_pkt** %3, align 8
  %13 = getelementptr inbounds %struct.fc_fcp_pkt, %struct.fc_fcp_pkt* %12, i32 0, i32 1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %14, %15
  %17 = call i32 @mod_timer(i32* %13, i64 %16)
  br label %18

18:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

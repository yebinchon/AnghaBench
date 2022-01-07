; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_disc.c_fc_disc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.fc_disc }
%struct.fc_disc = type { void (%struct.fc_lport.0*, i32)*, i32 }
%struct.fc_lport.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ({}*, %struct.fc_lport*)* @fc_disc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_disc_start({}* %0, %struct.fc_lport* %1) #0 {
  %3 = alloca {}*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_disc*, align 8
  store {}* %0, {}** %3, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %4, align 8
  %6 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 0
  store %struct.fc_disc* %7, %struct.fc_disc** %5, align 8
  %8 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %9 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load {}*, {}** %3, align 8
  %12 = bitcast {}* %11 to void (%struct.fc_lport.0*, i32)*
  %13 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %14 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %13, i32 0, i32 0
  store void (%struct.fc_lport.0*, i32)* %12, void (%struct.fc_lport.0*, i32)** %14, align 8
  %15 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %16 = call i32 @fc_disc_restart(%struct.fc_disc* %15)
  %17 = load %struct.fc_disc*, %struct.fc_disc** %5, align 8
  %18 = getelementptr inbounds %struct.fc_disc, %struct.fc_disc* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fc_disc_restart(%struct.fc_disc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

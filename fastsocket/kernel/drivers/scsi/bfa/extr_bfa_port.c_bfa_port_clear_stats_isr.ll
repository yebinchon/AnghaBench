; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_clear_stats_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_port_clear_stats_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_port_s = type { i32 (i32, i32)*, i32, i32, i32, i32 }
%struct.timeval = type { i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_port_s*, i32)* @bfa_port_clear_stats_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_port_clear_stats_isr(%struct.bfa_port_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_port_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 4
  store %struct.bfa_port_s* %0, %struct.bfa_port_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @BFA_FALSE, align 4
  %10 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %17, i32 0, i32 0
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32)* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %22, i32 0, i32 0
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %24(i32 %27, i32 %28)
  %30 = load %struct.bfa_port_s*, %struct.bfa_port_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_port_s, %struct.bfa_port_s* %30, i32 0, i32 0
  store i32 (i32, i32)* null, i32 (i32, i32)** %31, align 8
  br label %32

32:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

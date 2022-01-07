; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_uninit_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_uninit_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i64, i64, i32*, i32*, i64, i64, i64, i32*, i32*, i64, i64, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"mpsc_uninit_rings[%d]: Uninitializing rings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_uninit_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_uninit_rings(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %3 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %4 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %3, i32 0, i32 12
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %9 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %8, i32 0, i32 11
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %15 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %17 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %19 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  %20 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %21 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %20, i32 0, i32 7
  store i32* null, i32** %21, align 8
  %22 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %23 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %25 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %27 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %29 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %31 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %33 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %35 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

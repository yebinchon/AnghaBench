; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_dl_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_dl_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)* }
%struct.TYPE_4__ = type { i32, i64 }

@CC_RELEASE = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3ni1_dl_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_dl_release(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %8 = call i32 @newl3state(%struct.l3_process* %7, i32 0)
  %9 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %10 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 27, i32* %11, align 8
  %12 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %13 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %16 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)*, i32 (%struct.TYPE_6__*, i32, %struct.l3_process*)** %19, align 8
  %21 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %22 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* @CC_RELEASE, align 4
  %25 = load i32, i32* @INDICATION, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %28 = call i32 %20(%struct.TYPE_6__* %23, i32 %26, %struct.l3_process* %27)
  %29 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %30 = call i32 @release_l3_process(%struct.l3_process* %29)
  ret void
}

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @release_l3_process(%struct.l3_process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_plugger_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_plugger_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plug_handle = type { void (%struct.plug_handle*)*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@plugger_timeout = common dso_local global i32 0, align 4
@plugger_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plugger_init(%struct.plug_handle* %0, void (%struct.plug_handle*)* %1) #0 {
  %3 = alloca %struct.plug_handle*, align 8
  %4 = alloca void (%struct.plug_handle*)*, align 8
  store %struct.plug_handle* %0, %struct.plug_handle** %3, align 8
  store void (%struct.plug_handle*)* %1, void (%struct.plug_handle*)** %4, align 8
  %5 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %6 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load void (%struct.plug_handle*)*, void (%struct.plug_handle*)** %4, align 8
  %8 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %9 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %8, i32 0, i32 0
  store void (%struct.plug_handle*)* %7, void (%struct.plug_handle*)** %9, align 8
  %10 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %11 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %10, i32 0, i32 2
  %12 = call i32 @init_timer(%struct.TYPE_2__* %11)
  %13 = load i32, i32* @plugger_timeout, align 4
  %14 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %15 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %18 = ptrtoint %struct.plug_handle* %17 to i64
  %19 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %20 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = load %struct.plug_handle*, %struct.plug_handle** %3, align 8
  %23 = getelementptr inbounds %struct.plug_handle, %struct.plug_handle* %22, i32 0, i32 1
  %24 = load i32, i32* @plugger_work, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

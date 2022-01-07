; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_dmi_check_cb_p8010.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_fujitsu-laptop.c_dmi_check_cb_p8010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dmi_system_id = type { i32 }

@KEY_HELP = common dso_local global i32 0, align 4
@fujitsu = common dso_local global %struct.TYPE_2__* null, align 8
@KEY_SWITCHVIDEOMODE = common dso_local global i32 0, align 4
@KEY_WWW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @dmi_check_cb_p8010 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmi_check_cb_p8010(%struct.dmi_system_id* %0) #0 {
  %2 = alloca %struct.dmi_system_id*, align 8
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %2, align 8
  %3 = load %struct.dmi_system_id*, %struct.dmi_system_id** %2, align 8
  %4 = call i32 @dmi_check_cb_common(%struct.dmi_system_id* %3)
  %5 = load i32, i32* @KEY_HELP, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @KEY_WWW, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fujitsu, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  ret i32 0
}

declare dso_local i32 @dmi_check_cb_common(%struct.dmi_system_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

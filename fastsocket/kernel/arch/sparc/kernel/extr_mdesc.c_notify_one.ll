; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_notify_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_mdesc.c_notify_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdesc_notifier_client = type { i32, i32, i32 }
%struct.mdesc_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdesc_notifier_client*, %struct.mdesc_handle*, %struct.mdesc_handle*)* @notify_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @notify_one(%struct.mdesc_notifier_client* %0, %struct.mdesc_handle* %1, %struct.mdesc_handle* %2) #0 {
  %4 = alloca %struct.mdesc_notifier_client*, align 8
  %5 = alloca %struct.mdesc_handle*, align 8
  %6 = alloca %struct.mdesc_handle*, align 8
  store %struct.mdesc_notifier_client* %0, %struct.mdesc_notifier_client** %4, align 8
  store %struct.mdesc_handle* %1, %struct.mdesc_handle** %5, align 8
  store %struct.mdesc_handle* %2, %struct.mdesc_handle** %6, align 8
  %7 = load %struct.mdesc_notifier_client*, %struct.mdesc_notifier_client** %4, align 8
  %8 = getelementptr inbounds %struct.mdesc_notifier_client, %struct.mdesc_notifier_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %11 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %12 = load %struct.mdesc_notifier_client*, %struct.mdesc_notifier_client** %4, align 8
  %13 = getelementptr inbounds %struct.mdesc_notifier_client, %struct.mdesc_notifier_client* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @invoke_on_missing(i32 %9, %struct.mdesc_handle* %10, %struct.mdesc_handle* %11, i32 %14)
  %16 = load %struct.mdesc_notifier_client*, %struct.mdesc_notifier_client** %4, align 8
  %17 = getelementptr inbounds %struct.mdesc_notifier_client, %struct.mdesc_notifier_client* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mdesc_handle*, %struct.mdesc_handle** %6, align 8
  %20 = load %struct.mdesc_handle*, %struct.mdesc_handle** %5, align 8
  %21 = load %struct.mdesc_notifier_client*, %struct.mdesc_notifier_client** %4, align 8
  %22 = getelementptr inbounds %struct.mdesc_notifier_client, %struct.mdesc_notifier_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @invoke_on_missing(i32 %18, %struct.mdesc_handle* %19, %struct.mdesc_handle* %20, i32 %23)
  ret void
}

declare dso_local i32 @invoke_on_missing(i32, %struct.mdesc_handle*, %struct.mdesc_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

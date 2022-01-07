; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ps3_gelic_wireless.c_gelic_eurus_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ps3_gelic_wireless.c_gelic_eurus_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_eurus_cmd = type { i32, i32, i32, i32, %struct.gelic_wl_info*, i8* }
%struct.gelic_wl_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gelic_eurus_sync_cmd_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gelic_eurus_cmd* (%struct.gelic_wl_info*, i32, i8*, i32)* @gelic_eurus_sync_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gelic_eurus_cmd* @gelic_eurus_sync_cmd(%struct.gelic_wl_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.gelic_eurus_cmd*, align 8
  %6 = alloca %struct.gelic_wl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gelic_eurus_cmd*, align 8
  store %struct.gelic_wl_info* %0, %struct.gelic_wl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.gelic_eurus_cmd* @kzalloc(i32 32, i32 %11)
  store %struct.gelic_eurus_cmd* %12, %struct.gelic_eurus_cmd** %10, align 8
  %13 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %14 = icmp ne %struct.gelic_eurus_cmd* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.gelic_eurus_cmd* null, %struct.gelic_eurus_cmd** %5, align 8
  br label %46

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %19 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %22 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %25 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %6, align 8
  %27 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %28 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %27, i32 0, i32 4
  store %struct.gelic_wl_info* %26, %struct.gelic_wl_info** %28, align 8
  %29 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %30 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %29, i32 0, i32 3
  %31 = load i32, i32* @gelic_eurus_sync_cmd_worker, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %34 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %33, i32 0, i32 2
  %35 = call i32 @init_completion(i32* %34)
  %36 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %6, align 8
  %37 = getelementptr inbounds %struct.gelic_wl_info, %struct.gelic_wl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %40 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %39, i32 0, i32 3
  %41 = call i32 @queue_work(i32 %38, i32* %40)
  %42 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  %43 = getelementptr inbounds %struct.gelic_eurus_cmd, %struct.gelic_eurus_cmd* %42, i32 0, i32 2
  %44 = call i32 @wait_for_completion(i32* %43)
  %45 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %10, align 8
  store %struct.gelic_eurus_cmd* %45, %struct.gelic_eurus_cmd** %5, align 8
  br label %46

46:                                               ; preds = %16, %15
  %47 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %5, align 8
  ret %struct.gelic_eurus_cmd* %47
}

declare dso_local %struct.gelic_eurus_cmd* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

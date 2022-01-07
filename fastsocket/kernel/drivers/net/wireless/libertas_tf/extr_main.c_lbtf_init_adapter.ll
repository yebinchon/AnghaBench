; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_init_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas_tf/extr_main.c_lbtf_init_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbtf_private = type { i32, i32, i32, i32, i32*, i32, i32 }

@LBTF_DEB_MAIN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@command_timer_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lbtf_private*)* @lbtf_init_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbtf_init_adapter(%struct.lbtf_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lbtf_private*, align 8
  store %struct.lbtf_private* %0, %struct.lbtf_private** %3, align 8
  %4 = load i32, i32* @LBTF_DEB_MAIN, align 4
  %5 = call i32 @lbtf_deb_enter(i32 %4)
  %6 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %7 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = call i32 @memset(i32 %8, i32 255, i32 %9)
  %11 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %12 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %11, i32 0, i32 5
  %13 = call i32 @mutex_init(i32* %12)
  %14 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %15 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %17 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %16, i32 0, i32 3
  %18 = load i32, i32* @command_timer_fn, align 4
  %19 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %20 = ptrtoint %struct.lbtf_private* %19 to i64
  %21 = call i32 @setup_timer(i32* %17, i32 %18, i64 %20)
  %22 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %23 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %22, i32 0, i32 2
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %26 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %25, i32 0, i32 1
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %29 = getelementptr inbounds %struct.lbtf_private, %struct.lbtf_private* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.lbtf_private*, %struct.lbtf_private** %3, align 8
  %32 = call i64 @lbtf_allocate_cmd_buffer(%struct.lbtf_private* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @LBTF_DEB_MAIN, align 4
  %37 = call i32 @lbtf_deb_leave(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @lbtf_deb_enter(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @lbtf_allocate_cmd_buffer(%struct.lbtf_private*) #1

declare dso_local i32 @lbtf_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

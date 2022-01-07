; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_free_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_lbs_free_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32*, i32, i64 }

@LBS_DEB_MAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*)* @lbs_free_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_free_adapter(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  %3 = load i32, i32* @LBS_DEB_MAIN, align 4
  %4 = call i32 @lbs_deb_enter(i32 %3)
  %5 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %6 = call i32 @lbs_free_cmd_buffer(%struct.lbs_private* %5)
  %7 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %8 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %13 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @kfifo_free(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %18 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %17, i32 0, i32 1
  %19 = call i32 @del_timer(i32* %18)
  %20 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %21 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* @LBS_DEB_MAIN, align 4
  %27 = call i32 @lbs_deb_leave(i32 %26)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_free_cmd_buffer(%struct.lbs_private*) #1

declare dso_local i32 @kfifo_free(i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

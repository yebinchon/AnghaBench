; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_hpsb_destroy_hostinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_highlevel.c_hpsb_destroy_hostinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_highlevel = type { i32 }
%struct.hpsb_host = type { i32 }
%struct.hl_host_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpsb_destroy_hostinfo(%struct.hpsb_highlevel* %0, %struct.hpsb_host* %1) #0 {
  %3 = alloca %struct.hpsb_highlevel*, align 8
  %4 = alloca %struct.hpsb_host*, align 8
  %5 = alloca %struct.hl_host_info*, align 8
  %6 = alloca i64, align 8
  store %struct.hpsb_highlevel* %0, %struct.hpsb_highlevel** %3, align 8
  store %struct.hpsb_host* %1, %struct.hpsb_host** %4, align 8
  %7 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %3, align 8
  %8 = load %struct.hpsb_host*, %struct.hpsb_host** %4, align 8
  %9 = call %struct.hl_host_info* @hl_get_hostinfo(%struct.hpsb_highlevel* %7, %struct.hpsb_host* %8)
  store %struct.hl_host_info* %9, %struct.hl_host_info** %5, align 8
  %10 = load %struct.hl_host_info*, %struct.hl_host_info** %5, align 8
  %11 = icmp ne %struct.hl_host_info* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %3, align 8
  %14 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @write_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.hl_host_info*, %struct.hl_host_info** %5, align 8
  %18 = getelementptr inbounds %struct.hl_host_info, %struct.hl_host_info* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.hpsb_highlevel*, %struct.hpsb_highlevel** %3, align 8
  %21 = getelementptr inbounds %struct.hpsb_highlevel, %struct.hpsb_highlevel* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @write_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.hl_host_info*, %struct.hl_host_info** %5, align 8
  %25 = call i32 @kfree(%struct.hl_host_info* %24)
  br label %26

26:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.hl_host_info* @hl_get_hostinfo(%struct.hpsb_highlevel*, %struct.hpsb_host*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.hl_host_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

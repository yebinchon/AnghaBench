; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_channel_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_channel_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppp_channel_index(%struct.ppp_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ppp_channel*, align 8
  %4 = alloca %struct.channel*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %3, align 8
  %5 = load %struct.ppp_channel*, %struct.ppp_channel** %3, align 8
  %6 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %5, i32 0, i32 0
  %7 = load %struct.channel*, %struct.channel** %6, align 8
  store %struct.channel* %7, %struct.channel** %4, align 8
  %8 = load %struct.channel*, %struct.channel** %4, align 8
  %9 = icmp ne %struct.channel* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %4, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

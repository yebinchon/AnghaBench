; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_unit_number.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_unit_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppp_unit_number(%struct.ppp_channel* %0) #0 {
  %2 = alloca %struct.ppp_channel*, align 8
  %3 = alloca %struct.channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ppp_channel* %0, %struct.ppp_channel** %2, align 8
  %5 = load %struct.ppp_channel*, %struct.ppp_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %5, i32 0, i32 0
  %7 = load %struct.channel*, %struct.channel** %6, align 8
  store %struct.channel* %7, %struct.channel** %3, align 8
  store i32 -1, i32* %4, align 4
  %8 = load %struct.channel*, %struct.channel** %3, align 8
  %9 = icmp ne %struct.channel* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.channel*, %struct.channel** %3, align 8
  %12 = getelementptr inbounds %struct.channel, %struct.channel* %11, i32 0, i32 0
  %13 = call i32 @read_lock_bh(i32* %12)
  %14 = load %struct.channel*, %struct.channel** %3, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.channel*, %struct.channel** %3, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %18, %10
  %26 = load %struct.channel*, %struct.channel** %3, align 8
  %27 = getelementptr inbounds %struct.channel, %struct.channel* %26, i32 0, i32 0
  %28 = call i32 @read_unlock_bh(i32* %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_send_stop_character.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_send_stop_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__DISABLED_CHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_send_stop_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_send_stop_character(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %3 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %4 = icmp ne %struct.jsm_channel* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %8 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @__DISABLED_CHAR, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %14 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %21 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @writeb(i64 %19, i32* %23)
  %25 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %26 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @neo_pci_posting_flush(i32 %27)
  br label %29

29:                                               ; preds = %5, %12, %6
  ret void
}

declare dso_local i32 @writeb(i64, i32*) #1

declare dso_local i32 @neo_pci_posting_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

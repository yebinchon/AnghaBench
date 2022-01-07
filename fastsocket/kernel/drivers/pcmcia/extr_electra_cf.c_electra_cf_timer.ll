; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_electra_cf.c_electra_cf_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_electra_cf.c_electra_cf_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.electra_cf_socket = type { i32, i32, i64, i32 }

@SS_DETECT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @electra_cf_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @electra_cf_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.electra_cf_socket*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.electra_cf_socket*
  store %struct.electra_cf_socket* %7, %struct.electra_cf_socket** %3, align 8
  %8 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %3, align 8
  %9 = call i32 @electra_cf_present(%struct.electra_cf_socket* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %3, align 8
  %12 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %3, align 8
  %18 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %3, align 8
  %20 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %19, i32 0, i32 3
  %21 = load i32, i32* @SS_DETECT, align 4
  %22 = call i32 @pcmcia_parse_events(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %3, align 8
  %25 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.electra_cf_socket*, %struct.electra_cf_socket** %3, align 8
  %30 = getelementptr inbounds %struct.electra_cf_socket, %struct.electra_cf_socket* %29, i32 0, i32 1
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @POLL_INTERVAL, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @mod_timer(i32* %30, i64 %33)
  br label %35

35:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @electra_cf_present(%struct.electra_cf_socket*) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

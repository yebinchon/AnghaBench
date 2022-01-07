; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_omap_cf.c_omap_cf_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_omap_cf.c_omap_cf_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_cf_socket = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s: card %s\0A\00", align 1
@driver_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gone\00", align 1
@SS_DETECT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POLL_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @omap_cf_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_cf_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.omap_cf_socket*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to %struct.omap_cf_socket*
  store %struct.omap_cf_socket* %7, %struct.omap_cf_socket** %3, align 8
  %8 = call i32 (...) @omap_cf_present()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.omap_cf_socket*, %struct.omap_cf_socket** %3, align 8
  %11 = getelementptr inbounds %struct.omap_cf_socket, %struct.omap_cf_socket* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.omap_cf_socket*, %struct.omap_cf_socket** %3, align 8
  %17 = getelementptr inbounds %struct.omap_cf_socket, %struct.omap_cf_socket* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @driver_name, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %22)
  %24 = load %struct.omap_cf_socket*, %struct.omap_cf_socket** %3, align 8
  %25 = getelementptr inbounds %struct.omap_cf_socket, %struct.omap_cf_socket* %24, i32 0, i32 3
  %26 = load i32, i32* @SS_DETECT, align 4
  %27 = call i32 @pcmcia_parse_events(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %14, %1
  %29 = load %struct.omap_cf_socket*, %struct.omap_cf_socket** %3, align 8
  %30 = getelementptr inbounds %struct.omap_cf_socket, %struct.omap_cf_socket* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.omap_cf_socket*, %struct.omap_cf_socket** %3, align 8
  %35 = getelementptr inbounds %struct.omap_cf_socket, %struct.omap_cf_socket* %34, i32 0, i32 1
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* @POLL_INTERVAL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @mod_timer(i32* %35, i64 %38)
  br label %40

40:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @omap_cf_present(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

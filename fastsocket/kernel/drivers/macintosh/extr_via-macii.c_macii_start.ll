; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-macii.c_macii_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32* }

@current_req = common dso_local global %struct.adb_request* null, align 8
@macii_state = common dso_local global i64 0, align 8
@idle = common dso_local global i64 0, align 8
@command_byte = common dso_local global i32 0, align 4
@SR_OUT = common dso_local global i32 0, align 4
@via = common dso_local global i32* null, align 8
@ACR = common dso_local global i64 0, align 8
@SR = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@ST_MASK = common dso_local global i32 0, align 4
@ST_CMD = common dso_local global i32 0, align 4
@sending = common dso_local global i64 0, align 8
@data_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @macii_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macii_start() #0 {
  %1 = alloca %struct.adb_request*, align 8
  %2 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %2, %struct.adb_request** %1, align 8
  %3 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %4 = icmp eq %struct.adb_request* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load i64, i64* @macii_state, align 8
  %8 = load i64, i64* @idle, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %13 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @command_byte, align 4
  %17 = load i32, i32* @SR_OUT, align 4
  %18 = load i32*, i32** @via, align 8
  %19 = load i64, i64* @ACR, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %24 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @via, align 8
  %29 = load i64, i64* @SR, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i32*, i32** @via, align 8
  %32 = load i64, i64* @B, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ST_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @ST_CMD, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** @via, align 8
  %41 = load i64, i64* @B, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  %43 = load i64, i64* @sending, align 8
  store i64 %43, i64* @macii_state, align 8
  store i32 2, i32* @data_index, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

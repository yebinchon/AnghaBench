; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_free_netdevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_free_netdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.claw_privbk*, i32 }
%struct.claw_privbk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"free_dev\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@IFF_RUNNING = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"free_ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @claw_free_netdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_free_netdevice(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.claw_privbk*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @setup, align 4
  %7 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %44

11:                                               ; preds = %2
  %12 = load i32, i32* @setup, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @CLAW_DBF_TEXT_(i32 2, i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load %struct.claw_privbk*, %struct.claw_privbk** %18, align 8
  store %struct.claw_privbk* %19, %struct.claw_privbk** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @claw_release(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %26, %11
  %30 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %31 = icmp ne %struct.claw_privbk* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.claw_privbk*, %struct.claw_privbk** %5, align 8
  %34 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* @READ, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 1
  store %struct.claw_privbk* null, %struct.claw_privbk** %41, align 8
  %42 = load i32, i32* @setup, align 4
  %43 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %10
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @claw_release(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

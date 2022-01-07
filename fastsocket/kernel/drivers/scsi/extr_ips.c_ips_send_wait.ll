; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_send_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_send_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"ips_send_wait\00", align 1
@IPS_FFDC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ipsintr_blocking = common dso_local global i32 0, align 4
@IPS_FAILURE = common dso_local global i32 0, align 4
@IPS_SUCCESS_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32)* @ips_send_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_send_wait(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @IPS_FFDC, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load i32, i32* @TRUE, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %15, %4
  %27 = load i32, i32* @ipsintr_blocking, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = call i32 @ips_send_cmd(%struct.TYPE_9__* %30, %struct.TYPE_8__* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @IPS_FAILURE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @IPS_SUCCESS_IMM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %26
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IPS_FFDC, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @ips_wait(%struct.TYPE_9__* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %40
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @ips_send_cmd(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ips_wait(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

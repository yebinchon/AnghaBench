; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_class_pktcdvd_show_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_class_pktcdvd_show_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.class = type { i32 }

@ctl_mutex = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MAX_WRITERS = common dso_local global i32 0, align 4
@pkt_devs = common dso_local global %struct.pktcdvd_device** null, align 8
@.str = private unnamed_addr constant [16 x i8] c"%s %u:%u %u:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.class*, i8*)* @class_pktcdvd_show_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @class_pktcdvd_show_map(%struct.class* %0, i8* %1) #0 {
  %3 = alloca %struct.class*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pktcdvd_device*, align 8
  store %struct.class* %0, %struct.class** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %9 = call i32 @mutex_lock_nested(i32* @ctl_mutex, i32 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MAX_WRITERS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = load %struct.pktcdvd_device**, %struct.pktcdvd_device*** @pkt_devs, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.pktcdvd_device*, %struct.pktcdvd_device** %15, i64 %17
  %19 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %18, align 8
  store %struct.pktcdvd_device* %19, %struct.pktcdvd_device** %7, align 8
  %20 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %21 = icmp ne %struct.pktcdvd_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %56

23:                                               ; preds = %14
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %29 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %32 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @MAJOR(i32 %33)
  %35 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %36 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @MINOR(i32 %37)
  %39 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %40 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MAJOR(i32 %43)
  %45 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %7, align 8
  %46 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MINOR(i32 %49)
  %51 = call i64 @sprintf(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %34, i32 %38, i32 %44, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %23, %22
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %10

59:                                               ; preds = %10
  %60 = call i32 @mutex_unlock(i32* @ctl_mutex)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

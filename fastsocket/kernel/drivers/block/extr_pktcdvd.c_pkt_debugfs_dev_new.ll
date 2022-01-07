; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_debugfs_dev_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_debugfs_dev_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i32*, i32*, i32 }

@pkt_debugfs_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@debug_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktcdvd_device*)* @pkt_debugfs_dev_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pkt_debugfs_dev_new(%struct.pktcdvd_device* %0) #0 {
  %2 = alloca %struct.pktcdvd_device*, align 8
  store %struct.pktcdvd_device* %0, %struct.pktcdvd_device** %2, align 8
  %3 = load i32, i32* @pkt_debugfs_root, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %41

6:                                                ; preds = %1
  %7 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %8 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %10 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @pkt_debugfs_root, align 4
  %13 = call i32* @debugfs_create_dir(i32 %11, i32 %12)
  %14 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %15 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %17 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %23 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %41

24:                                               ; preds = %6
  %25 = load i32, i32* @S_IRUGO, align 4
  %26 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %27 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %30 = call i32* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %25, i32* %28, %struct.pktcdvd_device* %29, i32* @debug_fops)
  %31 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %32 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %34 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @IS_ERR(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %2, align 8
  %40 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %5, %21, %38, %24
  ret void
}

declare dso_local i32* @debugfs_create_dir(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32* @debugfs_create_file(i8*, i32, i32*, %struct.pktcdvd_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

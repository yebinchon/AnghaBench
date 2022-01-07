; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_dvb_net_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32*, %struct.dvb_device* }
%struct.dvb_device = type { i32, i32, %struct.dvb_net* }
%struct.dvb_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dvb_net_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dvb_device*, align 8
  %6 = alloca %struct.dvb_net*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = load %struct.dvb_device*, %struct.dvb_device** %8, align 8
  store %struct.dvb_device* %9, %struct.dvb_device** %5, align 8
  %10 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %11 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %10, i32 0, i32 2
  %12 = load %struct.dvb_net*, %struct.dvb_net** %11, align 8
  store %struct.dvb_net* %12, %struct.dvb_net** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call i32 @dvb_generic_release(%struct.inode* %13, %struct.file* %14)
  %16 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load %struct.dvb_net*, %struct.dvb_net** %6, align 8
  %22 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @fops_put(i32* %28)
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.dvb_device*, %struct.dvb_device** %5, align 8
  %33 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %32, i32 0, i32 1
  %34 = call i32 @wake_up(i32* %33)
  br label %35

35:                                               ; preds = %25, %20, %2
  ret i32 0
}

declare dso_local i32 @dvb_generic_release(%struct.inode*, %struct.file*) #1

declare dso_local i32 @fops_put(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

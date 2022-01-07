; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd_ioctl.c_ide_cdrom_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.cdrom_info* }
%struct.cdrom_info = type { i32 }
%struct.request_sense = type { i32 }
%struct.request = type { i32, i32 }

@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4
@IDE_AFLAG_DOOR_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_cdrom_reset(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca %struct.cdrom_device_info*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.cdrom_info*, align 8
  %5 = alloca %struct.request_sense, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %2, align 8
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %2, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.cdrom_info*, %struct.cdrom_info** %12, align 8
  store %struct.cdrom_info* %13, %struct.cdrom_info** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @READ, align 4
  %18 = load i32, i32* @__GFP_WAIT, align 4
  %19 = call %struct.request* @blk_get_request(i32 %16, i32 %17, i32 %18)
  store %struct.request* %19, %struct.request** %6, align 8
  %20 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @REQ_QUIET, align 4
  %24 = load %struct.request*, %struct.request** %6, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cdrom_info*, %struct.cdrom_info** %4, align 8
  %30 = getelementptr inbounds %struct.cdrom_info, %struct.cdrom_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i32 @blk_execute_rq(i32 %28, i32 %31, %struct.request* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.request*, %struct.request** %6, align 8
  %35 = call i32 @blk_put_request(%struct.request* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IDE_AFLAG_DOOR_LOCKED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = call i32 @ide_cd_lockdoor(%struct.TYPE_3__* %43, i32 1, %struct.request_sense* %5)
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @ide_cd_lockdoor(%struct.TYPE_3__*, i32, %struct.request_sense*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

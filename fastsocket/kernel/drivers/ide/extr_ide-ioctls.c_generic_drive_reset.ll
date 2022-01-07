; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-ioctls.c_generic_drive_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-ioctls.c_generic_drive_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32, i32, i32*, i32 }

@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@REQ_DRIVE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @generic_drive_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_drive_reset(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @READ, align 4
  %9 = load i32, i32* @__GFP_WAIT, align 4
  %10 = call %struct.request* @blk_get_request(i32 %7, i32 %8, i32 %9)
  store %struct.request* %10, %struct.request** %3, align 8
  %11 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 8
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* @REQ_DRIVE_RESET, align 4
  %17 = load %struct.request*, %struct.request** %3, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = call i64 @blk_execute_rq(i32 %23, i32* null, %struct.request* %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.request*, %struct.request** %3, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.request*, %struct.request** %3, align 8
  %33 = call i32 @blk_put_request(%struct.request* %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

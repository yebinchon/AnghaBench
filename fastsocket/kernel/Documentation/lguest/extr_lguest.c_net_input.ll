; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_net_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_net_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.net_info* }
%struct.net_info = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Output buffers in net input queue?\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to read from tun.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @net_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_input(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_info*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %10 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %11 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.iovec, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %18 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.net_info*, %struct.net_info** %20, align 8
  store %struct.net_info* %21, %struct.net_info** %9, align 8
  %22 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %23 = call i32 @wait_for_vq_desc(%struct.virtqueue* %22, %struct.iovec* %16, i32* %5, i32* %6)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %30 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.net_info*, %struct.net_info** %9, align 8
  %35 = getelementptr inbounds %struct.net_info, %struct.net_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @will_block(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %41 = call i32 @trigger_irq(%struct.virtqueue* %40)
  br label %42

42:                                               ; preds = %39, %33, %28
  %43 = load %struct.net_info*, %struct.net_info** %9, align 8
  %44 = getelementptr inbounds %struct.net_info, %struct.net_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @readv(i32 %45, %struct.iovec* %16, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %42
  %53 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @add_used(%struct.virtqueue* %53, i32 %54, i32 %55)
  %57 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wait_for_vq_desc(%struct.virtqueue*, %struct.iovec*, i32*, i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @will_block(i32) #2

declare dso_local i32 @trigger_irq(%struct.virtqueue*) #2

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @add_used(%struct.virtqueue*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

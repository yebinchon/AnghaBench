; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_net_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_net_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.net_info* }
%struct.net_info = type { i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Input buffers in net output queue?\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Write to tun failed?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @net_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_output(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.net_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %9 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %10 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.net_info*, %struct.net_info** %12, align 8
  store %struct.net_info* %13, %struct.net_info** %3, align 8
  %14 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %7, align 8
  %20 = alloca %struct.iovec, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %21 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %22 = call i32 @wait_for_vq_desc(%struct.virtqueue* %21, %struct.iovec* %20, i32* %5, i32* %6)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = load %struct.net_info*, %struct.net_info** %3, align 8
  %29 = getelementptr inbounds %struct.net_info, %struct.net_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @writev(i32 %30, %struct.iovec* %20, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @add_used(%struct.virtqueue* %37, i32 %38, i32 0)
  %40 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %40)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wait_for_vq_desc(%struct.virtqueue*, %struct.iovec*, i32*, i32*) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @writev(i32, %struct.iovec*, i32) #2

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

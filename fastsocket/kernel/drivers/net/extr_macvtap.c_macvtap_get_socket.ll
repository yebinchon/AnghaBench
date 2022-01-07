; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_get_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_get_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.file = type { %struct.macvtap_queue*, i32* }
%struct.macvtap_queue = type { %struct.socket }

@macvtap_fops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBADFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket* @macvtap_get_socket(%struct.file* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.macvtap_queue*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, @macvtap_fops
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.socket* @ERR_PTR(i32 %11)
  store %struct.socket* %12, %struct.socket** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.file*, %struct.file** %3, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.macvtap_queue*, %struct.macvtap_queue** %15, align 8
  store %struct.macvtap_queue* %16, %struct.macvtap_queue** %4, align 8
  %17 = load %struct.macvtap_queue*, %struct.macvtap_queue** %4, align 8
  %18 = icmp ne %struct.macvtap_queue* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @EBADFD, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.socket* @ERR_PTR(i32 %21)
  store %struct.socket* %22, %struct.socket** %2, align 8
  br label %26

23:                                               ; preds = %13
  %24 = load %struct.macvtap_queue*, %struct.macvtap_queue** %4, align 8
  %25 = getelementptr inbounds %struct.macvtap_queue, %struct.macvtap_queue* %24, i32 0, i32 0
  store %struct.socket* %25, %struct.socket** %2, align 8
  br label %26

26:                                               ; preds = %23, %19, %9
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  ret %struct.socket* %27
}

declare dso_local %struct.socket* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

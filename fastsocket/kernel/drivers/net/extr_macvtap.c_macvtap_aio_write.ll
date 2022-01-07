; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvtap.c_macvtap_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.macvtap_queue* }
%struct.macvtap_queue = type { i32 }
%struct.iovec = type { i32 }

@ENOLINK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @macvtap_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.macvtap_queue*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kiocb*, %struct.kiocb** %5, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %14 = load %struct.file*, %struct.file** %13, align 8
  store %struct.file* %14, %struct.file** %9, align 8
  %15 = load i32, i32* @ENOLINK, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.file*, %struct.file** %9, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = load %struct.macvtap_queue*, %struct.macvtap_queue** %18, align 8
  store %struct.macvtap_queue* %19, %struct.macvtap_queue** %11, align 8
  %20 = load %struct.macvtap_queue*, %struct.macvtap_queue** %11, align 8
  %21 = load %struct.iovec*, %struct.iovec** %6, align 8
  %22 = load %struct.iovec*, %struct.iovec** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @iov_length(%struct.iovec* %22, i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.file*, %struct.file** %9, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @macvtap_get_user(%struct.macvtap_queue* %20, i32* null, %struct.iovec* %21, i32 %24, i64 %25, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

declare dso_local i32 @macvtap_get_user(%struct.macvtap_queue*, i32*, %struct.iovec*, i32, i64, i32) #1

declare dso_local i32 @iov_length(%struct.iovec*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

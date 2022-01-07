; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_init_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_lp486e.c_init_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i8*, %struct.TYPE_4__*, i32, i64, i64 }
%struct.net_device = type { i32 }
%struct.i596_private = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.i596_rfd* }
%struct.TYPE_3__ = type { i8* }
%struct.i596_rfd = type { i32, %struct.TYPE_4__*, i8*, i64, i64, i8*, i64 }

@I596_NULL = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_EOL = common dso_local global i64 0, align 8
@RBD_EL = common dso_local global i8* null, align 8
@RX_RBD_SIZE = common dso_local global i32 0, align 4
@RX_SKBSIZE = common dso_local global i8* null, align 8
@rbd = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @init_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rx_bufs(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i596_private*, align 8
  %6 = alloca %struct.i596_rfd*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.i596_private* @netdev_priv(%struct.net_device* %8)
  store %struct.i596_private* %9, %struct.i596_private** %5, align 8
  %10 = load i8*, i8** @I596_NULL, align 8
  %11 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %12 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %67, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 56, i32 %19)
  %21 = bitcast i8* %20 to %struct.i596_rfd*
  store %struct.i596_rfd* %21, %struct.i596_rfd** %6, align 8
  %22 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %23 = icmp eq %struct.i596_rfd* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %70

25:                                               ; preds = %18
  %26 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %27 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** @I596_NULL, align 8
  %29 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %30 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %32 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %34 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %33, i32 0, i32 0
  store i32 1532, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load i64, i64* @CMD_EOL, align 8
  %39 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %40 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %42 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %43 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %42, i32 0, i32 2
  store %struct.i596_rfd* %41, %struct.i596_rfd** %43, align 8
  br label %47

44:                                               ; preds = %25
  %45 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %46 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %49 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %53 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.i596_rfd*, %struct.i596_rfd** %6, align 8
  %55 = call i8* @va_to_pa(%struct.i596_rfd* %54)
  %56 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %57 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %60 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.i596_private*, %struct.i596_private** %5, align 8
  %64 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %63, i32 0, i32 2
  %65 = load %struct.i596_rfd*, %struct.i596_rfd** %64, align 8
  %66 = getelementptr inbounds %struct.i596_rfd, %struct.i596_rfd* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %47
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %14

70:                                               ; preds = %24, %14
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @va_to_pa(%struct.i596_rfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

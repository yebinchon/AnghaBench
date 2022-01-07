; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arc-rawmode.c_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_arc-rawmode.c_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.archdr = type { %struct.arc_hardware, %struct.arc_hardware }
%struct.arc_hardware = type { i32*, i32 }
%struct.arcnet_local = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)* }
%struct.arc_hardware.0 = type opaque

@D_DURING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"prepare_tx: txbufs=%d/%d/%d\0A\00", align 1
@ARC_HDR_SIZE = common dso_local global i32 0, align 4
@XMTU = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Bug!  prepare_tx with size %d (> %d)\0A\00", align 1
@MinTU = common dso_local global i32 0, align 4
@MTU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"prepare_tx: length=%d ofs=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.archdr*, i32, i32)* @prepare_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_tx(%struct.net_device* %0, %struct.archdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.archdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arcnet_local*, align 8
  %10 = alloca %struct.arc_hardware*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.archdr* %1, %struct.archdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %12)
  store %struct.arcnet_local* %13, %struct.arcnet_local** %9, align 8
  %14 = load %struct.archdr*, %struct.archdr** %6, align 8
  %15 = getelementptr inbounds %struct.archdr, %struct.archdr* %14, i32 0, i32 1
  store %struct.arc_hardware* %15, %struct.arc_hardware** %10, align 8
  %16 = load i32, i32* @D_DURING, align 4
  %17 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %18 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %21 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 (i32, i8*, i32, i32, ...) @BUGMSG(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  %25 = load i32, i32* @ARC_HDR_SIZE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @XMTU, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load i32, i32* @D_NORMAL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @XMTU, align 4
  %35 = call i32 (i32, i8*, i32, i32, ...) @BUGMSG(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @XMTU, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MinTU, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %43 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 512, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %49 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  br label %76

52:                                               ; preds = %37
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MTU, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %58 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 512, %61
  %63 = sub nsw i32 %62, 3
  store i32 %63, i32* %11, align 4
  %64 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %65 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  br label %75

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 256, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %72 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %56
  br label %76

76:                                               ; preds = %75, %41
  %77 = load i32, i32* @D_DURING, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @BUGMSG(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %82 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)** %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %88 = bitcast %struct.arc_hardware* %87 to %struct.arc_hardware.0*
  %89 = load i32, i32* @ARC_HDR_SIZE, align 4
  %90 = call i32 %84(%struct.net_device* %85, i32 %86, i32 0, %struct.arc_hardware.0* %88, i32 %89)
  %91 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %92 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)*, i32 (%struct.net_device*, i32, i32, %struct.arc_hardware.0*, i32)** %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.archdr*, %struct.archdr** %6, align 8
  %99 = getelementptr inbounds %struct.archdr, %struct.archdr* %98, i32 0, i32 0
  %100 = bitcast %struct.arc_hardware* %99 to %struct.arc_hardware.0*
  %101 = load i32, i32* %7, align 4
  %102 = call i32 %94(%struct.net_device* %95, i32 %96, i32 %97, %struct.arc_hardware.0* %100, i32 %101)
  %103 = load %struct.arc_hardware*, %struct.arc_hardware** %10, align 8
  %104 = getelementptr inbounds %struct.arc_hardware, %struct.arc_hardware* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.arcnet_local*, %struct.arcnet_local** %9, align 8
  %107 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  ret i32 1
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

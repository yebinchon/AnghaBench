; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { %struct.TYPE_4__*, %struct.mtip_cmd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mtip_cmd = type { i32*, i32* }
%struct.completion = type { i32 }

@PORT_IRQ_TF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Internal command %d completed with TFE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*, i32, i8*, i32)* @mtip_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_completion(%struct.mtip_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtip_cmd*, align 8
  %10 = alloca %struct.completion*, align 8
  store %struct.mtip_port* %0, %struct.mtip_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %12 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %11, i32 0, i32 1
  %13 = load %struct.mtip_cmd*, %struct.mtip_cmd** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %13, i64 %15
  store %struct.mtip_cmd* %16, %struct.mtip_cmd** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.completion*
  store %struct.completion* %18, %struct.completion** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PORT_IRQ_TF_ERR, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %27 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %25, %4
  %35 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %38 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.completion*, %struct.completion** %10, align 8
  %40 = call i32 @complete(%struct.completion* %39)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @complete(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

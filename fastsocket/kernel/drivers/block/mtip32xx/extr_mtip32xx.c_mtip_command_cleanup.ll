; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_command_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_command_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i32, %struct.mtip_port* }
%struct.mtip_port = type { i32*, i32, %struct.TYPE_4__*, %struct.mtip_cmd* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mtip_cmd = type { i32, i32, i32, i32*, i32 (i32*, i32)*, i32 }

@mtip_command_cleanup.in_progress = internal global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MTIP_DDF_CLEANUP_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*)* @mtip_command_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_command_cleanup(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtip_cmd*, align 8
  %7 = alloca %struct.mtip_port*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 1
  %10 = load %struct.mtip_port*, %struct.mtip_port** %9, align 8
  store %struct.mtip_port* %10, %struct.mtip_port** %7, align 8
  %11 = load i32, i32* @mtip_command_cleanup.in_progress, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %101

14:                                               ; preds = %1
  store i32 1, i32* @mtip_command_cleanup.in_progress, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %90, %14
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %93

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %86, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %89

22:                                               ; preds = %19
  %23 = load %struct.mtip_port*, %struct.mtip_port** %7, align 8
  %24 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %22
  br label %86

35:                                               ; preds = %22
  %36 = load i32, i32* %3, align 4
  %37 = shl i32 %36, 5
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.mtip_port*, %struct.mtip_port** %7, align 8
  %41 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %40, i32 0, i32 3
  %42 = load %struct.mtip_cmd*, %struct.mtip_cmd** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %42, i64 %44
  store %struct.mtip_cmd* %45, %struct.mtip_cmd** %6, align 8
  %46 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %46, i32 0, i32 5
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %35
  %51 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %51, i32 0, i32 4
  %53 = load i32 (i32*, i32)*, i32 (i32*, i32)** %52, align 8
  %54 = icmp ne i32 (i32*, i32)* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %56, i32 0, i32 4
  %58 = load i32 (i32*, i32)*, i32 (i32*, i32)** %57, align 8
  %59 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %60 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  %64 = call i32 %58(i32* %61, i32 %63)
  %65 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %65, i32 0, i32 4
  store i32 (i32*, i32)* null, i32 (i32*, i32)** %66, align 8
  %67 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %55, %50, %35
  %70 = load %struct.mtip_port*, %struct.mtip_port** %7, align 8
  %71 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %77 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %83 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dma_unmap_sg(i32* %75, i32 %78, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %69, %34
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %19

89:                                               ; preds = %19
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %15

93:                                               ; preds = %15
  %94 = load %struct.mtip_port*, %struct.mtip_port** %7, align 8
  %95 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %94, i32 0, i32 1
  %96 = call i32 @up(i32* %95)
  %97 = load i32, i32* @MTIP_DDF_CLEANUP_BIT, align 4
  %98 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %99 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %98, i32 0, i32 0
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  store i32 0, i32* @mtip_command_cleanup.in_progress, align 4
  br label %101

101:                                              ; preds = %93, %13
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

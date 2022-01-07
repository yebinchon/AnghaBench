; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_async_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_async_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32, i32, %struct.mtip_cmd*, %struct.TYPE_5__* }
%struct.mtip_cmd = type { i32, i32, i32, i32, i32, i32*, i32 (i32, i32)*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.driver_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PORT_IRQ_TF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Command tag %d failed due to TFE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*, i32, i8*, i32)* @mtip_async_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_async_complete(%struct.mtip_port* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtip_cmd*, align 8
  %10 = alloca %struct.driver_data*, align 8
  %11 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.driver_data*
  store %struct.driver_data* %13, %struct.driver_data** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  store i32 %21, i32* %11, align 4
  %22 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  %23 = icmp ne %struct.driver_data* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %30 = icmp ne %struct.mtip_port* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %20
  br label %116

36:                                               ; preds = %28
  %37 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %38 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %37, i32 0, i32 2
  %39 = load %struct.mtip_cmd*, %struct.mtip_cmd** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %39, i64 %41
  store %struct.mtip_cmd* %42, %struct.mtip_cmd** %9, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PORT_IRQ_TF_ERR, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %36
  %50 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %51 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %49, %36
  %59 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %60 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %59, i32 0, i32 6
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = call i64 @likely(i32 (i32, i32)* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %66 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %65, i32 0, i32 6
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %69 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 %67(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %58
  %74 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %75 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %74, i32 0, i32 6
  store i32 (i32, i32)* null, i32 (i32, i32)** %75, align 8
  %76 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %77 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %76, i32 0, i32 5
  store i32* null, i32** %77, align 8
  %78 = load %struct.driver_data*, %struct.driver_data** %10, align 8
  %79 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %83 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %86 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %89 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dma_unmap_sg(i32* %81, i32 %84, i32 %87, i32 %90)
  %92 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %93 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %92, i32 0, i32 2
  %94 = load %struct.mtip_cmd*, %struct.mtip_cmd** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %94, i64 %96
  %98 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %97, i32 0, i32 1
  %99 = call i32 @atomic_set(i32* %98, i32 0)
  %100 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @release_slot(%struct.mtip_port* %100, i32 %101)
  %103 = load %struct.mtip_cmd*, %struct.mtip_cmd** %9, align 8
  %104 = getelementptr inbounds %struct.mtip_cmd, %struct.mtip_cmd* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %73
  %109 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %110 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %109, i32 0, i32 1
  %111 = call i32 @up(i32* %110)
  br label %116

112:                                              ; preds = %73
  %113 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %114 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %113, i32 0, i32 0
  %115 = call i32 @up(i32* %114)
  br label %116

116:                                              ; preds = %35, %112, %108
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i64 @likely(i32 (i32, i32)*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @release_slot(%struct.mtip_port*, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

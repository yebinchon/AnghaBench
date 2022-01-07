; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_rx_queue = type { %struct.TYPE_4__*, %struct.vmxnet3_rx_buf_info**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8*, i32 }
%struct.vmxnet3_rx_buf_info = type { i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }
%struct.vmxnet3_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"failed to allocate rx ring %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to allocate rx comp ring\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*)* @vmxnet3_rq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_rq_create(%struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmxnet3_rx_queue*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmxnet3_rx_buf_info*, align 8
  store %struct.vmxnet3_rx_queue* %0, %struct.vmxnet3_rx_queue** %4, align 8
  store %struct.vmxnet3_adapter* %1, %struct.vmxnet3_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %58, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %61

12:                                               ; preds = %9
  %13 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  store i64 %22, i64* %7, align 8
  %23 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %28 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = call i8* @pci_alloc_consistent(i32 %25, i64 %26, i32* %33)
  %35 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %36 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  %42 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %12
  %52 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i8*, ...) @netdev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %130

57:                                               ; preds = %12
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %9

61:                                               ; preds = %9
  %62 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %63 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 %66, 4
  store i64 %67, i64* %7, align 8
  %68 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %73 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = call i8* @pci_alloc_consistent(i32 %70, i64 %71, i32* %74)
  %76 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %77 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %80 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %61
  %85 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, ...) @netdev_err(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %130

89:                                               ; preds = %61
  %90 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %91 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %97 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %95, %101
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call %struct.vmxnet3_rx_buf_info* @kzalloc(i64 %105, i32 %106)
  store %struct.vmxnet3_rx_buf_info* %107, %struct.vmxnet3_rx_buf_info** %8, align 8
  %108 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %8, align 8
  %109 = icmp ne %struct.vmxnet3_rx_buf_info* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %89
  br label %130

111:                                              ; preds = %89
  %112 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %8, align 8
  %113 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %114 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %113, i32 0, i32 1
  %115 = load %struct.vmxnet3_rx_buf_info**, %struct.vmxnet3_rx_buf_info*** %114, align 8
  %116 = getelementptr inbounds %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %115, i64 0
  store %struct.vmxnet3_rx_buf_info* %112, %struct.vmxnet3_rx_buf_info** %116, align 8
  %117 = load %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %8, align 8
  %118 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.vmxnet3_rx_buf_info, %struct.vmxnet3_rx_buf_info* %117, i64 %124
  %126 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %127 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %126, i32 0, i32 1
  %128 = load %struct.vmxnet3_rx_buf_info**, %struct.vmxnet3_rx_buf_info*** %127, align 8
  %129 = getelementptr inbounds %struct.vmxnet3_rx_buf_info*, %struct.vmxnet3_rx_buf_info** %128, i64 1
  store %struct.vmxnet3_rx_buf_info* %125, %struct.vmxnet3_rx_buf_info** %129, align 8
  store i32 0, i32* %3, align 4
  br label %136

130:                                              ; preds = %110, %84, %51
  %131 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %4, align 8
  %132 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %133 = call i32 @vmxnet3_rq_destroy(%struct.vmxnet3_rx_queue* %131, %struct.vmxnet3_adapter* %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %111
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i8* @pci_alloc_consistent(i32, i64, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local %struct.vmxnet3_rx_buf_info* @kzalloc(i64, i32) #1

declare dso_local i32 @vmxnet3_rq_destroy(%struct.vmxnet3_rx_queue*, %struct.vmxnet3_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

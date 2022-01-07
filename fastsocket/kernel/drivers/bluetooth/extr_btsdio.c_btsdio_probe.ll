; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, %struct.sdio_func_tuple* }
%struct.sdio_func_tuple = type { %struct.sdio_func_tuple*, i32, i32 }
%struct.sdio_device_id = type { i32 }
%struct.btsdio_data = type { %struct.hci_dev*, i32, i32, %struct.sdio_func* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, %struct.btsdio_data*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"func %p id %p class 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"code 0x%x size %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btsdio_work = common dso_local global i32 0, align 4
@HCI_SDIO = common dso_local global i32 0, align 4
@btsdio_open = common dso_local global i32 0, align 4
@btsdio_close = common dso_local global i32 0, align 4
@btsdio_flush = common dso_local global i32 0, align 4
@btsdio_send_frame = common dso_local global i32 0, align 4
@btsdio_destruct = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @btsdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.btsdio_data*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.sdio_func_tuple*, align 8
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %10 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %11 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %10, i32 0, i32 2
  %12 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %11, align 8
  store %struct.sdio_func_tuple* %12, %struct.sdio_func_tuple** %8, align 8
  %13 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %14 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %15 = ptrtoint %struct.sdio_device_id* %14 to i32
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, %struct.sdio_func*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.sdio_func* %13, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %23, %2
  %21 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %22 = icmp ne %struct.sdio_func_tuple* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %25 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.sdio_func*
  %29 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %30 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i8*, %struct.sdio_func*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.sdio_func* %28, i32 %31)
  %33 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %8, align 8
  %34 = getelementptr inbounds %struct.sdio_func_tuple, %struct.sdio_func_tuple* %33, i32 0, i32 0
  %35 = load %struct.sdio_func_tuple*, %struct.sdio_func_tuple** %34, align 8
  store %struct.sdio_func_tuple* %35, %struct.sdio_func_tuple** %8, align 8
  br label %20

36:                                               ; preds = %20
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.btsdio_data* @kzalloc(i32 24, i32 %37)
  store %struct.btsdio_data* %38, %struct.btsdio_data** %6, align 8
  %39 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %40 = icmp ne %struct.btsdio_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %109

44:                                               ; preds = %36
  %45 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %46 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %47 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %46, i32 0, i32 3
  store %struct.sdio_func* %45, %struct.sdio_func** %47, align 8
  %48 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %49 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %48, i32 0, i32 2
  %50 = load i32, i32* @btsdio_work, align 4
  %51 = call i32 @INIT_WORK(i32* %49, i32 %50)
  %52 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %53 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %52, i32 0, i32 1
  %54 = call i32 @skb_queue_head_init(i32* %53)
  %55 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %55, %struct.hci_dev** %7, align 8
  %56 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %57 = icmp ne %struct.hci_dev* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %44
  %59 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %60 = call i32 @kfree(%struct.btsdio_data* %59)
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %109

63:                                               ; preds = %44
  %64 = load i32, i32* @HCI_SDIO, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 8
  %67 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 6
  store %struct.btsdio_data* %67, %struct.btsdio_data** %69, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %71 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %72 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %71, i32 0, i32 0
  store %struct.hci_dev* %70, %struct.hci_dev** %72, align 8
  %73 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %74 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 0
  %76 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %73, i32* %75)
  %77 = load i32, i32* @btsdio_open, align 4
  %78 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @btsdio_close, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @btsdio_flush, align 4
  %84 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %85 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @btsdio_send_frame, align 4
  %87 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %88 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @btsdio_destruct, align 4
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @THIS_MODULE, align 4
  %93 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %96 = call i32 @hci_register_dev(%struct.hci_dev* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %63
  %100 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %101 = call i32 @hci_free_dev(%struct.hci_dev* %100)
  %102 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %103 = call i32 @kfree(%struct.btsdio_data* %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %109

105:                                              ; preds = %63
  %106 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %107 = load %struct.btsdio_data*, %struct.btsdio_data** %6, align 8
  %108 = call i32 @sdio_set_drvdata(%struct.sdio_func* %106, %struct.btsdio_data* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %99, %58, %41
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @BT_DBG(i8*, %struct.sdio_func*, i32, ...) #1

declare dso_local %struct.btsdio_data* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @kfree(%struct.btsdio_data*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.btsdio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

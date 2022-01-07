; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_add_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_add_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.btmrvl_private* }
%struct.TYPE_3__ = type { i32, i8*, %struct.hci_dev* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.btmrvl_private* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can not allocate priv\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocate buffer for btmrvl_adapter failed!\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Can not allocate HCI device\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Starting kthread...\00", align 1
@btmrvl_service_main_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"btmrvl_main_service\00", align 1
@HCI_SDIO = common dso_local global i32 0, align 4
@btmrvl_open = common dso_local global i32 0, align 4
@btmrvl_close = common dso_local global i32 0, align 4
@btmrvl_flush = common dso_local global i32 0, align 4
@btmrvl_send_frame = common dso_local global i32 0, align 4
@btmrvl_destruct = common dso_local global i32 0, align 4
@btmrvl_ioctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Can not register HCI device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btmrvl_private* @btmrvl_add_card(i8* %0) #0 {
  %2 = alloca %struct.btmrvl_private*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.btmrvl_private*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.hci_dev* null, %struct.hci_dev** %4, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 56, i32 %7)
  %9 = bitcast i8* %8 to %struct.btmrvl_private*
  store %struct.btmrvl_private* %9, %struct.btmrvl_private** %5, align 8
  %10 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %11 = icmp ne %struct.btmrvl_private* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @BT_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %113

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 1, i32 %15)
  %17 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %18 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %20 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = call i32 @BT_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %110

25:                                               ; preds = %14
  %26 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %27 = call i32 @btmrvl_init_adapter(%struct.btmrvl_private* %26)
  %28 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %28, %struct.hci_dev** %4, align 8
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = icmp ne %struct.hci_dev* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %107

33:                                               ; preds = %25
  %34 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %36 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %37 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store %struct.btmrvl_private* %35, %struct.btmrvl_private** %38, align 8
  %39 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %40 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %43 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = call i32 @init_waitqueue_head(i32* %44)
  %46 = load i32, i32* @btmrvl_service_main_thread, align 4
  %47 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %48 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %47, i32 0, i32 0
  %49 = call i32 @kthread_run(i32 %46, %struct.TYPE_4__* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %51 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %54 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %55 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store %struct.hci_dev* %53, %struct.hci_dev** %56, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %59 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %62 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 8
  store %struct.btmrvl_private* %61, %struct.btmrvl_private** %63, align 8
  %64 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %65 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* @HCI_SDIO, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @btmrvl_open, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @btmrvl_close, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @btmrvl_flush, align 4
  %77 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @btmrvl_send_frame, align 4
  %80 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %81 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @btmrvl_destruct, align 4
  %83 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %84 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @btmrvl_ioctl, align 4
  %86 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @THIS_MODULE, align 4
  %89 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %90 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %92 = call i32 @hci_register_dev(%struct.hci_dev* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %33
  %96 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %99

97:                                               ; preds = %33
  %98 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  store %struct.btmrvl_private* %98, %struct.btmrvl_private** %2, align 8
  br label %114

99:                                               ; preds = %95
  %100 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %101 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @kthread_stop(i32 %103)
  %105 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %106 = call i32 @hci_free_dev(%struct.hci_dev* %105)
  br label %107

107:                                              ; preds = %99, %31
  %108 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %109 = call i32 @btmrvl_free_adapter(%struct.btmrvl_private* %108)
  br label %110

110:                                              ; preds = %107, %23
  %111 = load %struct.btmrvl_private*, %struct.btmrvl_private** %5, align 8
  %112 = call i32 @kfree(%struct.btmrvl_private* %111)
  br label %113

113:                                              ; preds = %110, %12
  store %struct.btmrvl_private* null, %struct.btmrvl_private** %2, align 8
  br label %114

114:                                              ; preds = %113, %97
  %115 = load %struct.btmrvl_private*, %struct.btmrvl_private** %2, align 8
  ret %struct.btmrvl_private* %115
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @btmrvl_init_adapter(%struct.btmrvl_private*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kthread_run(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @btmrvl_free_adapter(%struct.btmrvl_private*) #1

declare dso_local i32 @kfree(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_vhci.c_vhci_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_vhci.c_vhci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.vhci_data* }
%struct.vhci_data = type { %struct.hci_dev*, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, %struct.vhci_data*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_VIRTUAL = common dso_local global i32 0, align 4
@vhci_open_dev = common dso_local global i32 0, align 4
@vhci_close_dev = common dso_local global i32 0, align 4
@vhci_flush = common dso_local global i32 0, align 4
@vhci_send_frame = common dso_local global i32 0, align 4
@vhci_destruct = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @vhci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vhci_data*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.vhci_data* @kzalloc(i32 16, i32 %8)
  store %struct.vhci_data* %9, %struct.vhci_data** %6, align 8
  %10 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %11 = icmp ne %struct.vhci_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %17 = getelementptr inbounds %struct.vhci_data, %struct.vhci_data* %16, i32 0, i32 2
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %20 = getelementptr inbounds %struct.vhci_data, %struct.vhci_data* %19, i32 0, i32 1
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %22, %struct.hci_dev** %7, align 8
  %23 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %24 = icmp ne %struct.hci_dev* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %27 = call i32 @kfree(%struct.vhci_data* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %15
  %31 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %32 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %33 = getelementptr inbounds %struct.vhci_data, %struct.vhci_data* %32, i32 0, i32 0
  store %struct.hci_dev* %31, %struct.hci_dev** %33, align 8
  %34 = load i32, i32* @HCI_VIRTUAL, align 4
  %35 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 6
  store %struct.vhci_data* %37, %struct.vhci_data** %39, align 8
  %40 = load i32, i32* @vhci_open_dev, align 4
  %41 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @vhci_close_dev, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @vhci_flush, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @vhci_send_frame, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @vhci_destruct, align 4
  %53 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %59 = call i64 @hci_register_dev(%struct.hci_dev* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %30
  %62 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %64 = call i32 @kfree(%struct.vhci_data* %63)
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = call i32 @hci_free_dev(%struct.hci_dev* %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %30
  %70 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  store %struct.vhci_data* %70, %struct.vhci_data** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = call i32 @nonseekable_open(%struct.inode* %73, %struct.file* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %61, %25, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.vhci_data* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @kfree(%struct.vhci_data*) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

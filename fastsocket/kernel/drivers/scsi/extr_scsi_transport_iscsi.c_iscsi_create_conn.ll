; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { i32, %struct.TYPE_4__, i32, %struct.iscsi_transport*, i32, %struct.iscsi_cls_conn* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.iscsi_transport = type { i32 }
%struct.iscsi_cls_session = type { i32, i32, %struct.iscsi_transport* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"connection%d:%u\00", align 1
@iscsi_conn_release = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not register connection's dev\0A\00", align 1
@connlock = common dso_local global i32 0, align 4
@connlist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Completed conn creation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iscsi_cls_conn* @iscsi_create_conn(%struct.iscsi_cls_session* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iscsi_cls_conn*, align 8
  %5 = alloca %struct.iscsi_cls_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_transport*, align 8
  %9 = alloca %struct.iscsi_cls_conn*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %13 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %12, i32 0, i32 2
  %14 = load %struct.iscsi_transport*, %struct.iscsi_transport** %13, align 8
  store %struct.iscsi_transport* %14, %struct.iscsi_transport** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 56, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.iscsi_cls_conn* @kzalloc(i32 %18, i32 %19)
  store %struct.iscsi_cls_conn* %20, %struct.iscsi_cls_conn** %9, align 8
  %21 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %22 = icmp ne %struct.iscsi_cls_conn* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %97

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %29 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %28, i64 1
  %30 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %31 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %30, i32 0, i32 5
  store %struct.iscsi_cls_conn* %29, %struct.iscsi_cls_conn** %31, align 8
  br label %32

32:                                               ; preds = %27, %24
  %33 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %34 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %33, i32 0, i32 4
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %37 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.iscsi_transport*, %struct.iscsi_transport** %8, align 8
  %40 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %41 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %40, i32 0, i32 3
  store %struct.iscsi_transport* %39, %struct.iscsi_transport** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %44 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %45, i32 0, i32 0
  %47 = call i32 @get_device(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  br label %94

50:                                               ; preds = %32
  %51 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %52 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %51, i32 0, i32 1
  %53 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %54 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @dev_set_name(%struct.TYPE_4__* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %59 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %58, i32 0, i32 0
  %60 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %61 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32* %59, i32** %62, align 8
  %63 = load i32, i32* @iscsi_conn_release, align 4
  %64 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %65 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %68 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %67, i32 0, i32 1
  %69 = call i32 @device_register(%struct.TYPE_4__* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %50
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %75 = call i32 @iscsi_cls_session_printk(i32 %73, %struct.iscsi_cls_session* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %90

76:                                               ; preds = %50
  %77 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %78 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %77, i32 0, i32 1
  %79 = call i32 @transport_register_device(%struct.TYPE_4__* %78)
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @spin_lock_irqsave(i32* @connlock, i64 %80)
  %82 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %83 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %82, i32 0, i32 0
  %84 = call i32 @list_add(i32* %83, i32* @connlist)
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* @connlock, i64 %85)
  %87 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %88 = call i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn* %87, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  store %struct.iscsi_cls_conn* %89, %struct.iscsi_cls_conn** %4, align 8
  br label %97

90:                                               ; preds = %72
  %91 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %5, align 8
  %92 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %91, i32 0, i32 0
  %93 = call i32 @put_device(i32* %92)
  br label %94

94:                                               ; preds = %90, %49
  %95 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %9, align 8
  %96 = call i32 @kfree(%struct.iscsi_cls_conn* %95)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %4, align 8
  br label %97

97:                                               ; preds = %94, %76, %23
  %98 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %4, align 8
  ret %struct.iscsi_cls_conn* %98
}

declare dso_local %struct.iscsi_cls_conn* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @iscsi_cls_session_printk(i32, %struct.iscsi_cls_session*, i8*) #1

declare dso_local i32 @transport_register_device(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ISCSI_DBG_TRANS_CONN(%struct.iscsi_cls_conn*, i8*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @kfree(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

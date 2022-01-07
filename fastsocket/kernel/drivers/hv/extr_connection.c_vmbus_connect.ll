; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i64, i32, i8*, i32*, i32, i32, i32, i32 }
%struct.vmbus_channel_msginfo = type { i32 }

@CONNECTING = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"hv_vmbus_con\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VERSION_CURRENT = common dso_local global i32 0, align 4
@VERSION_INVAL = common dso_local global i32 0, align 4
@vmbus_proto_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Hyper-V Host Build:%d-%d.%d-%d-%d.%d; Vmbus version:%d.%d\0A\00", align 1
@host_info_eax = common dso_local global i32 0, align 4
@host_info_ebx = common dso_local global i32 0, align 4
@host_info_ecx = common dso_local global i32 0, align 4
@host_info_edx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to connect to host\0A\00", align 1
@DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel_msginfo*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store %struct.vmbus_channel_msginfo* null, %struct.vmbus_channel_msginfo** %3, align 8
  %5 = load i32, i32* @CONNECTING, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 3), align 8
  %6 = call i64 @create_workqueue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %96

12:                                               ; preds = %0
  %13 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 9))
  %14 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 8))
  %15 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 7))
  %16 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 6))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @__get_free_pages(i32 %19, i32 0)
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %96

28:                                               ; preds = %12
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  store i32* %29, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 5), align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %31 = ptrtoint i32* %30 to i64
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = ashr i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = add i64 %31, %34
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 4), align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = load i32, i32* @__GFP_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @__get_free_pages(i32 %39, i32 1)
  %41 = inttoptr i64 %40 to i8*
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %96

48:                                               ; preds = %28
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.vmbus_channel_msginfo* @kzalloc(i32 8, i32 %49)
  store %struct.vmbus_channel_msginfo* %50, %struct.vmbus_channel_msginfo** %3, align 8
  %51 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %52 = icmp eq %struct.vmbus_channel_msginfo* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %96

56:                                               ; preds = %48
  %57 = load i32, i32* @VERSION_CURRENT, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %68, %56
  %59 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo* %59, i32 %60)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %72

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @vmbus_get_next_version(i32 %66)
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @VERSION_INVAL, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %58, label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @VERSION_INVAL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %96

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* @vmbus_proto_version, align 4
  %79 = load i32, i32* @host_info_eax, align 4
  %80 = load i32, i32* @host_info_ebx, align 4
  %81 = ashr i32 %80, 16
  %82 = load i32, i32* @host_info_ebx, align 4
  %83 = and i32 %82, 65535
  %84 = load i32, i32* @host_info_ecx, align 4
  %85 = load i32, i32* @host_info_edx, align 4
  %86 = ashr i32 %85, 24
  %87 = load i32, i32* @host_info_edx, align 4
  %88 = and i32 %87, 16777215
  %89 = load i32, i32* %4, align 4
  %90 = ashr i32 %89, 16
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 65535
  %93 = call i32 @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %81, i32 %83, i32 %84, i32 %86, i32 %88, i32 %90, i32 %92)
  %94 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %95 = call i32 @kfree(%struct.vmbus_channel_msginfo* %94)
  store i32 0, i32* %1, align 4
  br label %122

96:                                               ; preds = %76, %53, %45, %25, %9
  %97 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @DISCONNECTED, align 4
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 3), align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 2), align 8
  %103 = call i32 @destroy_workqueue(i64 %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  %109 = ptrtoint i32* %108 to i64
  %110 = call i32 @free_pages(i64 %109, i32 0)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 1), align 8
  br label %111

111:                                              ; preds = %107, %104
  %112 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  %116 = ptrtoint i32* %115 to i64
  %117 = call i32 @free_pages(i64 %116, i32 1)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vmbus_connection, i32 0, i32 0), align 8
  br label %118

118:                                              ; preds = %114, %111
  %119 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %3, align 8
  %120 = call i32 @kfree(%struct.vmbus_channel_msginfo* %119)
  %121 = load i32, i32* %2, align 4
  store i32 %121, i32* %1, align 4
  br label %122

122:                                              ; preds = %118, %77
  %123 = load i32, i32* %1, align 4
  ret i32 %123
}

declare dso_local i64 @create_workqueue(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local %struct.vmbus_channel_msginfo* @kzalloc(i32, i32) #1

declare dso_local i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo*, i32) #1

declare dso_local i32 @vmbus_get_next_version(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.vmbus_channel_msginfo*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_negotiate_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_connection.c_vmbus_negotiate_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32 }
%struct.vmbus_channel_msginfo = type { %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.vmbus_channel_initiate_contact = type { i8*, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CHANNELMSG_INITIATE_CONTACT = common dso_local global i32 0, align 4
@vmbus_connection = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CONNECTED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel_msginfo*, i32)* @vmbus_negotiate_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_negotiate_version(%struct.vmbus_channel_msginfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel_msginfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmbus_channel_initiate_contact*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.vmbus_channel_msginfo* %0, %struct.vmbus_channel_msginfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %10, i32 0, i32 2
  %12 = call i32 @init_completion(i32* %11)
  %13 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %14 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vmbus_channel_initiate_contact*
  store %struct.vmbus_channel_initiate_contact* %16, %struct.vmbus_channel_initiate_contact** %7, align 8
  %17 = load i32, i32* @CHANNELMSG_INITIATE_CONTACT, align 4
  %18 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %7, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %7, align 8
  %23 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 0), align 8
  %25 = call i8* @virt_to_phys(i8* %24)
  %26 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %7, align 8
  %27 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 1), align 8
  %29 = call i8* @virt_to_phys(i8* %28)
  %30 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %7, align 8
  %31 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 1), align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = add i64 %33, %34
  %36 = inttoptr i64 %35 to i8*
  %37 = call i8* @virt_to_phys(i8* %36)
  %38 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %7, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel_initiate_contact, %struct.vmbus_channel_initiate_contact* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %40)
  %42 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %43 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %43, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 4))
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %45)
  %47 = load %struct.vmbus_channel_initiate_contact*, %struct.vmbus_channel_initiate_contact** %7, align 8
  %48 = call i32 @vmbus_post_msg(%struct.vmbus_channel_initiate_contact* %47, i32 32)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %2
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %52)
  %54 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %55 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %54, i32 0, i32 1
  %56 = call i32 @list_del(i32* %55)
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %99

60:                                               ; preds = %2
  %61 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %62 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %61, i32 0, i32 2
  %63 = load i32, i32* @HZ, align 4
  %64 = mul nsw i32 5, %63
  %65 = call i32 @wait_for_completion_timeout(i32* %62, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %69)
  %71 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %72 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %71, i32 0, i32 1
  %73 = call i32 @list_del(i32* %72)
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %74)
  %76 = load i32, i32* @ETIMEDOUT, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %99

78:                                               ; preds = %60
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %79)
  %81 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %82 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %81, i32 0, i32 1
  %83 = call i32 @list_del(i32* %82)
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 3), i64 %84)
  %86 = load %struct.vmbus_channel_msginfo*, %struct.vmbus_channel_msginfo** %4, align 8
  %87 = getelementptr inbounds %struct.vmbus_channel_msginfo, %struct.vmbus_channel_msginfo* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %78
  %93 = load i32, i32* @CONNECTED, align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmbus_connection, i32 0, i32 2), align 8
  br label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @ECONNREFUSED, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %94, %68, %51
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i8* @virt_to_phys(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmbus_post_msg(%struct.vmbus_channel_initiate_contact*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

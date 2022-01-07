; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_conn_error_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_conn_error_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iscsi_uevent = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.iscsi_internal = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"gracefully ignored conn error (%d)\0A\00", align 1
@ISCSI_KEVENT_CONN_ERROR = common dso_local global i32 0, align 4
@ISCSI_NL_GRP_ISCSID = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"detected conn error (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_conn_error_event(%struct.iscsi_cls_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.iscsi_uevent*, align 8
  %8 = alloca %struct.iscsi_internal*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_cls_conn* %0, %struct.iscsi_cls_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i32 @NLMSG_SPACE(i32 20)
  store i32 %10, i32* %9, align 4
  %11 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.iscsi_internal* @iscsi_if_transport_lookup(i32 %13)
  store %struct.iscsi_internal* %14, %struct.iscsi_internal** %8, align 8
  %15 = load %struct.iscsi_internal*, %struct.iscsi_internal** %8, align 8
  %16 = icmp ne %struct.iscsi_internal* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %73

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @alloc_skb(i32 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @KERN_ERR, align 4
  %26 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @iscsi_cls_conn_printk(i32 %25, %struct.iscsi_cls_conn* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %73

29:                                               ; preds = %18
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %30, i32 0, i32 0, i32 0, i32 %34, i32 0)
  store %struct.nlmsghdr* %35, %struct.nlmsghdr** %5, align 8
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %37 = call %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr* %36)
  store %struct.iscsi_uevent* %37, %struct.iscsi_uevent** %7, align 8
  %38 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iscsi_handle(i32 %40)
  %42 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %7, align 8
  %43 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ISCSI_KEVENT_CONN_ERROR, align 4
  %45 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %7, align 8
  %46 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %7, align 8
  %49 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 4
  %52 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %53 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %7, align 8
  %56 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %60 = call i32 @iscsi_conn_get_sid(%struct.iscsi_cls_conn* %59)
  %61 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %7, align 8
  %62 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load i32, i32* @ISCSI_NL_GRP_ISCSID, align 4
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i32 @iscsi_multicast_skb(%struct.sk_buff* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @KERN_INFO, align 4
  %70 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @iscsi_cls_conn_printk(i32 %69, %struct.iscsi_cls_conn* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %29, %24, %17
  ret void
}

declare dso_local i32 @NLMSG_SPACE(i32) #1

declare dso_local %struct.iscsi_internal* @iscsi_if_transport_lookup(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @iscsi_cls_conn_printk(i32, %struct.iscsi_cls_conn*, i8*, i32) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @iscsi_handle(i32) #1

declare dso_local i32 @iscsi_conn_get_sid(%struct.iscsi_cls_conn*) #1

declare dso_local i32 @iscsi_multicast_skb(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

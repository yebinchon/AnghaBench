; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_session_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_session_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_session = type { i32, i32 }
%struct.iscsi_internal = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.iscsi_uevent = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot notify userspace of session event %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid event %u.\0A\00", align 1
@ISCSI_NL_GRP_ISCSID = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Cannot notify userspace of session event %u. Check iscsi daemon\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Completed handling event %d rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_session_event(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_internal*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.iscsi_uevent*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = call i32 @NLMSG_SPACE(i32 32)
  store i32 %13, i32* %12, align 4
  %14 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.iscsi_internal* @iscsi_if_transport_lookup(i32 %16)
  store %struct.iscsi_internal* %17, %struct.iscsi_internal** %6, align 8
  %18 = load %struct.iscsi_internal*, %struct.iscsi_internal** %6, align 8
  %19 = icmp ne %struct.iscsi_internal* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %131

23:                                               ; preds = %2
  %24 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %25 = call %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session* %24)
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sk_buff* @alloc_skb(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %9, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @KERN_ERR, align 4
  %33 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @iscsi_cls_session_printk(i32 %32, %struct.iscsi_cls_session* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %131

38:                                               ; preds = %23
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff* %39, i32 0, i32 0, i32 0, i32 %43, i32 0)
  store %struct.nlmsghdr* %44, %struct.nlmsghdr** %10, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %46 = call %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr* %45)
  store %struct.iscsi_uevent* %46, %struct.iscsi_uevent** %8, align 8
  %47 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @iscsi_handle(i32 %49)
  %51 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %52 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %55 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  switch i32 %56, label %102 [
    i32 129, label %57
    i32 130, label %72
    i32 128, label %87
  ]

57:                                               ; preds = %38
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %62 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %69 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  br label %111

72:                                               ; preds = %38
  %73 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %74 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %77 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %84 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 %82, i32* %86, align 4
  br label %111

87:                                               ; preds = %38
  %88 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %89 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %92 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i32 %90, i32* %94, align 4
  %95 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %96 = getelementptr inbounds %struct.iscsi_cls_session, %struct.iscsi_cls_session* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %8, align 8
  %99 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  br label %111

102:                                              ; preds = %38
  %103 = load i32, i32* @KERN_ERR, align 4
  %104 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @iscsi_cls_session_printk(i32 %103, %struct.iscsi_cls_session* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %131

111:                                              ; preds = %87, %72, %57
  %112 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %113 = load i32, i32* @ISCSI_NL_GRP_ISCSID, align 4
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i32 @iscsi_multicast_skb(%struct.sk_buff* %112, i32 %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @ESRCH, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @iscsi_cls_session_printk(i32 %121, %struct.iscsi_cls_session* %122, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %111
  %126 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %102, %31, %20
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @NLMSG_SPACE(i32) #1

declare dso_local %struct.iscsi_internal* @iscsi_if_transport_lookup(i32) #1

declare dso_local %struct.Scsi_Host* @iscsi_session_to_shost(%struct.iscsi_cls_session*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @iscsi_cls_session_printk(i32, %struct.iscsi_cls_session*, i8*, i32) #1

declare dso_local %struct.nlmsghdr* @__nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i32 @iscsi_handle(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @iscsi_multicast_skb(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ISCSI_DBG_TRANS_SESSION(%struct.iscsi_cls_session*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

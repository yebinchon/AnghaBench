; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.iscsi_uevent = type { i64, i32 }

@rx_queue_mutex = common dso_local global i32 0, align 4
@ISCSI_KEVENT_IF_ERROR = common dso_local global i64 0, align 8
@ISCSI_UEVENT_GET_STATS = common dso_local global i64 0, align 8
@ISCSI_UEVENT_GET_CHAP = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @iscsi_if_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iscsi_if_rx(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.iscsi_uevent*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = call i32 @mutex_lock(i32* @rx_queue_mutex)
  br label %9

9:                                                ; preds = %109, %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @NLMSG_SPACE(i32 0)
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %113

15:                                               ; preds = %9
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %16)
  store %struct.nlmsghdr* %17, %struct.nlmsghdr** %5, align 8
  %18 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %19 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 12
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %28 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23, %15
  br label %113

33:                                               ; preds = %23
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %35 = call %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr* %34)
  store %struct.iscsi_uevent* %35, %struct.iscsi_uevent** %6, align 8
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = call i64 @NLMSG_ALIGN(i64 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %46, %33
  %51 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %53 = call i32 @iscsi_if_recv_msg(%struct.sk_buff* %51, %struct.nlmsghdr* %52, i64* %7)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i64, i64* @ISCSI_KEVENT_IF_ERROR, align 8
  %58 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %59 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %62 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %56, %50
  br label %64

64:                                               ; preds = %107, %63
  %65 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %66 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ISCSI_UEVENT_GET_STATS, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  br label %109

74:                                               ; preds = %70, %64
  %75 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ISCSI_UEVENT_GET_CHAP, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  br label %109

84:                                               ; preds = %80, %74
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %87 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %90 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %6, align 8
  %93 = call i32 @iscsi_if_send_reply(i64 %85, i32 %88, i32 %91, i32 0, i32 0, %struct.iscsi_uevent* %92, i32 16)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @ECONNREFUSED, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @ESRCH, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br label %107

107:                                              ; preds = %102, %97, %94
  %108 = phi i1 [ false, %97 ], [ false, %94 ], [ %106, %102 ]
  br i1 %108, label %64, label %109

109:                                              ; preds = %107, %83, %73
  %110 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @skb_pull(%struct.sk_buff* %110, i64 %111)
  br label %9

113:                                              ; preds = %32, %9
  %114 = call i32 @mutex_unlock(i32* @rx_queue_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @NLMSG_SPACE(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local i64 @NLMSG_ALIGN(i64) #1

declare dso_local i32 @iscsi_if_recv_msg(%struct.sk_buff*, %struct.nlmsghdr*, i64*) #1

declare dso_local i32 @iscsi_if_send_reply(i64, i32, i32, i32, i32, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

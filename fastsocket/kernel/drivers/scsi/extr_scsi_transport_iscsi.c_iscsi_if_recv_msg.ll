; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_recv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_if_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.iscsi_uevent = type { %struct.TYPE_20__, %struct.TYPE_17__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.iscsi_transport = type { i32, i32 (%struct.iscsi_cls_conn*, %struct.iscsi_hdr*, i8*, i32)*, i32 (%struct.iscsi_cls_conn.0*, i32)*, i32 (%struct.iscsi_cls_conn.1*)*, i32, i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn.2*, i32, i32)*, i32 (%struct.iscsi_cls_session.3*)* }
%struct.iscsi_cls_conn = type opaque
%struct.iscsi_hdr = type opaque
%struct.iscsi_cls_conn.0 = type opaque
%struct.iscsi_cls_conn.1 = type opaque
%struct.iscsi_cls_session = type opaque
%struct.iscsi_cls_conn.2 = type opaque
%struct.iscsi_cls_session.3 = type opaque
%struct.iscsi_internal = type { %struct.iscsi_transport* }
%struct.iscsi_cls_session.4 = type { i32 }
%struct.iscsi_cls_conn.5 = type { i32, %struct.iscsi_endpoint* }
%struct.iscsi_endpoint = type { %struct.iscsi_cls_conn.5*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.iscsi_hdr.6 = type { i32 }

@ISCSI_NL_GRP_UIP = common dso_local global i32 0, align 4
@ISCSI_NL_GRP_ISCSID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not set ep conn binding\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i32*)* @iscsi_if_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_if_recv_msg(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_uevent*, align 8
  %10 = alloca %struct.iscsi_transport*, align 8
  %11 = alloca %struct.iscsi_internal*, align 8
  %12 = alloca %struct.iscsi_cls_session.4*, align 8
  %13 = alloca %struct.iscsi_cls_conn.5*, align 8
  %14 = alloca %struct.iscsi_endpoint*, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca %struct.TYPE_11__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %18 = call %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr* %17)
  store %struct.iscsi_uevent* %18, %struct.iscsi_uevent** %9, align 8
  store %struct.iscsi_transport* null, %struct.iscsi_transport** %10, align 8
  store %struct.iscsi_endpoint* null, %struct.iscsi_endpoint** %14, align 8
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %20 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 142
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ISCSI_NL_GRP_UIP, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %24, i32* %25, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ISCSI_NL_GRP_ISCSID, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %31 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @iscsi_ptr(i32 %32)
  %34 = call %struct.iscsi_internal* @iscsi_if_transport_lookup(i32 %33)
  store %struct.iscsi_internal* %34, %struct.iscsi_internal** %11, align 8
  %35 = load %struct.iscsi_internal*, %struct.iscsi_internal** %11, align 8
  %36 = icmp ne %struct.iscsi_internal* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %455

40:                                               ; preds = %29
  %41 = load %struct.iscsi_internal*, %struct.iscsi_internal** %11, align 8
  %42 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %41, i32 0, i32 0
  %43 = load %struct.iscsi_transport*, %struct.iscsi_transport** %42, align 8
  store %struct.iscsi_transport* %43, %struct.iscsi_transport** %10, align 8
  %44 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %45 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @try_module_get(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %455

52:                                               ; preds = %40
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %54 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %446 [
    i32 153, label %56
    i32 155, label %81
    i32 149, label %118
    i32 128, label %138
    i32 154, label %157
    i32 150, label %161
    i32 156, label %165
    i32 136, label %267
    i32 135, label %271
    i32 134, label %299
    i32 140, label %329
    i32 147, label %377
    i32 132, label %381
    i32 129, label %381
    i32 130, label %381
    i32 131, label %381
    i32 133, label %388
    i32 138, label %392
    i32 142, label %396
    i32 137, label %400
    i32 141, label %406
    i32 148, label %410
    i32 152, label %414
    i32 139, label %418
    i32 143, label %424
    i32 151, label %430
    i32 146, label %434
    i32 145, label %438
    i32 144, label %442
  ]

56:                                               ; preds = %52
  %57 = load %struct.iscsi_internal*, %struct.iscsi_internal** %11, align 8
  %58 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %59 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @NETLINK_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %66 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %71 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %76 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @iscsi_if_create_session(%struct.iscsi_internal* %57, %struct.iscsi_endpoint* %58, %struct.iscsi_uevent* %59, i32 %64, i32 %69, i32 %74, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %449

81:                                               ; preds = %52
  %82 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %83 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %86)
  store %struct.iscsi_endpoint* %87, %struct.iscsi_endpoint** %14, align 8
  %88 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %89 = icmp ne %struct.iscsi_endpoint* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %449

93:                                               ; preds = %81
  %94 = load %struct.iscsi_internal*, %struct.iscsi_internal** %11, align 8
  %95 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %96 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i32 @NETLINK_CB(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %103 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %108 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %113 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @iscsi_if_create_session(%struct.iscsi_internal* %94, %struct.iscsi_endpoint* %95, %struct.iscsi_uevent* %96, i32 %101, i32 %106, i32 %111, i32 %116)
  store i32 %117, i32* %8, align 4
  br label %449

118:                                              ; preds = %52
  %119 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %120 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32 %123)
  store %struct.iscsi_cls_session.4* %124, %struct.iscsi_cls_session.4** %12, align 8
  %125 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %126 = icmp ne %struct.iscsi_cls_session.4* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %129 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %128, i32 0, i32 6
  %130 = load i32 (%struct.iscsi_cls_session.3*)*, i32 (%struct.iscsi_cls_session.3*)** %129, align 8
  %131 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %132 = bitcast %struct.iscsi_cls_session.4* %131 to %struct.iscsi_cls_session.3*
  %133 = call i32 %130(%struct.iscsi_cls_session.3* %132)
  br label %137

134:                                              ; preds = %118
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %127
  br label %449

138:                                              ; preds = %52
  %139 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %140 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32 %143)
  store %struct.iscsi_cls_session.4* %144, %struct.iscsi_cls_session.4** %12, align 8
  %145 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %146 = icmp ne %struct.iscsi_cls_session.4* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %149 = call i32 @iscsi_session_to_shost(%struct.iscsi_cls_session.4* %148)
  %150 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %151 = getelementptr inbounds %struct.iscsi_cls_session.4, %struct.iscsi_cls_session.4* %150, i32 0, i32 0
  %152 = call i32 @scsi_queue_work(i32 %149, i32* %151)
  br label %156

153:                                              ; preds = %138
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %153, %147
  br label %449

157:                                              ; preds = %52
  %158 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %159 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %160 = call i32 @iscsi_if_create_conn(%struct.iscsi_transport* %158, %struct.iscsi_uevent* %159)
  store i32 %160, i32* %8, align 4
  br label %449

161:                                              ; preds = %52
  %162 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %163 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %164 = call i32 @iscsi_if_destroy_conn(%struct.iscsi_transport* %162, %struct.iscsi_uevent* %163)
  store i32 %164, i32* %8, align 4
  br label %449

165:                                              ; preds = %52
  %166 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %167 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32 %170)
  store %struct.iscsi_cls_session.4* %171, %struct.iscsi_cls_session.4** %12, align 8
  %172 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %173 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %178 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %176, i32 %181)
  store %struct.iscsi_cls_conn.5* %182, %struct.iscsi_cls_conn.5** %13, align 8
  %183 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %184 = icmp ne %struct.iscsi_cls_conn.5* %183, null
  br i1 %184, label %185, label %198

185:                                              ; preds = %165
  %186 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %187 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %186, i32 0, i32 1
  %188 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %187, align 8
  %189 = icmp ne %struct.iscsi_endpoint* %188, null
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %192 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %193 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %192, i32 0, i32 1
  %194 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %193, align 8
  %195 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @iscsi_if_ep_disconnect(%struct.iscsi_transport* %191, i32 %196)
  br label %198

198:                                              ; preds = %190, %185, %165
  %199 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %200 = icmp ne %struct.iscsi_cls_session.4* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %203 = icmp ne %struct.iscsi_cls_conn.5* %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %449

207:                                              ; preds = %201
  %208 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %209 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %208, i32 0, i32 5
  %210 = load i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn.2*, i32, i32)*, i32 (%struct.iscsi_cls_session*, %struct.iscsi_cls_conn.2*, i32, i32)** %209, align 8
  %211 = load %struct.iscsi_cls_session.4*, %struct.iscsi_cls_session.4** %12, align 8
  %212 = bitcast %struct.iscsi_cls_session.4* %211 to %struct.iscsi_cls_session*
  %213 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %214 = bitcast %struct.iscsi_cls_conn.5* %213 to %struct.iscsi_cls_conn.2*
  %215 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %216 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %221 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 %210(%struct.iscsi_cls_session* %212, %struct.iscsi_cls_conn.2* %214, i32 %219, i32 %224)
  %226 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %227 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 4
  %229 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %230 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %207
  %235 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %236 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %234, %207
  br label %449

240:                                              ; preds = %234
  %241 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %242 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32 %245)
  store %struct.iscsi_endpoint* %246, %struct.iscsi_endpoint** %14, align 8
  %247 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %248 = icmp ne %struct.iscsi_endpoint* %247, null
  br i1 %248, label %249, label %262

249:                                              ; preds = %240
  %250 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %251 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %252 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %251, i32 0, i32 0
  store %struct.iscsi_cls_conn.5* %250, %struct.iscsi_cls_conn.5** %252, align 8
  %253 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %254 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %253, i32 0, i32 0
  %255 = call i32 @mutex_lock(i32* %254)
  %256 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %14, align 8
  %257 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %258 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %257, i32 0, i32 1
  store %struct.iscsi_endpoint* %256, %struct.iscsi_endpoint** %258, align 8
  %259 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %260 = getelementptr inbounds %struct.iscsi_cls_conn.5, %struct.iscsi_cls_conn.5* %259, i32 0, i32 0
  %261 = call i32 @mutex_unlock(i32* %260)
  br label %266

262:                                              ; preds = %240
  %263 = load i32, i32* @KERN_ERR, align 4
  %264 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %265 = call i32 @iscsi_cls_conn_printk(i32 %263, %struct.iscsi_cls_conn.5* %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %266

266:                                              ; preds = %262, %249
  br label %449

267:                                              ; preds = %52
  %268 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %269 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %270 = call i32 @iscsi_set_param(%struct.iscsi_transport* %268, %struct.iscsi_uevent* %269)
  store i32 %270, i32* %8, align 4
  br label %449

271:                                              ; preds = %52
  %272 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %273 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %278 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %276, i32 %281)
  store %struct.iscsi_cls_conn.5* %282, %struct.iscsi_cls_conn.5** %13, align 8
  %283 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %284 = icmp ne %struct.iscsi_cls_conn.5* %283, null
  br i1 %284, label %285, label %295

285:                                              ; preds = %271
  %286 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %287 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %286, i32 0, i32 3
  %288 = load i32 (%struct.iscsi_cls_conn.1*)*, i32 (%struct.iscsi_cls_conn.1*)** %287, align 8
  %289 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %290 = bitcast %struct.iscsi_cls_conn.5* %289 to %struct.iscsi_cls_conn.1*
  %291 = call i32 %288(%struct.iscsi_cls_conn.1* %290)
  %292 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %293 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 0
  store i32 %291, i32* %294, align 4
  br label %298

295:                                              ; preds = %271
  %296 = load i32, i32* @EINVAL, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %8, align 4
  br label %298

298:                                              ; preds = %295, %285
  br label %449

299:                                              ; preds = %52
  %300 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %301 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %306 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %304, i32 %309)
  store %struct.iscsi_cls_conn.5* %310, %struct.iscsi_cls_conn.5** %13, align 8
  %311 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %312 = icmp ne %struct.iscsi_cls_conn.5* %311, null
  br i1 %312, label %313, label %325

313:                                              ; preds = %299
  %314 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %315 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %314, i32 0, i32 2
  %316 = load i32 (%struct.iscsi_cls_conn.0*, i32)*, i32 (%struct.iscsi_cls_conn.0*, i32)** %315, align 8
  %317 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %318 = bitcast %struct.iscsi_cls_conn.5* %317 to %struct.iscsi_cls_conn.0*
  %319 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %320 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 %316(%struct.iscsi_cls_conn.0* %318, i32 %323)
  br label %328

325:                                              ; preds = %299
  %326 = load i32, i32* @EINVAL, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %8, align 4
  br label %328

328:                                              ; preds = %325, %313
  br label %449

329:                                              ; preds = %52
  %330 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %331 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %336 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = call %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32 %334, i32 %339)
  store %struct.iscsi_cls_conn.5* %340, %struct.iscsi_cls_conn.5** %13, align 8
  %341 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %342 = icmp ne %struct.iscsi_cls_conn.5* %341, null
  br i1 %342, label %343, label %373

343:                                              ; preds = %329
  %344 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %345 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %344, i32 0, i32 1
  %346 = load i32 (%struct.iscsi_cls_conn*, %struct.iscsi_hdr*, i8*, i32)*, i32 (%struct.iscsi_cls_conn*, %struct.iscsi_hdr*, i8*, i32)** %345, align 8
  %347 = load %struct.iscsi_cls_conn.5*, %struct.iscsi_cls_conn.5** %13, align 8
  %348 = bitcast %struct.iscsi_cls_conn.5* %347 to %struct.iscsi_cls_conn*
  %349 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %350 = bitcast %struct.iscsi_uevent* %349 to i8*
  %351 = getelementptr inbounds i8, i8* %350, i64 92
  %352 = bitcast i8* %351 to %struct.iscsi_hdr.6*
  %353 = bitcast %struct.iscsi_hdr.6* %352 to %struct.iscsi_hdr*
  %354 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %355 = bitcast %struct.iscsi_uevent* %354 to i8*
  %356 = getelementptr inbounds i8, i8* %355, i64 92
  %357 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %358 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8, i8* %356, i64 %362
  %364 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %365 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = call i32 %346(%struct.iscsi_cls_conn* %348, %struct.iscsi_hdr* %353, i8* %363, i32 %368)
  %370 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %371 = getelementptr inbounds %struct.iscsi_uevent, %struct.iscsi_uevent* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 0
  store i32 %369, i32* %372, align 4
  br label %376

373:                                              ; preds = %329
  %374 = load i32, i32* @EINVAL, align 4
  %375 = sub nsw i32 0, %374
  store i32 %375, i32* %8, align 4
  br label %376

376:                                              ; preds = %373, %343
  br label %449

377:                                              ; preds = %52
  %378 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %379 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %380 = call i32 @iscsi_if_get_stats(%struct.iscsi_transport* %378, %struct.nlmsghdr* %379)
  store i32 %380, i32* %8, align 4
  br label %449

381:                                              ; preds = %52, %52, %52, %52
  %382 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %383 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %384 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %385 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @iscsi_if_transport_ep(%struct.iscsi_transport* %382, %struct.iscsi_uevent* %383, i32 %386)
  store i32 %387, i32* %8, align 4
  br label %449

388:                                              ; preds = %52
  %389 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %390 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %391 = call i32 @iscsi_tgt_dscvr(%struct.iscsi_transport* %389, %struct.iscsi_uevent* %390)
  store i32 %391, i32* %8, align 4
  br label %449

392:                                              ; preds = %52
  %393 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %394 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %395 = call i32 @iscsi_set_host_param(%struct.iscsi_transport* %393, %struct.iscsi_uevent* %394)
  store i32 %395, i32* %8, align 4
  br label %449

396:                                              ; preds = %52
  %397 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %398 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %399 = call i32 @iscsi_set_path(%struct.iscsi_transport* %397, %struct.iscsi_uevent* %398)
  store i32 %399, i32* %8, align 4
  br label %449

400:                                              ; preds = %52
  %401 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %402 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %403 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %404 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %403, i32 92)
  %405 = call i32 @iscsi_set_iface_params(%struct.iscsi_transport* %401, %struct.iscsi_uevent* %402, i32 %404)
  store i32 %405, i32* %8, align 4
  br label %449

406:                                              ; preds = %52
  %407 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %408 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %409 = call i32 @iscsi_send_ping(%struct.iscsi_transport* %407, %struct.iscsi_uevent* %408)
  store i32 %409, i32* %8, align 4
  br label %449

410:                                              ; preds = %52
  %411 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %412 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %413 = call i32 @iscsi_get_chap(%struct.iscsi_transport* %411, %struct.nlmsghdr* %412)
  store i32 %413, i32* %8, align 4
  br label %449

414:                                              ; preds = %52
  %415 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %416 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %417 = call i32 @iscsi_delete_chap(%struct.iscsi_transport* %415, %struct.iscsi_uevent* %416)
  store i32 %417, i32* %8, align 4
  br label %449

418:                                              ; preds = %52
  %419 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %420 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %421 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %422 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %421, i32 92)
  %423 = call i32 @iscsi_set_flashnode_param(%struct.iscsi_transport* %419, %struct.iscsi_uevent* %420, i32 %422)
  store i32 %423, i32* %8, align 4
  br label %449

424:                                              ; preds = %52
  %425 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %426 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %427 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %428 = call i32 @nlmsg_attrlen(%struct.nlmsghdr* %427, i32 92)
  %429 = call i32 @iscsi_new_flashnode(%struct.iscsi_transport* %425, %struct.iscsi_uevent* %426, i32 %428)
  store i32 %429, i32* %8, align 4
  br label %449

430:                                              ; preds = %52
  %431 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %432 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %433 = call i32 @iscsi_del_flashnode(%struct.iscsi_transport* %431, %struct.iscsi_uevent* %432)
  store i32 %433, i32* %8, align 4
  br label %449

434:                                              ; preds = %52
  %435 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %436 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %437 = call i32 @iscsi_login_flashnode(%struct.iscsi_transport* %435, %struct.iscsi_uevent* %436)
  store i32 %437, i32* %8, align 4
  br label %449

438:                                              ; preds = %52
  %439 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %440 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %441 = call i32 @iscsi_logout_flashnode(%struct.iscsi_transport* %439, %struct.iscsi_uevent* %440)
  store i32 %441, i32* %8, align 4
  br label %449

442:                                              ; preds = %52
  %443 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %444 = load %struct.iscsi_uevent*, %struct.iscsi_uevent** %9, align 8
  %445 = call i32 @iscsi_logout_flashnode_sid(%struct.iscsi_transport* %443, %struct.iscsi_uevent* %444)
  store i32 %445, i32* %8, align 4
  br label %449

446:                                              ; preds = %52
  %447 = load i32, i32* @ENOSYS, align 4
  %448 = sub nsw i32 0, %447
  store i32 %448, i32* %8, align 4
  br label %449

449:                                              ; preds = %446, %442, %438, %434, %430, %424, %418, %414, %410, %406, %400, %396, %392, %388, %381, %377, %376, %328, %298, %267, %266, %239, %204, %161, %157, %156, %137, %93, %90, %56
  %450 = load %struct.iscsi_transport*, %struct.iscsi_transport** %10, align 8
  %451 = getelementptr inbounds %struct.iscsi_transport, %struct.iscsi_transport* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @module_put(i32 %452)
  %454 = load i32, i32* %8, align 4
  store i32 %454, i32* %4, align 4
  br label %455

455:                                              ; preds = %449, %49, %37
  %456 = load i32, i32* %4, align 4
  ret i32 %456
}

declare dso_local %struct.iscsi_uevent* @NLMSG_DATA(%struct.nlmsghdr*) #1

declare dso_local %struct.iscsi_internal* @iscsi_if_transport_lookup(i32) #1

declare dso_local i32 @iscsi_ptr(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @iscsi_if_create_session(%struct.iscsi_internal*, %struct.iscsi_endpoint*, %struct.iscsi_uevent*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.iscsi_endpoint* @iscsi_lookup_endpoint(i32) #1

declare dso_local %struct.iscsi_cls_session.4* @iscsi_session_lookup(i32) #1

declare dso_local i32 @scsi_queue_work(i32, i32*) #1

declare dso_local i32 @iscsi_session_to_shost(%struct.iscsi_cls_session.4*) #1

declare dso_local i32 @iscsi_if_create_conn(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_if_destroy_conn(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local %struct.iscsi_cls_conn.5* @iscsi_conn_lookup(i32, i32) #1

declare dso_local i32 @iscsi_if_ep_disconnect(%struct.iscsi_transport*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iscsi_cls_conn_printk(i32, %struct.iscsi_cls_conn.5*, i8*) #1

declare dso_local i32 @iscsi_set_param(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_if_get_stats(%struct.iscsi_transport*, %struct.nlmsghdr*) #1

declare dso_local i32 @iscsi_if_transport_ep(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_tgt_dscvr(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_host_param(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_path(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_iface_params(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @nlmsg_attrlen(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @iscsi_send_ping(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_get_chap(%struct.iscsi_transport*, %struct.nlmsghdr*) #1

declare dso_local i32 @iscsi_delete_chap(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_set_flashnode_param(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_new_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*, i32) #1

declare dso_local i32 @iscsi_del_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_login_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_logout_flashnode(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @iscsi_logout_flashnode_sid(%struct.iscsi_transport*, %struct.iscsi_uevent*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

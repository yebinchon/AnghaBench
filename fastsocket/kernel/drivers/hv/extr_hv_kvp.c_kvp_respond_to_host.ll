; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_respond_to_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_respond_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__*, i32, %struct.vmbus_channel*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.vmbus_channel = type { i32* }
%struct.hv_kvp_msg = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.hv_kvp_exchg_msg_value }
%struct.hv_kvp_exchg_msg_value = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_9__ = type { %struct.hv_kvp_exchg_msg_value }
%struct.icmsg_hdr = type { i32, i32 }
%struct.hv_kvp_ip_msg = type { i32 }

@kvp_transaction = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"KVP: Transaction not active\0A\00", align 1
@recv_buffer = common dso_local global i32* null, align 8
@HV_E_FAIL = common dso_local global i8* null, align 8
@UTF16_HOST_ENDIAN = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_KEY_SIZE = common dso_local global i32 0, align 4
@HV_KVP_EXCHANGE_MAX_VALUE_SIZE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_kvp_msg*, i32)* @kvp_respond_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_respond_to_host(%struct.hv_kvp_msg* %0, i32 %1) #0 {
  %3 = alloca %struct.hv_kvp_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_kvp_msg*, align 8
  %6 = alloca %struct.hv_kvp_exchg_msg_value*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.icmsg_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmbus_channel*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 0), align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %146

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 4), align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 3), align 8
  store %struct.vmbus_channel* %22, %struct.vmbus_channel** %13, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 2), align 8
  store i32 %23, i32* %14, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 0), align 8
  %24 = load i32*, i32** @recv_buffer, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = bitcast i32* %25 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %26, %struct.icmsg_hdr** %9, align 8
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %13, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %146

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %35 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %134

39:                                               ; preds = %32
  %40 = load i32*, i32** @recv_buffer, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 12
  %42 = bitcast i32* %41 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %42, %struct.hv_kvp_msg** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @kvp_transaction, i32 0, i32 1), align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %67 [
    i32 130, label %47
    i32 128, label %60
    i32 131, label %61
    i32 129, label %66
    i32 132, label %66
  ]

47:                                               ; preds = %39
  %48 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %49 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %50 = bitcast %struct.hv_kvp_msg* %49 to %struct.hv_kvp_ip_msg*
  %51 = call i32 @process_ob_ipinfo(%struct.hv_kvp_msg* %48, %struct.hv_kvp_ip_msg* %50, i32 130)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i8*, i8** @HV_E_FAIL, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %58 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %47
  br label %134

60:                                               ; preds = %39
  br label %134

61:                                               ; preds = %39
  %62 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %63 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store %struct.hv_kvp_exchg_msg_value* %65, %struct.hv_kvp_exchg_msg_value** %6, align 8
  br label %96

66:                                               ; preds = %39, %39
  br label %134

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %5, align 8
  %70 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store %struct.hv_kvp_exchg_msg_value* %72, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %73 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %74 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %83 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %84 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* @HV_KVP_EXCHANGE_MAX_KEY_SIZE, align 4
  %88 = sdiv i32 %87, 2
  %89 = sub nsw i32 %88, 2
  %90 = call i32 @utf8s_to_utf16s(i8* %79, i32 %81, i32 %82, i32* %86, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = mul nsw i32 2, %92
  %94 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %95 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %68, %61
  %97 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %3, align 8
  %98 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %8, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = load i32, i32* @UTF16_HOST_ENDIAN, align 4
  %107 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %108 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = load i32, i32* @HV_KVP_EXCHANGE_MAX_VALUE_SIZE, align 4
  %112 = sdiv i32 %111, 2
  %113 = sub nsw i32 %112, 2
  %114 = call i32 @utf8s_to_utf16s(i8* %103, i32 %105, i32 %106, i32* %110, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  %117 = mul nsw i32 2, %116
  %118 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %119 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %96
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122, %96
  %126 = load i8*, i8** @HV_E_FAIL, align 8
  %127 = ptrtoint i8* %126 to i32
  %128 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %129 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %122
  %131 = load i32, i32* @REG_SZ, align 4
  %132 = load %struct.hv_kvp_exchg_msg_value*, %struct.hv_kvp_exchg_msg_value** %6, align 8
  %133 = getelementptr inbounds %struct.hv_kvp_exchg_msg_value, %struct.hv_kvp_exchg_msg_value* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  br label %134

134:                                              ; preds = %130, %66, %60, %59, %38
  %135 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %136 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %139 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.vmbus_channel*, %struct.vmbus_channel** %13, align 8
  %141 = load i32*, i32** @recv_buffer, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %145 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %140, i32* %141, i32 %142, i32 %143, i32 %144, i32 0)
  br label %146

146:                                              ; preds = %134, %31, %18
  ret void
}

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @process_ob_ipinfo(%struct.hv_kvp_msg*, %struct.hv_kvp_ip_msg*, i32) #1

declare dso_local i32 @utf8s_to_utf16s(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

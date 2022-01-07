; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_recv_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_recv_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { %struct.sk_buff*, %struct.TYPE_3__* }
%struct.sk_buff = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.hci_event_hdr = type { i32 }
%struct.hci_acl_hdr = type { i32 }
%struct.hci_sco_hdr = type { i32 }
%struct.TYPE_4__ = type { i8 }

@.str = private unnamed_addr constant [35 x i8] c"bfusb %p hdr 0x%02x data %p len %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s error in block\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s unexpected start block\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s no packet type found\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@HCI_EVENT_HDR_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%s event block is too short\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@HCI_ACL_HDR_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"%s data block is too short\00", align 1
@HCI_SCO_HDR_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"%s audio block is too short\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"%s no memory for the packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"%s unexpected continuation block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, i32, i8*, i32)* @bfusb_recv_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_recv_block(%struct.bfusb_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfusb_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.hci_event_hdr*, align 8
  %14 = alloca %struct.hci_acl_hdr*, align 8
  %15 = alloca %struct.hci_sco_hdr*, align 8
  store %struct.bfusb_data* %0, %struct.bfusb_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %16, i32 %17, i8* %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 16
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %26 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %32 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %31, i32 0, i32 0
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %36 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %35, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %36, align 8
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %216

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %177

43:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  %44 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %45 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %44, i32 0, i32 0
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %50 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %56 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %55, i32 0, i32 0
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  %59 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %60 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %59, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %60, align 8
  br label %61

61:                                               ; preds = %48, %43
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %66 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EPROTO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %216

73:                                               ; preds = %61
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  %76 = load i8, i8* %74, align 1
  store i8 %76, i8* %11, align 1
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %9, align 4
  %79 = load i8, i8* %11, align 1
  %80 = zext i8 %79 to i32
  switch i32 %80, label %148 [
    i32 129, label %81
    i32 130, label %103
    i32 128, label %126
  ]

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = bitcast i8* %86 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %87, %struct.hci_event_hdr** %13, align 8
  %88 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %89 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %13, align 8
  %90 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %12, align 4
  br label %102

93:                                               ; preds = %81
  %94 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %95 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EILSEQ, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %216

102:                                              ; preds = %85
  br label %148

103:                                              ; preds = %73
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i8*, i8** %8, align 8
  %109 = bitcast i8* %108 to %struct.hci_acl_hdr*
  store %struct.hci_acl_hdr* %109, %struct.hci_acl_hdr** %14, align 8
  %110 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %111 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %14, align 8
  %112 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__le16_to_cpu(i32 %113)
  %115 = add nsw i32 %110, %114
  store i32 %115, i32* %12, align 4
  br label %125

116:                                              ; preds = %103
  %117 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %118 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EILSEQ, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %216

125:                                              ; preds = %107
  br label %148

126:                                              ; preds = %73
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @HCI_SCO_HDR_SIZE, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i8*, i8** %8, align 8
  %132 = bitcast i8* %131 to %struct.hci_sco_hdr*
  store %struct.hci_sco_hdr* %132, %struct.hci_sco_hdr** %15, align 8
  %133 = load i32, i32* @HCI_SCO_HDR_SIZE, align 4
  %134 = load %struct.hci_sco_hdr*, %struct.hci_sco_hdr** %15, align 8
  %135 = getelementptr inbounds %struct.hci_sco_hdr, %struct.hci_sco_hdr* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %133, %136
  store i32 %137, i32* %12, align 4
  br label %147

138:                                              ; preds = %126
  %139 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %140 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %139, i32 0, i32 1
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @EILSEQ, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %216

147:                                              ; preds = %130
  br label %148

148:                                              ; preds = %73, %147, %125, %102
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @GFP_ATOMIC, align 4
  %151 = call %struct.sk_buff* @bt_skb_alloc(i32 %149, i32 %150)
  store %struct.sk_buff* %151, %struct.sk_buff** %10, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %153 = icmp ne %struct.sk_buff* %152, null
  br i1 %153, label %163, label %154

154:                                              ; preds = %148
  %155 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %156 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %155, i32 0, i32 1
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BT_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %5, align 4
  br label %216

163:                                              ; preds = %148
  %164 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %165 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %164, i32 0, i32 1
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = bitcast %struct.TYPE_3__* %166 to i8*
  %168 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  %170 = load i8, i8* %11, align 1
  %171 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %172 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %171)
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i8 %170, i8* %173, align 1
  %174 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %175 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %176 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %175, i32 0, i32 0
  store %struct.sk_buff* %174, %struct.sk_buff** %176, align 8
  br label %192

177:                                              ; preds = %39
  %178 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %179 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %178, i32 0, i32 0
  %180 = load %struct.sk_buff*, %struct.sk_buff** %179, align 8
  %181 = icmp ne %struct.sk_buff* %180, null
  br i1 %181, label %191, label %182

182:                                              ; preds = %177
  %183 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %184 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %183, i32 0, i32 1
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @EIO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %5, align 4
  br label %216

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191, %163
  %193 = load i32, i32* %9, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %197 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %196, i32 0, i32 0
  %198 = load %struct.sk_buff*, %struct.sk_buff** %197, align 8
  %199 = load i32, i32* %9, align 4
  %200 = call i32 @skb_put(%struct.sk_buff* %198, i32 %199)
  %201 = load i8*, i8** %8, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @memcpy(i32 %200, i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %195, %192
  %205 = load i32, i32* %7, align 4
  %206 = and i32 %205, 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %210 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %209, i32 0, i32 0
  %211 = load %struct.sk_buff*, %struct.sk_buff** %210, align 8
  %212 = call i32 @hci_recv_frame(%struct.sk_buff* %211)
  %213 = load %struct.bfusb_data*, %struct.bfusb_data** %6, align 8
  %214 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %213, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %214, align 8
  br label %215

215:                                              ; preds = %208, %204
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %215, %182, %154, %138, %116, %93, %64, %24
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, i32, i8*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @hci_recv_frame(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

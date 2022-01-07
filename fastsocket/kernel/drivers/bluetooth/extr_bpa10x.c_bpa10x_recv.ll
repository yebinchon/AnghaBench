; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.TYPE_3__, %struct.bpa10x_data* }
%struct.TYPE_3__ = type { i32 }
%struct.bpa10x_data = type { %struct.sk_buff** }
%struct.sk_buff = type { i64, i8* }
%struct.anon = type { i32, i32 }
%struct.hci_event_hdr = type { i32 }
%struct.hci_acl_hdr = type { i32 }
%struct.hci_sco_hdr = type { i32 }
%struct.hci_vendor_hdr = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s queue %d buffer %p count %d\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@HCI_EVENT_HDR_SIZE = common dso_local global i32 0, align 4
@HCI_ACL_HDR_SIZE = common dso_local global i32 0, align 4
@HCI_SCO_HDR_SIZE = common dso_local global i32 0, align 4
@HCI_VENDOR_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s no memory for packet\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32, i8*, i32)* @bpa10x_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpa10x_recv(%struct.hci_dev* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpa10x_data*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.anon*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hci_event_hdr*, align 8
  %16 = alloca %struct.hci_acl_hdr*, align 8
  %17 = alloca %struct.hci_sco_hdr*, align 8
  %18 = alloca %struct.hci_vendor_hdr*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 2
  %21 = load %struct.bpa10x_data*, %struct.bpa10x_data** %20, align 8
  store %struct.bpa10x_data* %21, %struct.bpa10x_data** %10, align 8
  %22 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i8* %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %4
  %35 = load i32, i32* @EILSEQ, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %220

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %211, %37
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %219

47:                                               ; preds = %44
  %48 = load %struct.bpa10x_data*, %struct.bpa10x_data** %10, align 8
  %49 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %48, i32 0, i32 0
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %11, align 8
  store i32 0, i32* %14, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %168, label %57

57:                                               ; preds = %47
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %13, align 4
  switch i32 %65, label %132 [
    i32 130, label %66
    i32 131, label %82
    i32 129, label %99
    i32 128, label %115
  ]

66:                                               ; preds = %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i8*, i8** %8, align 8
  %72 = bitcast i8* %71 to %struct.hci_event_hdr*
  store %struct.hci_event_hdr* %72, %struct.hci_event_hdr** %15, align 8
  %73 = load i32, i32* @HCI_EVENT_HDR_SIZE, align 4
  %74 = load %struct.hci_event_hdr*, %struct.hci_event_hdr** %15, align 8
  %75 = getelementptr inbounds %struct.hci_event_hdr, %struct.hci_event_hdr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %14, align 4
  br label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @EILSEQ, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %220

81:                                               ; preds = %70
  br label %132

82:                                               ; preds = %57
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i8*, i8** %8, align 8
  %88 = bitcast i8* %87 to %struct.hci_acl_hdr*
  store %struct.hci_acl_hdr* %88, %struct.hci_acl_hdr** %16, align 8
  %89 = load i32, i32* @HCI_ACL_HDR_SIZE, align 4
  %90 = load %struct.hci_acl_hdr*, %struct.hci_acl_hdr** %16, align 8
  %91 = getelementptr inbounds %struct.hci_acl_hdr, %struct.hci_acl_hdr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @__le16_to_cpu(i32 %92)
  %94 = add nsw i32 %89, %93
  store i32 %94, i32* %14, align 4
  br label %98

95:                                               ; preds = %82
  %96 = load i32, i32* @EILSEQ, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %220

98:                                               ; preds = %86
  br label %132

99:                                               ; preds = %57
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @HCI_SCO_HDR_SIZE, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i8*, i8** %8, align 8
  %105 = bitcast i8* %104 to %struct.hci_sco_hdr*
  store %struct.hci_sco_hdr* %105, %struct.hci_sco_hdr** %17, align 8
  %106 = load i32, i32* @HCI_SCO_HDR_SIZE, align 4
  %107 = load %struct.hci_sco_hdr*, %struct.hci_sco_hdr** %17, align 8
  %108 = getelementptr inbounds %struct.hci_sco_hdr, %struct.hci_sco_hdr* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %14, align 4
  br label %114

111:                                              ; preds = %99
  %112 = load i32, i32* @EILSEQ, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %220

114:                                              ; preds = %103
  br label %132

115:                                              ; preds = %57
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @HCI_VENDOR_HDR_SIZE, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i8*, i8** %8, align 8
  %121 = bitcast i8* %120 to %struct.hci_vendor_hdr*
  store %struct.hci_vendor_hdr* %121, %struct.hci_vendor_hdr** %18, align 8
  %122 = load i32, i32* @HCI_VENDOR_HDR_SIZE, align 4
  %123 = load %struct.hci_vendor_hdr*, %struct.hci_vendor_hdr** %18, align 8
  %124 = getelementptr inbounds %struct.hci_vendor_hdr, %struct.hci_vendor_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @__le16_to_cpu(i32 %125)
  %127 = add nsw i32 %122, %126
  store i32 %127, i32* %14, align 4
  br label %131

128:                                              ; preds = %115
  %129 = load i32, i32* @EILSEQ, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %220

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %57, %131, %114, %98, %81
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @GFP_ATOMIC, align 4
  %135 = call %struct.sk_buff* @bt_skb_alloc(i32 %133, i32 %134)
  store %struct.sk_buff* %135, %struct.sk_buff** %11, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  br i1 %137, label %145, label %138

138:                                              ; preds = %132
  %139 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %140 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %220

145:                                              ; preds = %132
  %146 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %147 = bitcast %struct.hci_dev* %146 to i8*
  %148 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %151 = load %struct.bpa10x_data*, %struct.bpa10x_data** %10, align 8
  %152 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %151, i32 0, i32 0
  %153 = load %struct.sk_buff**, %struct.sk_buff*** %152, align 8
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %153, i64 %155
  store %struct.sk_buff* %150, %struct.sk_buff** %156, align 8
  %157 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = bitcast i8* %160 to %struct.anon*
  store %struct.anon* %161, %struct.anon** %12, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.anon*, %struct.anon** %12, align 8
  %164 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.anon*, %struct.anon** %12, align 8
  %167 = getelementptr inbounds %struct.anon, %struct.anon* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %177

168:                                              ; preds = %47
  %169 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = bitcast i8* %172 to %struct.anon*
  store %struct.anon* %173, %struct.anon** %12, align 8
  %174 = load %struct.anon*, %struct.anon** %12, align 8
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %168, %145
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @min(i32 %178, i32 %179)
  store i32 %180, i32* %14, align 4
  %181 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @skb_put(%struct.sk_buff* %181, i32 %182)
  %184 = load i8*, i8** %8, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i32 @memcpy(i32 %183, i8* %184, i32 %185)
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.anon*, %struct.anon** %12, align 8
  %189 = getelementptr inbounds %struct.anon, %struct.anon* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.anon*, %struct.anon** %12, align 8
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %211

196:                                              ; preds = %177
  %197 = load %struct.bpa10x_data*, %struct.bpa10x_data** %10, align 8
  %198 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %197, i32 0, i32 0
  %199 = load %struct.sk_buff**, %struct.sk_buff*** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %199, i64 %201
  store %struct.sk_buff* null, %struct.sk_buff** %202, align 8
  %203 = load %struct.anon*, %struct.anon** %12, align 8
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %207 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %206)
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %210 = call i32 @hci_recv_frame(%struct.sk_buff* %209)
  br label %211

211:                                              ; preds = %196, %177
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %9, align 4
  %214 = sub nsw i32 %213, %212
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr i8, i8* %216, i64 %217
  store i8* %218, i8** %8, align 8
  br label %44

219:                                              ; preds = %44
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %219, %138, %128, %111, %95, %78, %34
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_recv_frame(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

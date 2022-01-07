; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_prepare_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_main.c_btmrvl_prepare_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { {}*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.sk_buff = type { i8* }
%struct.btmrvl_cmd = type { i32, i32*, i8* }
%struct.TYPE_6__ = type { i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"No free skb\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OGF = common dso_local global i32 0, align 4
@BT_CMD_HOST_SLEEP_CONFIG = common dso_local global i32 0, align 4
@MRVL_VENDOR_PKT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Queue HSCFG Command, gpio=0x%x, gap=0x%x\00", align 1
@BT_CMD_AUTO_SLEEP_MODE = common dso_local global i32 0, align 4
@BT_PS_ENABLE = common dso_local global i32 0, align 4
@BT_PS_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Queue PSMODE Command:%d\00", align 1
@HS_DEACTIVATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btmrvl_prepare_command(%struct.btmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.btmrvl_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %3, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %8 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %83

12:                                               ; preds = %1
  %13 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %14 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @bt_skb_alloc(i32 24, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp eq %struct.sk_buff* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %187

24:                                               ; preds = %12
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i64 @skb_put(%struct.sk_buff* %25, i32 24)
  %27 = inttoptr i64 %26 to %struct.btmrvl_cmd*
  store %struct.btmrvl_cmd* %27, %struct.btmrvl_cmd** %5, align 8
  %28 = load i32, i32* @OGF, align 4
  %29 = load i32, i32* @BT_CMD_HOST_SLEEP_CONFIG, align 4
  %30 = call i32 @hci_opcode_pack(i32 %28, i32 %29)
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %34, i32 0, i32 0
  store i32 2, i32* %35, align 8
  %36 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %37 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 65280
  %41 = ashr i32 %40, 8
  %42 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %41, i32* %45, align 4
  %46 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %47 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, 255
  %51 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %50, i32* %54, align 4
  %55 = load i8*, i8** @MRVL_VENDOR_PKT, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %60 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %67 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_queue_head(i32* %69, %struct.sk_buff* %70)
  %72 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %73 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %24, %1
  %84 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %85 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %154

89:                                               ; preds = %83
  %90 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %91 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call %struct.sk_buff* @bt_skb_alloc(i32 24, i32 %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = icmp eq %struct.sk_buff* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = call i32 @BT_ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %187

101:                                              ; preds = %89
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i64 @skb_put(%struct.sk_buff* %102, i32 24)
  %104 = inttoptr i64 %103 to %struct.btmrvl_cmd*
  store %struct.btmrvl_cmd* %104, %struct.btmrvl_cmd** %5, align 8
  %105 = load i32, i32* @OGF, align 4
  %106 = load i32, i32* @BT_CMD_AUTO_SLEEP_MODE, align 4
  %107 = call i32 @hci_opcode_pack(i32 %105, i32 %106)
  %108 = call i8* @cpu_to_le16(i32 %107)
  %109 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %110 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %112 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %114 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %101
  %119 = load i32, i32* @BT_PS_ENABLE, align 4
  %120 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  br label %130

124:                                              ; preds = %101
  %125 = load i32, i32* @BT_PS_DISABLE, align 4
  %126 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %127 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %125, i32* %129, align 4
  br label %130

130:                                              ; preds = %124, %118
  %131 = load i8*, i8** @MRVL_VENDOR_PKT, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %132)
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  %135 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %136 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %143 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @skb_queue_head(i32* %145, %struct.sk_buff* %146)
  %148 = load %struct.btmrvl_cmd*, %struct.btmrvl_cmd** %5, align 8
  %149 = getelementptr inbounds %struct.btmrvl_cmd, %struct.btmrvl_cmd* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %130, %83
  %155 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %156 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %154
  %161 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %162 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %165 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %171 = call i32 @btmrvl_enable_hs(%struct.btmrvl_private* %170)
  store i32 %171, i32* %6, align 4
  br label %184

172:                                              ; preds = %160
  %173 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %174 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %173, i32 0, i32 0
  %175 = bitcast {}** %174 to i32 (%struct.btmrvl_private*)**
  %176 = load i32 (%struct.btmrvl_private*)*, i32 (%struct.btmrvl_private*)** %175, align 8
  %177 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %178 = call i32 %176(%struct.btmrvl_private* %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* @HS_DEACTIVATED, align 4
  %180 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %181 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %180, i32 0, i32 1
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %172, %169
  br label %185

185:                                              ; preds = %184, %154
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %97, %20
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hci_opcode_pack(i32, i32) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local i32 @btmrvl_enable_hs(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

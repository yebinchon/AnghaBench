; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_recv_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.fip_header = type { i64, i32, i32, i32 }
%struct.ethhdr = type { i32 }

@FIP_MODE_VN2VN = common dso_local global i64 0, align 8
@fcoe_all_vn2vn = common dso_local global i32 0, align 4
@fcoe_all_p2p = common dso_local global i32 0, align 4
@fcoe_all_enode = common dso_local global i32 0, align 4
@FIP_VER = common dso_local global i64 0, align 8
@FIP_BPW = common dso_local global i32 0, align 4
@FIP_ST_AUTO = common dso_local global i32 0, align 4
@FIP_ST_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Using FIP mode\0A\00", align 1
@FIP_OP_VN2VN = common dso_local global i64 0, align 8
@FIP_ST_VNMP_UP = common dso_local global i32 0, align 4
@FIP_ST_VNMP_CLAIM = common dso_local global i32 0, align 4
@FIP_OP_LS = common dso_local global i64 0, align 8
@FIP_OP_DISC = common dso_local global i64 0, align 8
@FIP_SC_ADV = common dso_local global i64 0, align 8
@FIP_OP_CTRL = common dso_local global i64 0, align 8
@FIP_SC_CLR_VLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)* @fcoe_ctlr_recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ctlr_recv_handler(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fcoe_ctlr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fip_header*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i64 @skb_linearize(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %198

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 24
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %198

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %23)
  store %struct.ethhdr* %24, %struct.ethhdr** %7, align 8
  %25 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %26 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FIP_MODE_VN2VN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %22
  %31 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %32 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %35 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @compare_ether_addr(i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %41 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @fcoe_all_vn2vn, align 4
  %44 = call i64 @compare_ether_addr(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %48 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @fcoe_all_p2p, align 4
  %51 = call i64 @compare_ether_addr(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %198

54:                                               ; preds = %46, %39, %30
  br label %73

55:                                               ; preds = %22
  %56 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %57 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %60 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @compare_ether_addr(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %66 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @fcoe_all_enode, align 4
  %69 = call i64 @compare_ether_addr(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %198

72:                                               ; preds = %64, %55
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.fip_header*
  store %struct.fip_header* %77, %struct.fip_header** %6, align 8
  %78 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %79 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ntohs(i32 %80)
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %9, align 8
  %83 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %84 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  %86 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %87 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @FIP_VER_DECAPS(i32 %88)
  %90 = load i64, i64* @FIP_VER, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %73
  br label %198

93:                                               ; preds = %73
  %94 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %95 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ntohs(i32 %96)
  %98 = load i32, i32* @FIP_BPW, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 24
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = icmp ugt i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %198

108:                                              ; preds = %93
  %109 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %110 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %109, i32 0, i32 2
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %113 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @FIP_ST_AUTO, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %108
  %119 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %120 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %122 = load i32, i32* @FIP_ST_ENABLED, align 4
  %123 = call i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %121, i32 %122)
  %124 = load i32, i32* @FIP_ST_ENABLED, align 4
  store i32 %124, i32* %8, align 4
  %125 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %126 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %127

127:                                              ; preds = %118, %108
  %128 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %129 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %132 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @FIP_MODE_VN2VN, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @FIP_OP_VN2VN, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %136
  %141 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = call i32 @fcoe_ctlr_vn_recv(%struct.fcoe_ctlr* %141, %struct.sk_buff* %142)
  store i32 %143, i32* %3, align 4
  br label %201

144:                                              ; preds = %136, %127
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @FIP_ST_ENABLED, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @FIP_ST_VNMP_UP, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @FIP_ST_VNMP_CLAIM, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %198

157:                                              ; preds = %152, %148, %144
  %158 = load i64, i64* %9, align 8
  %159 = load i64, i64* @FIP_OP_LS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = call i32 @fcoe_ctlr_recv_els(%struct.fcoe_ctlr* %162, %struct.sk_buff* %163)
  store i32 0, i32* %3, align 4
  br label %201

165:                                              ; preds = %157
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @FIP_ST_ENABLED, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %198

170:                                              ; preds = %165
  %171 = load i64, i64* %9, align 8
  %172 = load i64, i64* @FIP_OP_DISC, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @FIP_SC_ADV, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = call i32 @fcoe_ctlr_recv_adv(%struct.fcoe_ctlr* %179, %struct.sk_buff* %180)
  br label %195

182:                                              ; preds = %174, %170
  %183 = load i64, i64* %9, align 8
  %184 = load i64, i64* @FIP_OP_CTRL, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = load i64, i64* %10, align 8
  %188 = load i64, i64* @FIP_SC_CLR_VLINK, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %192 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %193 = call i32 @fcoe_ctlr_recv_clr_vlink(%struct.fcoe_ctlr* %191, %struct.fip_header* %192)
  br label %194

194:                                              ; preds = %190, %186, %182
  br label %195

195:                                              ; preds = %194, %178
  %196 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %197 = call i32 @kfree_skb(%struct.sk_buff* %196)
  store i32 0, i32* %3, align 4
  br label %201

198:                                              ; preds = %169, %156, %107, %92, %71, %53, %21, %14
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = call i32 @kfree_skb(%struct.sk_buff* %199)
  store i32 -1, i32* %3, align 4
  br label %201

201:                                              ; preds = %198, %195, %161, %140
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @compare_ether_addr(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @FIP_VER_DECAPS(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr*, i32) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fcoe_ctlr_vn_recv(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_recv_els(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_recv_adv(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_recv_clr_vlink(%struct.fcoe_ctlr*, %struct.fip_header*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

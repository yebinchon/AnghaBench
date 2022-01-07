; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_v_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_atmtcp.c_atmtcp_v_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_6__*, {}*, {}*, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.atmtcp_dev_data = type { %struct.atm_vcc* }
%struct.atmtcp_hdr = type { i32, i8*, i8* }

@ATM_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @atmtcp_v_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmtcp_v_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.atmtcp_dev_data*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.atmtcp_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.atm_vcc* null, %struct.atm_vcc** %7, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ATM_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %20 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %19, i32 0, i32 2
  %21 = bitcast {}** %20 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %22 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %21, align 8
  %23 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %26 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %25, i32 0, i32 2
  %27 = bitcast {}** %26 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %28 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %27, align 8
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 %28(%struct.atm_vcc* %29, %struct.sk_buff* %30)
  br label %35

32:                                               ; preds = %18
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @dev_kfree_skb(%struct.sk_buff* %33)
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %189

38:                                               ; preds = %2
  %39 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %40 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.atmtcp_dev_data* @PRIV(i32 %41)
  store %struct.atmtcp_dev_data* %42, %struct.atmtcp_dev_data** %6, align 8
  %43 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %6, align 8
  %44 = icmp ne %struct.atmtcp_dev_data* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %6, align 8
  %47 = getelementptr inbounds %struct.atmtcp_dev_data, %struct.atmtcp_dev_data* %46, i32 0, i32 0
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %47, align 8
  store %struct.atm_vcc* %48, %struct.atm_vcc** %7, align 8
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %6, align 8
  %51 = icmp ne %struct.atmtcp_dev_data* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %54 = icmp ne %struct.atm_vcc* %53, null
  br i1 %54, label %84, label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %57 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %56, i32 0, i32 2
  %58 = bitcast {}** %57 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %59 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %58, align 8
  %60 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %63 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %62, i32 0, i32 2
  %64 = bitcast {}** %63 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %65 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %64, align 8
  %66 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 %65(%struct.atm_vcc* %66, %struct.sk_buff* %67)
  br label %72

69:                                               ; preds = %55
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @dev_kfree_skb(%struct.sk_buff* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.atmtcp_dev_data*, %struct.atmtcp_dev_data** %6, align 8
  %74 = icmp ne %struct.atmtcp_dev_data* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %189

76:                                               ; preds = %72
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %78 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = call i32 @atomic_inc(i32* %80)
  %82 = load i32, i32* @ENOLINK, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %189

84:                                               ; preds = %52
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, 24
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc* %91, i32 %92, i32 %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %8, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %122, label %97

97:                                               ; preds = %84
  %98 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %99 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %98, i32 0, i32 2
  %100 = bitcast {}** %99 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %101 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %100, align 8
  %102 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %105 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %104, i32 0, i32 2
  %106 = bitcast {}** %105 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %107 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %106, align 8
  %108 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = call i32 %107(%struct.atm_vcc* %108, %struct.sk_buff* %109)
  br label %114

111:                                              ; preds = %97
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @dev_kfree_skb(%struct.sk_buff* %112)
  br label %114

114:                                              ; preds = %111, %103
  %115 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %116 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = call i32 @atomic_inc(i32* %118)
  %120 = load i32, i32* @ENOBUFS, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %189

122:                                              ; preds = %84
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = call i64 @skb_put(%struct.sk_buff* %123, i32 24)
  %125 = inttoptr i64 %124 to i8*
  %126 = bitcast i8* %125 to %struct.atmtcp_hdr*
  store %struct.atmtcp_hdr* %126, %struct.atmtcp_hdr** %9, align 8
  %127 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %128 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @htons(i32 %129)
  %131 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %9, align 8
  %132 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %134 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @htons(i32 %135)
  %137 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %9, align 8
  %138 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %137, i32 0, i32 1
  store i8* %136, i8** %138, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @htonl(i32 %141)
  %143 = load %struct.atmtcp_hdr*, %struct.atmtcp_hdr** %9, align 8
  %144 = getelementptr inbounds %struct.atmtcp_hdr, %struct.atmtcp_hdr* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @skb_put(%struct.sk_buff* %146, i32 %149)
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %145, i64 %150, i32 %153)
  %155 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %156 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %155, i32 0, i32 2
  %157 = bitcast {}** %156 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %158 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %157, align 8
  %159 = icmp ne i32 (%struct.atm_vcc*, %struct.sk_buff*)* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %122
  %161 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %162 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %161, i32 0, i32 2
  %163 = bitcast {}** %162 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %164 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %163, align 8
  %165 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = call i32 %164(%struct.atm_vcc* %165, %struct.sk_buff* %166)
  br label %171

168:                                              ; preds = %122
  %169 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %170 = call i32 @dev_kfree_skb(%struct.sk_buff* %169)
  br label %171

171:                                              ; preds = %168, %160
  %172 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %173 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %172, i32 0, i32 1
  %174 = bitcast {}** %173 to i32 (%struct.atm_vcc*, %struct.sk_buff*)**
  %175 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %174, align 8
  %176 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %178 = call i32 %175(%struct.atm_vcc* %176, %struct.sk_buff* %177)
  %179 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %180 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = call i32 @atomic_inc(i32* %182)
  %184 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %185 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %184, i32 0, i32 0
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = call i32 @atomic_inc(i32* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %171, %114, %76, %75, %35
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.atmtcp_dev_data* @PRIV(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc*, i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

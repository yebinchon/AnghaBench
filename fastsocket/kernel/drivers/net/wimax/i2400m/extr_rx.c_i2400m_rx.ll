; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.device = type { i32 }
%struct.i2400m_msg_hdr = type { i32*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"(i2400m %p skb %p [size %zu])\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I2400M_PL_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"RX: HW BUG? message too short (%u bytes) for %u payload descriptors (%zu each, total %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"(i2400m %p skb %p [size %zu]) = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_rx(%struct.i2400m* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.i2400m_msg_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %16 = call %struct.device* @i2400m_dev(%struct.i2400m* %15)
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @d_fnstart(i32 4, %struct.device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %21, %struct.sk_buff* %22, i64 %23)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.i2400m_msg_hdr*
  store %struct.i2400m_msg_hdr* %31, %struct.i2400m_msg_hdr** %8, align 8
  %32 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %33 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @i2400m_rx_msg_hdr_check(%struct.i2400m* %32, %struct.i2400m_msg_hdr* %33, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %208

41:                                               ; preds = %2
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = mul i64 %49, 4
  %51 = add i64 16, %50
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %54 = call i64 @ALIGN(i64 %52, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %41
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i64 %64, i32 %65, i32 4, i64 %66)
  br label %207

68:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %128, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %131

73:                                               ; preds = %69
  %74 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i64 @i2400m_pld_size(i32* %79)
  store i64 %80, i64* %10, align 8
  %81 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %82 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %83 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @i2400m_rx_pl_descr_check(%struct.i2400m* %81, i32* %87, i64 %88, i64 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %73
  br label %206

96:                                               ; preds = %73
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub i32 %101, 1
  %103 = icmp eq i32 %100, %102
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi i1 [ true, %96 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load %struct.i2400m_msg_hdr*, %struct.i2400m_msg_hdr** %8, align 8
  %111 = getelementptr inbounds %struct.i2400m_msg_hdr, %struct.i2400m_msg_hdr* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %118, %119
  %121 = call i32 @i2400m_rx_payload(%struct.i2400m* %107, %struct.sk_buff* %108, i32 %109, i32* %115, i64 %120)
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* @I2400M_PL_ALIGN, align 4
  %124 = call i64 @ALIGN(i64 %122, i32 %123)
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %9, align 8
  %127 = call i32 (...) @cond_resched()
  br label %128

128:                                              ; preds = %104
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %69

131:                                              ; preds = %69
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  %134 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %135 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %134, i32 0, i32 6
  %136 = load i64, i64* %12, align 8
  %137 = call i32 @spin_lock_irqsave(i32* %135, i64 %136)
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %140 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %145 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %131
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %151 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %148, %131
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %155 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %161 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %152
  %163 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %164 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %168 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %171 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, %169
  store i64 %173, i64* %171, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %178 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ult i64 %176, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %162
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %186 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %185, i32 0, i32 4
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %181, %162
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %192 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ugt i64 %190, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %187
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %200 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %199, i32 0, i32 5
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %195, %187
  %202 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %203 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %202, i32 0, i32 6
  %204 = load i64, i64* %12, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  br label %206

206:                                              ; preds = %201, %95
  br label %207

207:                                              ; preds = %206, %60
  br label %208

208:                                              ; preds = %207, %40
  %209 = load %struct.device*, %struct.device** %7, align 8
  %210 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @d_fnend(i32 4, %struct.device* %209, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %210, %struct.sk_buff* %211, i64 %212, i32 %213)
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i64) #1

declare dso_local i32 @i2400m_rx_msg_hdr_check(%struct.i2400m*, %struct.i2400m_msg_hdr*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i32, i32, i64) #1

declare dso_local i64 @i2400m_pld_size(i32*) #1

declare dso_local i32 @i2400m_rx_pl_descr_check(%struct.i2400m*, i32*, i64, i64) #1

declare dso_local i32 @i2400m_rx_payload(%struct.i2400m*, %struct.sk_buff*, i32, i32*, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.sk_buff*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

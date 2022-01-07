; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_pio_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_b43legacy_pio_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_rxhdr_fw3 = type { i32 }
%struct.sk_buff = type { i32* }
%struct.b43legacy_hwtxstatus = type { i32 }

@B43legacy_PIO_RXCTL = common dso_local global i32 0, align 4
@B43legacy_PIO_RXCTL_DATAAVAILABLE = common dso_local global i32 0, align 4
@B43legacy_PIO_RXCTL_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PIO RX timed out\0A\00", align 1
@B43legacy_PIO_RXDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"len > 0x700\00", align 1
@B43legacy_MMIO_PIO4_BASE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"len == 0\00", align 1
@B43legacy_RX_MAC_FCSERR = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO1_BASE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Frame FCS error\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"OOM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_pio_rx(%struct.b43legacy_pioqueue* %0) #0 {
  %2 = alloca %struct.b43legacy_pioqueue*, align 8
  %3 = alloca [21 x i32], align 16
  %4 = alloca %struct.b43legacy_rxhdr_fw3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.b43legacy_hwtxstatus*, align 8
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %2, align 8
  %12 = bitcast [21 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 84, i1 false)
  %13 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %14 = load i32, i32* @B43legacy_PIO_RXCTL, align 4
  %15 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @B43legacy_PIO_RXCTL_DATAAVAILABLE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %203

21:                                               ; preds = %1
  %22 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %23 = load i32, i32* @B43legacy_PIO_RXCTL, align 4
  %24 = load i32, i32* @B43legacy_PIO_RXCTL_DATAAVAILABLE, align 4
  %25 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %22, i32 %23, i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %40, %21
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %31 = load i32, i32* @B43legacy_PIO_RXCTL, align 4
  %32 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @B43legacy_PIO_RXCTL_READY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %50

38:                                               ; preds = %29
  %39 = call i32 @udelay(i32 10)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %45 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @b43legacydbg(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %203

50:                                               ; preds = %37
  %51 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %52 = load i32, i32* @B43legacy_PIO_RXDATA, align 4
  %53 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp sgt i32 %54, 1792
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %61 = call i32 @pio_rx_error(%struct.b43legacy_pioqueue* %60, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %203

62:                                               ; preds = %50
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %67 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @B43legacy_MMIO_PIO4_BASE, align 8
  %70 = icmp ne i64 %68, %69
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i1 [ false, %62 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %78 = call i32 @pio_rx_error(%struct.b43legacy_pioqueue* %77, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %203

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = getelementptr inbounds [21 x i32], [21 x i32]* %3, i64 0, i64 0
  store i32 %81, i32* %82, align 16
  %83 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %84 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @B43legacy_MMIO_PIO4_BASE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i32 3, i32* %9, align 4
  br label %90

89:                                               ; preds = %79
  store i32 4, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %88
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %91
  %96 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %97 = load i32, i32* @B43legacy_PIO_RXDATA, align 4
  %98 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %96, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @cpu_to_le16(i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [21 x i32], [21 x i32]* %3, i64 0, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %91

108:                                              ; preds = %91
  %109 = getelementptr inbounds [21 x i32], [21 x i32]* %3, i64 0, i64 0
  %110 = bitcast i32* %109 to %struct.b43legacy_rxhdr_fw3*
  store %struct.b43legacy_rxhdr_fw3* %110, %struct.b43legacy_rxhdr_fw3** %4, align 8
  %111 = load %struct.b43legacy_rxhdr_fw3*, %struct.b43legacy_rxhdr_fw3** %4, align 8
  %112 = getelementptr inbounds %struct.b43legacy_rxhdr_fw3, %struct.b43legacy_rxhdr_fw3* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @B43legacy_RX_MAC_FCSERR, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %108
  %120 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %121 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %122 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @B43legacy_MMIO_PIO1_BASE, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @pio_rx_error(%struct.b43legacy_pioqueue* %120, i32 %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %203

128:                                              ; preds = %108
  %129 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %130 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @B43legacy_MMIO_PIO4_BASE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = getelementptr inbounds [21 x i32], [21 x i32]* %3, i64 0, i64 0
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = bitcast i32* %136 to %struct.b43legacy_hwtxstatus*
  store %struct.b43legacy_hwtxstatus* %137, %struct.b43legacy_hwtxstatus** %11, align 8
  %138 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %139 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load %struct.b43legacy_hwtxstatus*, %struct.b43legacy_hwtxstatus** %11, align 8
  %142 = call i32 @b43legacy_handle_hwtxstatus(%struct.TYPE_3__* %140, %struct.b43legacy_hwtxstatus* %141)
  br label %203

143:                                              ; preds = %128
  %144 = load i32, i32* %6, align 4
  %145 = call %struct.sk_buff* @dev_alloc_skb(i32 %144)
  store %struct.sk_buff* %145, %struct.sk_buff** %10, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %147 = icmp ne %struct.sk_buff* %146, null
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %143
  %153 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %154 = call i32 @pio_rx_error(%struct.b43legacy_pioqueue* %153, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %203

155:                                              ; preds = %143
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @skb_put(%struct.sk_buff* %156, i32 %157)
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %176, %155
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %6, align 4
  %162 = sub nsw i32 %161, 1
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %159
  %165 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %166 = load i32, i32* @B43legacy_PIO_RXDATA, align 4
  %167 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %165, i32 %166)
  store i32 %167, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @cpu_to_le16(i32 %168)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %169, i32* %175, align 4
  br label %176

176:                                              ; preds = %164
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %8, align 4
  br label %159

179:                                              ; preds = %159
  %180 = load i32, i32* %6, align 4
  %181 = srem i32 %180, 2
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %185 = load i32, i32* @B43legacy_PIO_RXDATA, align 4
  %186 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %184, i32 %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = and i32 %187, 255
  %189 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %188, i32* %195, align 4
  br label %196

196:                                              ; preds = %183, %179
  %197 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %198 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %197, i32 0, i32 1
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %201 = load %struct.b43legacy_rxhdr_fw3*, %struct.b43legacy_rxhdr_fw3** %4, align 8
  %202 = call i32 @b43legacy_rx(%struct.TYPE_3__* %199, %struct.sk_buff* %200, %struct.b43legacy_rxhdr_fw3* %201)
  br label %203

203:                                              ; preds = %196, %152, %134, %119, %76, %59, %43, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue*, i32) #2

declare dso_local i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue*, i32, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @b43legacydbg(i32, i8*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @pio_rx_error(%struct.b43legacy_pioqueue*, i32, i8*) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @b43legacy_handle_hwtxstatus(%struct.TYPE_3__*, %struct.b43legacy_hwtxstatus*) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @b43legacy_rx(%struct.TYPE_3__*, %struct.sk_buff*, %struct.b43legacy_rxhdr_fw3*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_free_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { %struct.myri10ge_tx_buf, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.myri10ge_priv* }
%struct.myri10ge_tx_buf = type { i32, i32, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.sk_buff*, i32, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }
%struct.myri10ge_priv = type { i32, i64, i64 }

@MYRI10GE_ALLOC_SIZE = common dso_local global i8* null, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@bus = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_slice_state*)* @myri10ge_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_free_rings(%struct.myri10ge_slice_state* %0) #0 {
  %2 = alloca %struct.myri10ge_slice_state*, align 8
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.myri10ge_tx_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myri10ge_slice_state* %0, %struct.myri10ge_slice_state** %2, align 8
  %9 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %10 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %9, i32 0, i32 4
  %11 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %10, align 8
  store %struct.myri10ge_priv* %11, %struct.myri10ge_priv** %3, align 8
  %12 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %13 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %287

18:                                               ; preds = %1
  %19 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %20 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %79, %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %26 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %33 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %31, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %39 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %30
  %45 = load i8*, i8** @MYRI10GE_ALLOC_SIZE, align 8
  %46 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %47 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  store i8* %45, i8** %53, align 8
  br label %54

54:                                               ; preds = %44, %30
  %55 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %56 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %59 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %66 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @myri10ge_unmap_rx_page(i32 %57, %struct.TYPE_12__* %64, i64 %67)
  %69 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %70 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @put_page(i32 %77)
  br label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %23

82:                                               ; preds = %23
  %83 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %84 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %145, %82
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %90 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %88, %92
  br i1 %93, label %94, label %148

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %97 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %95, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %103 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp eq i32 %101, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %94
  %109 = load i8*, i8** @MYRI10GE_ALLOC_SIZE, align 8
  %110 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %111 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  store i8* %109, i8** %117, align 8
  br label %118

118:                                              ; preds = %108, %94
  %119 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %120 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %123 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i64 %127
  %129 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %130 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MXGEFW_PAD, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @myri10ge_unmap_rx_page(i32 %121, %struct.TYPE_12__* %128, i64 %133)
  %135 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %136 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @put_page(i32 %143)
  br label %145

145:                                              ; preds = %118
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %87

148:                                              ; preds = %87
  %149 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %150 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %149, i32 0, i32 0
  store %struct.myri10ge_tx_buf* %150, %struct.myri10ge_tx_buf** %5, align 8
  br label %151

151:                                              ; preds = %249, %148
  %152 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %153 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %156 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %154, %157
  br i1 %158, label %159, label %250

159:                                              ; preds = %151
  %160 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %161 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %164 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = and i32 %162, %165
  store i32 %166, i32* %8, align 4
  %167 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %168 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %167, i32 0, i32 5
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.sk_buff*, %struct.sk_buff** %173, align 8
  store %struct.sk_buff* %174, %struct.sk_buff** %4, align 8
  %175 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %176 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %175, i32 0, i32 5
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %181, align 8
  %182 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %183 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %187 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %186, i32 0, i32 5
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i64 %190
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @pci_unmap_len(%struct.TYPE_12__* %191, i32 %192)
  store i32 %193, i32* %7, align 4
  %194 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %195 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %194, i32 0, i32 5
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %198
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @pci_unmap_len_set(%struct.TYPE_12__* %199, i32 %200, i32 0)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = icmp ne %struct.sk_buff* %202, null
  br i1 %203, label %204, label %230

204:                                              ; preds = %159
  %205 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %206 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %210)
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %229

214:                                              ; preds = %204
  %215 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %216 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %219 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %218, i32 0, i32 5
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = load i32, i32* @bus, align 4
  %225 = call i32 @pci_unmap_addr(%struct.TYPE_12__* %223, i32 %224)
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %228 = call i32 @pci_unmap_single(i32 %217, i32 %225, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %214, %204
  br label %249

230:                                              ; preds = %159
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %230
  %234 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %235 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %238 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %237, i32 0, i32 5
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i64 %241
  %243 = load i32, i32* @bus, align 4
  %244 = call i32 @pci_unmap_addr(%struct.TYPE_12__* %242, i32 %243)
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %247 = call i32 @pci_unmap_page(i32 %236, i32 %244, i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %233, %230
  br label %249

249:                                              ; preds = %248, %229
  br label %151

250:                                              ; preds = %151
  %251 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %252 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = call i32 @kfree(%struct.TYPE_12__* %254)
  %256 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %257 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %258, align 8
  %260 = call i32 @kfree(%struct.TYPE_12__* %259)
  %261 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %262 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %262, i32 0, i32 5
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %263, align 8
  %265 = call i32 @kfree(%struct.TYPE_12__* %264)
  %266 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %267 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 3
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %268, align 8
  %270 = call i32 @kfree(%struct.TYPE_12__* %269)
  %271 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %272 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = call i32 @kfree(%struct.TYPE_12__* %274)
  %276 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %277 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %277, i32 0, i32 4
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %278, align 8
  %280 = call i32 @kfree(%struct.TYPE_12__* %279)
  %281 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %282 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %282, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %283, align 8
  %284 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %285 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %285, i32 0, i32 3
  store i32* null, i32** %286, align 8
  br label %287

287:                                              ; preds = %250, %17
  ret void
}

declare dso_local i32 @myri10ge_unmap_rx_page(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @pci_unmap_len(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pci_unmap_len_set(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_addr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

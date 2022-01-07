; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ar9170_stream = type { i64, i32*, i32 }

@AR9170_RX_STREAM_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"missing tag!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"possible multi stream corruption!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"double rx stream corruption!\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%d bytes of unprocessed data left in rx stream!\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"damaged RX stream data [want:%d, data:%d, rx:%d, pending:%d ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rxbuf:\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"stream:\00", align 1
@.str.7 = private unnamed_addr constant [76 x i8] c"please check your hardware and cables, if you see this message frequently.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i8*, i32)* @carl9170_rx_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_rx_stream(%struct.ar9170* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ar9170_stream*, align 8
  %11 = alloca i32*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %147, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 4
  br i1 %17, label %18, label %163

18:                                               ; preds = %15
  %19 = load i32*, i32** %11, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.ar9170_stream*
  store %struct.ar9170_stream* %21, %struct.ar9170_stream** %10, align 8
  %22 = load %struct.ar9170_stream*, %struct.ar9170_stream** %10, align 8
  %23 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ALIGN(i32 %26, i32 4)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ar9170_stream*, %struct.ar9170_stream** %10, align 8
  %29 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* @AR9170_RX_STREAM_TAG, align 4
  %32 = call i64 @cpu_to_le16(i32 %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %112

34:                                               ; preds = %18
  %35 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %36 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = call i64 (...) @net_ratelimit()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @wiphy_err(i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %42, %39
  %50 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @__carl9170_rx(%struct.ar9170* %50, i32* %51, i32 %52)
  br label %236

54:                                               ; preds = %34
  %55 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = call i64 (...) @net_ratelimit()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 2
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @wiphy_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %179

70:                                               ; preds = %60
  br label %220

71:                                               ; preds = %54
  %72 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %73 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @skb_put(%struct.TYPE_6__* %74, i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @memcpy(i32 %76, i32* %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %82 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %86 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ule i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %71
  %90 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %91 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %93 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %94 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %99 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  call void @carl9170_rx_stream(%struct.ar9170* %92, i8* %97, i32 %102)
  %103 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %104 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = call i32 @skb_reset_tail_pointer(%struct.TYPE_6__* %105)
  %107 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %108 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = call i32 @skb_trim(%struct.TYPE_6__* %109, i32 0)
  br label %111

111:                                              ; preds = %89, %71
  br label %236

112:                                              ; preds = %18
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub i32 %114, 4
  %116 = icmp ugt i32 %113, %115
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  %118 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %119 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = call i64 (...) @net_ratelimit()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %127 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %126, i32 0, i32 2
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @wiphy_err(i32 %130, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %179

132:                                              ; preds = %122
  br label %220

133:                                              ; preds = %117
  %134 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %135 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %134, i32 0, i32 1
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @skb_put(%struct.TYPE_6__* %136, i32 %137)
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @memcpy(i32 %138, i32* %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub i32 %142, %143
  %145 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %146 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %236

147:                                              ; preds = %112
  %148 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %149 = load %struct.ar9170_stream*, %struct.ar9170_stream** %10, align 8
  %150 = getelementptr inbounds %struct.ar9170_stream, %struct.ar9170_stream* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @__carl9170_rx(%struct.ar9170* %148, i32* %151, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = add i32 %154, 4
  %156 = load i32*, i32** %11, align 8
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %11, align 8
  %159 = load i32, i32* %8, align 4
  %160 = add i32 %159, 4
  %161 = load i32, i32* %7, align 4
  %162 = sub i32 %161, %160
  store i32 %162, i32* %7, align 4
  br label %15

163:                                              ; preds = %15
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = call i64 (...) @net_ratelimit()
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %171 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %170, i32 0, i32 2
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 (i32, i8*, ...) @wiphy_err(i32 %174, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %169, %166
  br label %179

178:                                              ; preds = %163
  br label %236

179:                                              ; preds = %177, %125, %63
  %180 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %181 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %180, i32 0, i32 2
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %189 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i32, i8*, ...) @wiphy_err(i32 %184, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %185, i32 %186, i32 %187, i32 %190)
  %192 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %193 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %179
  %197 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %198 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %199 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %204 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %203, i32 0, i32 1
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %197, i8* %202, i32 %207)
  br label %209

209:                                              ; preds = %196, %179
  %210 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %211 = load i8*, i8** %5, align 8
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %210, i8* %211, i32 %212)
  %214 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %215 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %214, i32 0, i32 2
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32, i8*, ...) @wiphy_err(i32 %218, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0))
  br label %220

220:                                              ; preds = %209, %132, %70
  %221 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %222 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %220
  %226 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %227 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %226, i32 0, i32 1
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = call i32 @skb_reset_tail_pointer(%struct.TYPE_6__* %228)
  %230 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %231 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = call i32 @skb_trim(%struct.TYPE_6__* %232, i32 0)
  %234 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %235 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %234, i32 0, i32 0
  store i32 0, i32* %235, align 8
  br label %236

236:                                              ; preds = %49, %111, %133, %178, %225, %220
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*, ...) #1

declare dso_local i32 @__carl9170_rx(%struct.ar9170*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.TYPE_6__*) #1

declare dso_local i32 @skb_trim(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

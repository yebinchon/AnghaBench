; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_read_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)* }

@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@GET_CYCLE_COUNTER = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32*, i32, i64, i32)* @read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_regs(%struct.hpsb_host* %0, i32 %1, i32* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpsb_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %12, align 8
  %23 = or i64 %21, %22
  %24 = and i64 %23, 3
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %27, i32* %7, align 4
  br label %290

28:                                               ; preds = %6
  %29 = load i64, i64* %12, align 8
  %30 = udiv i64 %29, 4
  store i64 %30, i64* %12, align 8
  %31 = load i32, i32* %14, align 4
  switch i32 %31, label %288 [
    i32 129, label %32
    i32 128, label %42
    i32 133, label %52
    i32 132, label %62
    i32 131, label %64
    i32 130, label %74
    i32 134, label %85
    i32 137, label %123
    i32 139, label %168
    i32 138, label %170
    i32 141, label %197
    i32 136, label %224
    i32 135, label %251
    i32 140, label %278
  ]

32:                                               ; preds = %28
  %33 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %34 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %41 = load i32, i32* @out, align 4
  br label %42

42:                                               ; preds = %28, %32
  %43 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %44 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @cpu_to_be32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  %51 = load i32, i32* @out, align 4
  br label %52

52:                                               ; preds = %28, %42
  %53 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %54 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32, i32* @out, align 4
  br label %62

62:                                               ; preds = %28, %52
  %63 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %63, i32* %7, align 4
  br label %290

64:                                               ; preds = %28
  %65 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %66 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32, i32* @out, align 4
  br label %74

74:                                               ; preds = %28, %64
  %75 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %76 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* @out, align 4
  %84 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %84, i32* %7, align 4
  br label %290

85:                                               ; preds = %28
  %86 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %87 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %15, align 4
  %90 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %91 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %93, align 8
  %95 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %96 = load i32, i32* @GET_CYCLE_COUNTER, align 4
  %97 = call i32 %94(%struct.hpsb_host* %95, i32 %96, i32 0)
  %98 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %99 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %103 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %101, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %85
  %108 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %109 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 128
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %85
  %114 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %115 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @cpu_to_be32(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  %122 = load i32, i32* @out, align 4
  br label %123

123:                                              ; preds = %28, %113
  %124 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %125 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %15, align 4
  %128 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %129 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %131, align 8
  %133 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %134 = load i32, i32* @GET_CYCLE_COUNTER, align 4
  %135 = call i32 %132(%struct.hpsb_host* %133, i32 %134, i32 0)
  %136 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %137 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  store i32 %135, i32* %138, align 8
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %141 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp sgt i32 %139, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %123
  %146 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %147 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 128
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %123
  %152 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %153 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %157 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %159, 25
  %161 = or i32 %155, %160
  %162 = call i8* @cpu_to_be32(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %10, align 8
  store i32 %163, i32* %164, align 4
  %166 = load i32, i32* @out, align 4
  %167 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %167, i32* %7, align 4
  br label %290

168:                                              ; preds = %28
  %169 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %169, i32* %7, align 4
  br label %290

170:                                              ; preds = %28
  %171 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %172 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %171, i32 0, i32 1
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %174, align 8
  %176 = icmp ne i32 (%struct.hpsb_host*, i32, i32, i32)* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %170
  %178 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %179 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %178, i32 0, i32 1
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  %182 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %181, align 8
  %183 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %184 = call i32 %182(%struct.hpsb_host* %183, i32 0, i32 0, i32 0)
  store i32 %184, i32* %16, align 4
  br label %190

185:                                              ; preds = %170
  %186 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %187 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %185, %177
  %191 = load i32, i32* %16, align 4
  %192 = call i8* @cpu_to_be32(i32 %191)
  %193 = ptrtoint i8* %192 to i32
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %10, align 8
  store i32 %193, i32* %194, align 4
  %196 = load i32, i32* @out, align 4
  br label %197

197:                                              ; preds = %28, %190
  %198 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %199 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %198, i32 0, i32 1
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %201, align 8
  %203 = icmp ne i32 (%struct.hpsb_host*, i32, i32, i32)* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %197
  %205 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %206 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %205, i32 0, i32 1
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  %209 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %208, align 8
  %210 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %211 = call i32 %209(%struct.hpsb_host* %210, i32 1, i32 0, i32 0)
  store i32 %211, i32* %16, align 4
  br label %217

212:                                              ; preds = %197
  %213 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %214 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %16, align 4
  br label %217

217:                                              ; preds = %212, %204
  %218 = load i32, i32* %16, align 4
  %219 = call i8* @cpu_to_be32(i32 %218)
  %220 = ptrtoint i8* %219 to i32
  %221 = load i32*, i32** %10, align 8
  %222 = getelementptr inbounds i32, i32* %221, i32 1
  store i32* %222, i32** %10, align 8
  store i32 %220, i32* %221, align 4
  %223 = load i32, i32* @out, align 4
  br label %224

224:                                              ; preds = %28, %217
  %225 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %226 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %225, i32 0, i32 1
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %228, align 8
  %230 = icmp ne i32 (%struct.hpsb_host*, i32, i32, i32)* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %224
  %232 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %233 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %232, i32 0, i32 1
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %235, align 8
  %237 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %238 = call i32 %236(%struct.hpsb_host* %237, i32 2, i32 0, i32 0)
  store i32 %238, i32* %16, align 4
  br label %244

239:                                              ; preds = %224
  %240 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %241 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %16, align 4
  br label %244

244:                                              ; preds = %239, %231
  %245 = load i32, i32* %16, align 4
  %246 = call i8* @cpu_to_be32(i32 %245)
  %247 = ptrtoint i8* %246 to i32
  %248 = load i32*, i32** %10, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %10, align 8
  store i32 %247, i32* %248, align 4
  %250 = load i32, i32* @out, align 4
  br label %251

251:                                              ; preds = %28, %244
  %252 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %253 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %252, i32 0, i32 1
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %255, align 8
  %257 = icmp ne i32 (%struct.hpsb_host*, i32, i32, i32)* %256, null
  br i1 %257, label %258, label %266

258:                                              ; preds = %251
  %259 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %260 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %259, i32 0, i32 1
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 1
  %263 = load i32 (%struct.hpsb_host*, i32, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32, i32)** %262, align 8
  %264 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %265 = call i32 %263(%struct.hpsb_host* %264, i32 3, i32 0, i32 0)
  store i32 %265, i32* %16, align 4
  br label %271

266:                                              ; preds = %251
  %267 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %268 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %16, align 4
  br label %271

271:                                              ; preds = %266, %258
  %272 = load i32, i32* %16, align 4
  %273 = call i8* @cpu_to_be32(i32 %272)
  %274 = ptrtoint i8* %273 to i32
  %275 = load i32*, i32** %10, align 8
  %276 = getelementptr inbounds i32, i32* %275, i32 1
  store i32* %276, i32** %10, align 8
  store i32 %274, i32* %275, align 4
  %277 = load i32, i32* @out, align 4
  br label %278

278:                                              ; preds = %28, %271
  %279 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %280 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 10
  %282 = load i32, i32* %281, align 8
  %283 = call i8* @cpu_to_be32(i32 %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = load i32*, i32** %10, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %10, align 8
  store i32 %284, i32* %285, align 4
  %287 = load i32, i32* @out, align 4
  br label %288

288:                                              ; preds = %28, %278
  %289 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %288, %168, %151, %74, %62, %26
  %291 = load i32, i32* %7, align 4
  ret i32 %291
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

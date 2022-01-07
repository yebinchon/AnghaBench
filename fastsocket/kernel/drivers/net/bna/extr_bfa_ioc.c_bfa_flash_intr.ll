; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_flash_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_flash_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bfa_flash = type { i64, i64, i64, i64, i64, i32 }
%union.anon = type { %struct.bfi_flash_query_rsp* }
%struct.bfi_flash_query_rsp = type { i64 }
%struct.bfa_flash_attr = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64 }
%struct.bfi_flash_write_rsp = type { i64 }
%struct.bfi_flash_read_rsp = type { i64, i64 }

@BFA_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.bfi_mbmsg*)* @bfa_flash_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_flash_intr(i8* %0, %struct.bfi_mbmsg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg*, align 8
  %5 = alloca %struct.bfa_flash*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.anon, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.bfa_flash_attr*, align 8
  %10 = alloca %struct.bfa_flash_attr*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg* %1, %struct.bfi_mbmsg** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.bfa_flash*
  store %struct.bfa_flash* %13, %struct.bfa_flash** %5, align 8
  %14 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %15 = bitcast %union.anon* %7 to %struct.bfi_mbmsg**
  store %struct.bfi_mbmsg* %14, %struct.bfi_mbmsg** %15, align 8
  %16 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %22 = getelementptr inbounds %struct.bfi_mbmsg, %struct.bfi_mbmsg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 131
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %260

27:                                               ; preds = %20, %2
  %28 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %29 = getelementptr inbounds %struct.bfi_mbmsg, %struct.bfi_mbmsg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %258 [
    i32 130, label %32
    i32 128, label %172
    i32 129, label %197
    i32 132, label %257
    i32 131, label %257
  ]

32:                                               ; preds = %27
  %33 = bitcast %union.anon* %7 to %struct.bfi_flash_query_rsp**
  %34 = load %struct.bfi_flash_query_rsp*, %struct.bfi_flash_query_rsp** %33, align 8
  %35 = getelementptr inbounds %struct.bfi_flash_query_rsp, %struct.bfi_flash_query_rsp* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @be32_to_cpu(i64 %36)
  %38 = ptrtoint i8* %37 to i64
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @BFA_STATUS_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %166

42:                                               ; preds = %32
  %43 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %44 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.bfa_flash_attr*
  store %struct.bfa_flash_attr* %46, %struct.bfa_flash_attr** %9, align 8
  %47 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.bfa_flash_attr*
  store %struct.bfa_flash_attr* %50, %struct.bfa_flash_attr** %10, align 8
  %51 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %52 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @be32_to_cpu(i64 %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %57 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %59 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @be32_to_cpu(i64 %60)
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %64 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  store i64 0, i64* %8, align 8
  br label %65

65:                                               ; preds = %162, %42
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %68 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %165

71:                                               ; preds = %65
  %72 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %73 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @be32_to_cpu(i64 %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %82 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %80, i64* %86, align 8
  %87 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %88 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @be32_to_cpu(i64 %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %97 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %95, i64* %101, align 8
  %102 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %103 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @be32_to_cpu(i64 %108)
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %112 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i64 %110, i64* %116, align 8
  %117 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %118 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i8* @be32_to_cpu(i64 %123)
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %127 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %126, i32 0, i32 2
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  store i64 %125, i64* %131, align 8
  %132 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %133 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %132, i32 0, i32 2
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = load i64, i64* %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = call i8* @be32_to_cpu(i64 %138)
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %142 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  store i64 %140, i64* %146, align 8
  %147 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %10, align 8
  %148 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @be32_to_cpu(i64 %153)
  %155 = ptrtoint i8* %154 to i64
  %156 = load %struct.bfa_flash_attr*, %struct.bfa_flash_attr** %9, align 8
  %157 = getelementptr inbounds %struct.bfa_flash_attr, %struct.bfa_flash_attr* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 5
  store i64 %155, i64* %161, align 8
  br label %162

162:                                              ; preds = %71
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %8, align 8
  br label %65

165:                                              ; preds = %65
  br label %166

166:                                              ; preds = %165, %32
  %167 = load i64, i64* %6, align 8
  %168 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %169 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %168, i32 0, i32 1
  store i64 %167, i64* %169, align 8
  %170 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %171 = call i32 @bfa_flash_cb(%struct.bfa_flash* %170)
  br label %260

172:                                              ; preds = %27
  %173 = bitcast %union.anon* %7 to %struct.bfi_flash_write_rsp**
  %174 = load %struct.bfi_flash_write_rsp*, %struct.bfi_flash_write_rsp** %173, align 8
  %175 = getelementptr inbounds %struct.bfi_flash_write_rsp, %struct.bfi_flash_write_rsp* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i8* @be32_to_cpu(i64 %176)
  %178 = ptrtoint i8* %177 to i64
  store i64 %178, i64* %6, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* @BFA_STATUS_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %187, label %182

182:                                              ; preds = %172
  %183 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %184 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %182, %172
  %188 = load i64, i64* %6, align 8
  %189 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %190 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %189, i32 0, i32 1
  store i64 %188, i64* %190, align 8
  %191 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %192 = call i32 @bfa_flash_cb(%struct.bfa_flash* %191)
  br label %196

193:                                              ; preds = %182
  %194 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %195 = call i32 @bfa_flash_write_send(%struct.bfa_flash* %194)
  br label %196

196:                                              ; preds = %193, %187
  br label %260

197:                                              ; preds = %27
  %198 = bitcast %union.anon* %7 to %struct.bfi_flash_read_rsp**
  %199 = load %struct.bfi_flash_read_rsp*, %struct.bfi_flash_read_rsp** %198, align 8
  %200 = getelementptr inbounds %struct.bfi_flash_read_rsp, %struct.bfi_flash_read_rsp* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @be32_to_cpu(i64 %201)
  %203 = ptrtoint i8* %202 to i64
  store i64 %203, i64* %6, align 8
  %204 = load i64, i64* %6, align 8
  %205 = load i64, i64* @BFA_STATUS_OK, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %197
  %208 = load i64, i64* %6, align 8
  %209 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %210 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %209, i32 0, i32 1
  store i64 %208, i64* %210, align 8
  %211 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %212 = call i32 @bfa_flash_cb(%struct.bfa_flash* %211)
  br label %256

213:                                              ; preds = %197
  %214 = bitcast %union.anon* %7 to %struct.bfi_flash_read_rsp**
  %215 = load %struct.bfi_flash_read_rsp*, %struct.bfi_flash_read_rsp** %214, align 8
  %216 = getelementptr inbounds %struct.bfi_flash_read_rsp, %struct.bfi_flash_read_rsp* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @be32_to_cpu(i64 %217)
  %219 = ptrtoint i8* %218 to i64
  store i64 %219, i64* %11, align 8
  %220 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %221 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %224 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %222, %225
  %227 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %228 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %11, align 8
  %231 = call i32 @memcpy(i64 %226, i64 %229, i64 %230)
  %232 = load i64, i64* %11, align 8
  %233 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %234 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = sub i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load i64, i64* %11, align 8
  %238 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %239 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %240, %237
  store i64 %241, i64* %239, align 8
  %242 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %243 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %213
  %247 = load i64, i64* %6, align 8
  %248 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %249 = getelementptr inbounds %struct.bfa_flash, %struct.bfa_flash* %248, i32 0, i32 1
  store i64 %247, i64* %249, align 8
  %250 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %251 = call i32 @bfa_flash_cb(%struct.bfa_flash* %250)
  br label %255

252:                                              ; preds = %213
  %253 = load %struct.bfa_flash*, %struct.bfa_flash** %5, align 8
  %254 = call i32 @bfa_flash_read_send(%struct.bfa_flash* %253)
  br label %255

255:                                              ; preds = %252, %246
  br label %256

256:                                              ; preds = %255, %207
  br label %260

257:                                              ; preds = %27, %27
  br label %260

258:                                              ; preds = %27
  %259 = call i32 @WARN_ON(i32 1)
  br label %260

260:                                              ; preds = %26, %258, %257, %256, %196, %166
  ret void
}

declare dso_local i8* @be32_to_cpu(i64) #1

declare dso_local i32 @bfa_flash_cb(%struct.bfa_flash*) #1

declare dso_local i32 @bfa_flash_write_send(%struct.bfa_flash*) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i32 @bfa_flash_read_send(%struct.bfa_flash*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

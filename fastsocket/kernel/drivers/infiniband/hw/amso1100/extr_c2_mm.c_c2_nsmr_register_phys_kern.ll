; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mm.c_c2_nsmr_register_phys_kern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/amso1100/extr_c2_mm.c_c2_nsmr_register_phys_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.c2_mr = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.c2_vq_req = type { i64, i32 }
%struct.c2wr_nsmr_register_req = type { i8**, i8*, i8*, i8*, i8*, i8*, i32, i8*, i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.c2wr_nsmr_register_rep = type { i32 }
%union.c2wr = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@C2_PBL_MAX_DEPTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CCWR_NSMR_REGISTER = common dso_local global i32 0, align 4
@MEM_VA_BASED = common dso_local global i32 0, align 4
@MEM_REMOTE = common dso_local global i32 0, align 4
@MEM_PBL_COMPLETE = common dso_local global i32 0, align 4
@PBL_PHYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2_nsmr_register_phys_kern(%struct.c2_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, %struct.c2_mr* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.c2_dev*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.c2_mr*, align 8
  %20 = alloca %struct.c2_vq_req*, align 8
  %21 = alloca %struct.c2wr_nsmr_register_req*, align 8
  %22 = alloca %struct.c2wr_nsmr_register_rep*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.c2_dev* %0, %struct.c2_dev** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.c2_mr* %8, %struct.c2_mr** %19, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %9
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36, %33, %30, %9
  %40 = load i32, i32* @EINTR, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %264

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @C2_PBL_MAX_DEPTH, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINTR, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %264

49:                                               ; preds = %42
  %50 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %51 = call %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev* %50)
  store %struct.c2_vq_req* %51, %struct.c2_vq_req** %20, align 8
  %52 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %53 = icmp ne %struct.c2_vq_req* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %264

57:                                               ; preds = %49
  %58 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %59 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.c2wr_nsmr_register_req* @kmalloc(i32 %61, i32 %62)
  store %struct.c2wr_nsmr_register_req* %63, %struct.c2wr_nsmr_register_req** %21, align 8
  %64 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %65 = icmp ne %struct.c2wr_nsmr_register_req* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %27, align 4
  br label %259

69:                                               ; preds = %57
  %70 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %71 = load i32, i32* @CCWR_NSMR_REGISTER, align 4
  %72 = call i32 @c2_wr_set_id(%struct.c2wr_nsmr_register_req* %70, i32 %71)
  %73 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %74 = ptrtoint %struct.c2_vq_req* %73 to i64
  %75 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %76 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %75, i32 0, i32 11
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %79 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %82 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @MEM_VA_BASED, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MEM_REMOTE, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %23, align 4
  %88 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %89 = getelementptr inbounds %struct.c2_dev, %struct.c2_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 88
  %94 = udiv i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %25, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %25, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %69
  %100 = load i32, i32* @MEM_PBL_COMPLETE, align 4
  %101 = load i32, i32* %23, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %23, align 4
  br label %103

103:                                              ; preds = %99, %69
  %104 = load i32, i32* %23, align 4
  %105 = call i32 @cpu_to_be16(i32 %104)
  %106 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %107 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %106, i32 0, i32 9
  store i32 %105, i32* %107, align 8
  %108 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %109 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %108, i32 0, i32 8
  store i64 0, i64* %109, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @cpu_to_be64(i32 %111)
  %113 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %114 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load %struct.c2_mr*, %struct.c2_mr** %19, align 8
  %116 = getelementptr inbounds %struct.c2_mr, %struct.c2_mr* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %121 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i8* @cpu_to_be32(i32 %122)
  %124 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %125 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i8* @cpu_to_be32(i32 %126)
  %128 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %129 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i8* @cpu_to_be32(i32 %130)
  %132 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %133 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %132, i32 0, i32 3
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %137 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %25, align 4
  %140 = call i32 @min(i32 %138, i32 %139)
  store i32 %140, i32* %26, align 4
  %141 = load i32, i32* %26, align 4
  %142 = call i8* @cpu_to_be32(i32 %141)
  %143 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %144 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  store i32 0, i32* %24, align 4
  br label %145

145:                                              ; preds = %162, %103
  %146 = load i32, i32* %24, align 4
  %147 = load i32, i32* %26, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %24, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @cpu_to_be64(i32 %154)
  %156 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %157 = getelementptr inbounds %struct.c2wr_nsmr_register_req, %struct.c2wr_nsmr_register_req* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  store i8* %155, i8** %161, align 8
  br label %162

162:                                              ; preds = %149
  %163 = load i32, i32* %24, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %24, align 4
  br label %145

165:                                              ; preds = %145
  %166 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %167 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %168 = call i32 @vq_req_get(%struct.c2_dev* %166, %struct.c2_vq_req* %167)
  %169 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %170 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %171 = bitcast %struct.c2wr_nsmr_register_req* %170 to %union.c2wr*
  %172 = call i32 @vq_send_wr(%struct.c2_dev* %169, %union.c2wr* %171)
  store i32 %172, i32* %27, align 4
  %173 = load i32, i32* %27, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %165
  %176 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %177 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %178 = call i32 @vq_req_put(%struct.c2_dev* %176, %struct.c2_vq_req* %177)
  br label %256

179:                                              ; preds = %165
  %180 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %181 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %182 = call i32 @vq_wait_for_reply(%struct.c2_dev* %180, %struct.c2_vq_req* %181)
  store i32 %182, i32* %27, align 4
  %183 = load i32, i32* %27, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %256

186:                                              ; preds = %179
  %187 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %188 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.c2wr_nsmr_register_rep*
  store %struct.c2wr_nsmr_register_rep* %190, %struct.c2wr_nsmr_register_rep** %22, align 8
  %191 = load %struct.c2wr_nsmr_register_rep*, %struct.c2wr_nsmr_register_rep** %22, align 8
  %192 = icmp ne %struct.c2wr_nsmr_register_rep* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %186
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %27, align 4
  br label %256

196:                                              ; preds = %186
  %197 = load %struct.c2wr_nsmr_register_rep*, %struct.c2wr_nsmr_register_rep** %22, align 8
  %198 = call i32 @c2_errno(%struct.c2wr_nsmr_register_rep* %197)
  store i32 %198, i32* %27, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %252

201:                                              ; preds = %196
  %202 = load %struct.c2wr_nsmr_register_rep*, %struct.c2wr_nsmr_register_rep** %22, align 8
  %203 = getelementptr inbounds %struct.c2wr_nsmr_register_rep, %struct.c2wr_nsmr_register_rep* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @be32_to_cpu(i32 %204)
  %206 = load %struct.c2_mr*, %struct.c2_mr** %19, align 8
  %207 = getelementptr inbounds %struct.c2_mr, %struct.c2_mr* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  %209 = load %struct.c2_mr*, %struct.c2_mr** %19, align 8
  %210 = getelementptr inbounds %struct.c2_mr, %struct.c2_mr* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i32 %205, i32* %211, align 8
  %212 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %213 = load %struct.c2wr_nsmr_register_rep*, %struct.c2wr_nsmr_register_rep** %22, align 8
  %214 = call i32 @vq_repbuf_free(%struct.c2_dev* %212, %struct.c2wr_nsmr_register_rep* %213)
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %14, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %201
  %221 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %222 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %221, i32 0, i32 0
  store i64 0, i64* %222, align 8
  %223 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %224 = getelementptr inbounds %struct.c2_vq_req, %struct.c2_vq_req* %223, i32 0, i32 1
  %225 = call i32 @atomic_set(i32* %224, i32 0)
  %226 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %227 = load %struct.c2_mr*, %struct.c2_mr** %19, align 8
  %228 = getelementptr inbounds %struct.c2_mr, %struct.c2_mr* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i8* @cpu_to_be32(i32 %230)
  %232 = load i32*, i32** %12, align 8
  %233 = load i32, i32* %24, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = ptrtoint i32* %235 to i64
  %237 = load i32, i32* %14, align 4
  %238 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %239 = load i32, i32* @PBL_PHYS, align 4
  %240 = call i32 @send_pbl_messages(%struct.c2_dev* %226, i8* %231, i64 %236, i32 %237, %struct.c2_vq_req* %238, i32 %239)
  store i32 %240, i32* %27, align 4
  %241 = load i32, i32* %27, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %220
  br label %256

244:                                              ; preds = %220
  br label %245

245:                                              ; preds = %244, %201
  %246 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %247 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %248 = call i32 @vq_req_free(%struct.c2_dev* %246, %struct.c2_vq_req* %247)
  %249 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %250 = call i32 @kfree(%struct.c2wr_nsmr_register_req* %249)
  %251 = load i32, i32* %27, align 4
  store i32 %251, i32* %10, align 4
  br label %264

252:                                              ; preds = %200
  %253 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %254 = load %struct.c2wr_nsmr_register_rep*, %struct.c2wr_nsmr_register_rep** %22, align 8
  %255 = call i32 @vq_repbuf_free(%struct.c2_dev* %253, %struct.c2wr_nsmr_register_rep* %254)
  br label %256

256:                                              ; preds = %252, %243, %193, %185, %175
  %257 = load %struct.c2wr_nsmr_register_req*, %struct.c2wr_nsmr_register_req** %21, align 8
  %258 = call i32 @kfree(%struct.c2wr_nsmr_register_req* %257)
  br label %259

259:                                              ; preds = %256, %66
  %260 = load %struct.c2_dev*, %struct.c2_dev** %11, align 8
  %261 = load %struct.c2_vq_req*, %struct.c2_vq_req** %20, align 8
  %262 = call i32 @vq_req_free(%struct.c2_dev* %260, %struct.c2_vq_req* %261)
  %263 = load i32, i32* %27, align 4
  store i32 %263, i32* %10, align 4
  br label %264

264:                                              ; preds = %259, %245, %54, %46, %39
  %265 = load i32, i32* %10, align 4
  ret i32 %265
}

declare dso_local %struct.c2_vq_req* @vq_req_alloc(%struct.c2_dev*) #1

declare dso_local %struct.c2wr_nsmr_register_req* @kmalloc(i32, i32) #1

declare dso_local i32 @c2_wr_set_id(%struct.c2wr_nsmr_register_req*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vq_req_get(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_send_wr(%struct.c2_dev*, %union.c2wr*) #1

declare dso_local i32 @vq_req_put(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @vq_wait_for_reply(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @c2_errno(%struct.c2wr_nsmr_register_rep*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @vq_repbuf_free(%struct.c2_dev*, %struct.c2wr_nsmr_register_rep*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @send_pbl_messages(%struct.c2_dev*, i8*, i64, i32, %struct.c2_vq_req*, i32) #1

declare dso_local i32 @vq_req_free(%struct.c2_dev*, %struct.c2_vq_req*) #1

declare dso_local i32 @kfree(%struct.c2wr_nsmr_register_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_srq.c_qib_create_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_srq.c_qib_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_pd = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.qib_ibdev = type { i64, i32, i32, i32 }
%struct.qib_srq = type { %struct.TYPE_9__, %struct.qib_srq*, %struct.ib_srq, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@IB_SRQT_BASIC = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@ib_qib_max_srq_sges = common dso_local global i64 0, align 8
@ib_qib_max_srq_wrs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_qib_max_srqs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @qib_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_srq_init_attr*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.qib_ibdev*, align 8
  %8 = alloca %struct.qib_srq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_srq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %13 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.qib_ibdev* @to_idev(i32 %15)
  store %struct.qib_ibdev* %16, %struct.qib_ibdev** %7, align 8
  %17 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %18 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IB_SRQT_BASIC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_srq* @ERR_PTR(i32 %24)
  store %struct.ib_srq* %25, %struct.ib_srq** %10, align 8
  br label %246

26:                                               ; preds = %3
  %27 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %34 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ib_qib_max_srq_sges, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %52, label %39

39:                                               ; preds = %32
  %40 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %47 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ib_qib_max_srq_wrs, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45, %39, %32, %26
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.ib_srq* @ERR_PTR(i32 %54)
  store %struct.ib_srq* %55, %struct.ib_srq** %10, align 8
  br label %246

56:                                               ; preds = %45
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.qib_srq* @kmalloc(i32 56, i32 %57)
  store %struct.qib_srq* %58, %struct.qib_srq** %8, align 8
  %59 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %60 = icmp ne %struct.qib_srq* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.ib_srq* @ERR_PTR(i32 %63)
  store %struct.ib_srq* %64, %struct.ib_srq** %10, align 8
  br label %246

65:                                               ; preds = %56
  %66 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %67 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %72 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %75 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %79 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i64 %77, i64* %80, align 8
  %81 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %82 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = mul i64 4, %84
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %9, align 4
  %88 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %89 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %91, %93
  %95 = add i64 4, %94
  %96 = trunc i64 %95 to i32
  %97 = call %struct.TYPE_10__* @vmalloc_user(i32 %96)
  %98 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %99 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %100, align 8
  %101 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %102 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %65
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  %109 = call %struct.ib_srq* @ERR_PTR(i32 %108)
  store %struct.ib_srq* %109, %struct.ib_srq** %10, align 8
  br label %243

110:                                              ; preds = %65
  %111 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %112 = icmp ne %struct.ib_udata* %111, null
  br i1 %112, label %113, label %164

113:                                              ; preds = %110
  %114 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %115 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp uge i64 %117, 4
  br i1 %118, label %119, label %164

119:                                              ; preds = %113
  %120 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %121 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %123, %125
  %127 = add i64 4, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %12, align 4
  %129 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %132 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %137 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = call %struct.qib_srq* @qib_create_mmap_info(%struct.qib_ibdev* %129, i32 %130, i32 %135, %struct.TYPE_10__* %139)
  %141 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %142 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %141, i32 0, i32 1
  store %struct.qib_srq* %140, %struct.qib_srq** %142, align 8
  %143 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %144 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %143, i32 0, i32 1
  %145 = load %struct.qib_srq*, %struct.qib_srq** %144, align 8
  %146 = icmp ne %struct.qib_srq* %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %119
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  %150 = call %struct.ib_srq* @ERR_PTR(i32 %149)
  store %struct.ib_srq* %150, %struct.ib_srq** %10, align 8
  br label %237

151:                                              ; preds = %119
  %152 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %153 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %154 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %153, i32 0, i32 1
  %155 = load %struct.qib_srq*, %struct.qib_srq** %154, align 8
  %156 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %155, i32 0, i32 5
  %157 = call i32 @ib_copy_to_udata(%struct.ib_udata* %152, i32* %156, i32 4)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %151
  %161 = load i32, i32* %11, align 4
  %162 = call %struct.ib_srq* @ERR_PTR(i32 %161)
  store %struct.ib_srq* %162, %struct.ib_srq** %10, align 8
  br label %232

163:                                              ; preds = %151
  br label %167

164:                                              ; preds = %113, %110
  %165 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %166 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %165, i32 0, i32 1
  store %struct.qib_srq* null, %struct.qib_srq** %166, align 8
  br label %167

167:                                              ; preds = %164, %163
  %168 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %169 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  %171 = call i32 @spin_lock_init(i32* %170)
  %172 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %173 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  store i64 0, i64* %176, align 8
  %177 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %178 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %183 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %187 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %189 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %188, i32 0, i32 3
  %190 = call i32 @spin_lock(i32* %189)
  %191 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %192 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @ib_qib_max_srqs, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %167
  %197 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %198 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %197, i32 0, i32 3
  %199 = call i32 @spin_unlock(i32* %198)
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  %202 = call %struct.ib_srq* @ERR_PTR(i32 %201)
  store %struct.ib_srq* %202, %struct.ib_srq** %10, align 8
  br label %232

203:                                              ; preds = %167
  %204 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %205 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %209 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %208, i32 0, i32 3
  %210 = call i32 @spin_unlock(i32* %209)
  %211 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %212 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %211, i32 0, i32 1
  %213 = load %struct.qib_srq*, %struct.qib_srq** %212, align 8
  %214 = icmp ne %struct.qib_srq* %213, null
  br i1 %214, label %215, label %229

215:                                              ; preds = %203
  %216 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %217 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %216, i32 0, i32 1
  %218 = call i32 @spin_lock_irq(i32* %217)
  %219 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %220 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %219, i32 0, i32 1
  %221 = load %struct.qib_srq*, %struct.qib_srq** %220, align 8
  %222 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %221, i32 0, i32 3
  %223 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %224 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %223, i32 0, i32 2
  %225 = call i32 @list_add(i32* %222, i32* %224)
  %226 = load %struct.qib_ibdev*, %struct.qib_ibdev** %7, align 8
  %227 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %226, i32 0, i32 1
  %228 = call i32 @spin_unlock_irq(i32* %227)
  br label %229

229:                                              ; preds = %215, %203
  %230 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %231 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %230, i32 0, i32 2
  store %struct.ib_srq* %231, %struct.ib_srq** %10, align 8
  br label %246

232:                                              ; preds = %196, %160
  %233 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %234 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %233, i32 0, i32 1
  %235 = load %struct.qib_srq*, %struct.qib_srq** %234, align 8
  %236 = call i32 @kfree(%struct.qib_srq* %235)
  br label %237

237:                                              ; preds = %232, %147
  %238 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %239 = getelementptr inbounds %struct.qib_srq, %struct.qib_srq* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = call i32 @vfree(%struct.TYPE_10__* %241)
  br label %243

243:                                              ; preds = %237, %106
  %244 = load %struct.qib_srq*, %struct.qib_srq** %8, align 8
  %245 = call i32 @kfree(%struct.qib_srq* %244)
  br label %246

246:                                              ; preds = %243, %229, %61, %52, %22
  %247 = load %struct.ib_srq*, %struct.ib_srq** %10, align 8
  ret %struct.ib_srq* %247
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local %struct.qib_srq* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @vmalloc_user(i32) #1

declare dso_local %struct.qib_srq* @qib_create_mmap_info(%struct.qib_ibdev*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.qib_srq*) #1

declare dso_local i32 @vfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

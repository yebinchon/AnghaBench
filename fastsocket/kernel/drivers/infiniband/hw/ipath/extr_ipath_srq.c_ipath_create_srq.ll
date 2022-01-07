; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_srq.c_ipath_create_srq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_srq.c_ipath_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_pd = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.ib_udata = type { i32 }
%struct.ipath_ibdev = type { i64, i32, i32, i32 }
%struct.ipath_srq = type { %struct.TYPE_9__, %struct.ipath_srq*, %struct.ib_srq, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64 }

@IB_SRQT_BASIC = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ib_ipath_max_srq_sges = common dso_local global i64 0, align 8
@ib_ipath_max_srq_wrs = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_ipath_max_srqs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @ipath_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_srq_init_attr*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.ipath_ibdev*, align 8
  %8 = alloca %struct.ipath_srq*, align 8
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
  %16 = call %struct.ipath_ibdev* @to_idev(i32 %15)
  store %struct.ipath_ibdev* %16, %struct.ipath_ibdev** %7, align 8
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
  br label %244

26:                                               ; preds = %3
  %27 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %28 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.ib_srq* @ERR_PTR(i32 %34)
  store %struct.ib_srq* %35, %struct.ib_srq** %10, align 8
  br label %244

36:                                               ; preds = %26
  %37 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ib_ipath_max_srq_sges, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %45 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ib_ipath_max_srq_wrs, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43, %36
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.ib_srq* @ERR_PTR(i32 %52)
  store %struct.ib_srq* %53, %struct.ib_srq** %10, align 8
  br label %244

54:                                               ; preds = %43
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.ipath_srq* @kmalloc(i32 56, i32 %55)
  store %struct.ipath_srq* %56, %struct.ipath_srq** %8, align 8
  %57 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %58 = icmp ne %struct.ipath_srq* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.ib_srq* @ERR_PTR(i32 %61)
  store %struct.ib_srq* %62, %struct.ib_srq** %10, align 8
  br label %244

63:                                               ; preds = %54
  %64 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %65 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  %69 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %70 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %73 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %77 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  %79 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %80 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = mul i64 4, %82
  %84 = add i64 %83, 4
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  %86 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %87 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = mul nsw i64 %89, %91
  %93 = add i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call %struct.TYPE_10__* @vmalloc_user(i32 %94)
  %96 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %97 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %98, align 8
  %99 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %100 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %63
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  %107 = call %struct.ib_srq* @ERR_PTR(i32 %106)
  store %struct.ib_srq* %107, %struct.ib_srq** %10, align 8
  br label %241

108:                                              ; preds = %63
  %109 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %110 = icmp ne %struct.ib_udata* %109, null
  br i1 %110, label %111, label %162

111:                                              ; preds = %108
  %112 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %113 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp uge i64 %115, 4
  br i1 %116, label %117, label %162

117:                                              ; preds = %111
  %118 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %119 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %121, %123
  %125 = add i64 4, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %130 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %135 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = call %struct.ipath_srq* @ipath_create_mmap_info(%struct.ipath_ibdev* %127, i32 %128, i32 %133, %struct.TYPE_10__* %137)
  %139 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %140 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %139, i32 0, i32 1
  store %struct.ipath_srq* %138, %struct.ipath_srq** %140, align 8
  %141 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %142 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %141, i32 0, i32 1
  %143 = load %struct.ipath_srq*, %struct.ipath_srq** %142, align 8
  %144 = icmp ne %struct.ipath_srq* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %117
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = sub nsw i32 0, %146
  %148 = call %struct.ib_srq* @ERR_PTR(i32 %147)
  store %struct.ib_srq* %148, %struct.ib_srq** %10, align 8
  br label %235

149:                                              ; preds = %117
  %150 = load %struct.ib_udata*, %struct.ib_udata** %6, align 8
  %151 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %152 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %151, i32 0, i32 1
  %153 = load %struct.ipath_srq*, %struct.ipath_srq** %152, align 8
  %154 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %153, i32 0, i32 5
  %155 = call i32 @ib_copy_to_udata(%struct.ib_udata* %150, i32* %154, i32 4)
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* %11, align 4
  %160 = call %struct.ib_srq* @ERR_PTR(i32 %159)
  store %struct.ib_srq* %160, %struct.ib_srq** %10, align 8
  br label %230

161:                                              ; preds = %149
  br label %165

162:                                              ; preds = %111, %108
  %163 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %164 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %163, i32 0, i32 1
  store %struct.ipath_srq* null, %struct.ipath_srq** %164, align 8
  br label %165

165:                                              ; preds = %162, %161
  %166 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %167 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = call i32 @spin_lock_init(i32* %168)
  %170 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %171 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  %175 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %176 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  %180 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %181 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %185 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %187 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %186, i32 0, i32 3
  %188 = call i32 @spin_lock(i32* %187)
  %189 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %190 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @ib_ipath_max_srqs, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %201

194:                                              ; preds = %165
  %195 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %196 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %195, i32 0, i32 3
  %197 = call i32 @spin_unlock(i32* %196)
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  %200 = call %struct.ib_srq* @ERR_PTR(i32 %199)
  store %struct.ib_srq* %200, %struct.ib_srq** %10, align 8
  br label %230

201:                                              ; preds = %165
  %202 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %203 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %203, align 8
  %206 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %207 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %206, i32 0, i32 3
  %208 = call i32 @spin_unlock(i32* %207)
  %209 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %210 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %209, i32 0, i32 1
  %211 = load %struct.ipath_srq*, %struct.ipath_srq** %210, align 8
  %212 = icmp ne %struct.ipath_srq* %211, null
  br i1 %212, label %213, label %227

213:                                              ; preds = %201
  %214 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %215 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %214, i32 0, i32 1
  %216 = call i32 @spin_lock_irq(i32* %215)
  %217 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %218 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %217, i32 0, i32 1
  %219 = load %struct.ipath_srq*, %struct.ipath_srq** %218, align 8
  %220 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %219, i32 0, i32 3
  %221 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %222 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %221, i32 0, i32 2
  %223 = call i32 @list_add(i32* %220, i32* %222)
  %224 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %7, align 8
  %225 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %224, i32 0, i32 1
  %226 = call i32 @spin_unlock_irq(i32* %225)
  br label %227

227:                                              ; preds = %213, %201
  %228 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %229 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %228, i32 0, i32 2
  store %struct.ib_srq* %229, %struct.ib_srq** %10, align 8
  br label %244

230:                                              ; preds = %194, %158
  %231 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %232 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %231, i32 0, i32 1
  %233 = load %struct.ipath_srq*, %struct.ipath_srq** %232, align 8
  %234 = call i32 @kfree(%struct.ipath_srq* %233)
  br label %235

235:                                              ; preds = %230, %145
  %236 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %237 = getelementptr inbounds %struct.ipath_srq, %struct.ipath_srq* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = call i32 @vfree(%struct.TYPE_10__* %239)
  br label %241

241:                                              ; preds = %235, %104
  %242 = load %struct.ipath_srq*, %struct.ipath_srq** %8, align 8
  %243 = call i32 @kfree(%struct.ipath_srq* %242)
  br label %244

244:                                              ; preds = %241, %227, %59, %50, %32, %22
  %245 = load %struct.ib_srq*, %struct.ib_srq** %10, align 8
  ret %struct.ib_srq* %245
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local %struct.ipath_srq* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @vmalloc_user(i32) #1

declare dso_local %struct.ipath_srq* @ipath_create_mmap_info(%struct.ipath_ibdev*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.ipath_srq*) #1

declare dso_local i32 @vfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

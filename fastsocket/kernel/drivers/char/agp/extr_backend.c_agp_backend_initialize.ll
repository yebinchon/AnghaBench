; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_backend.c_agp_backend_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_backend.c_agp_backend_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { i32*, %struct.TYPE_4__*, %struct.page*, i32, i32, i32, %struct.TYPE_3__*, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 (...)*, {}*, i32 (i8*, i32)*, i64, i32 (%struct.page*, i32)*, i64 (...)*, i64 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*, i32, i32)*, i64 (%struct.page*, i32*)*, %struct.page* (%struct.agp_bridge_data*)* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32 }

@agp_current_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"can't get memory for scratch page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to dma-map scratch page\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"can't determine aperture size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"can't get memory for graphics translation table\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"can't allocate memory for key lists\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"error configuring host chipset\0A\00", align 1
@AGP_PAGE_DESTROY_UNMAP = common dso_local global i32 0, align 4
@AGP_PAGE_DESTROY_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_bridge_data*)* @agp_backend_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_backend_initialize(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i8*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @agp_find_max()
  %11 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %12 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %11, i32 0, i32 9
  store i32 %10, i32* %12, align 8
  %13 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %14 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %13, i32 0, i32 8
  store i32* @agp_current_version, i32** %14, align 8
  %15 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %16 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %1
  %22 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %23 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 9
  %26 = load %struct.page* (%struct.agp_bridge_data*)*, %struct.page* (%struct.agp_bridge_data*)** %25, align 8
  %27 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %28 = call %struct.page* %26(%struct.agp_bridge_data* %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %21
  %32 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %33 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %32, i32 0, i32 6
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %248

39:                                               ; preds = %21
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %42 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %41, i32 0, i32 2
  store %struct.page* %40, %struct.page** %42, align 8
  %43 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %44 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 8
  %47 = load i64 (%struct.page*, i32*)*, i64 (%struct.page*, i32*)** %46, align 8
  %48 = icmp ne i64 (%struct.page*, i32*)* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %39
  %50 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %51 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 8
  %54 = load i64 (%struct.page*, i32*)*, i64 (%struct.page*, i32*)** %53, align 8
  %55 = load %struct.page*, %struct.page** %8, align 8
  %56 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %57 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %56, i32 0, i32 3
  %58 = call i64 %54(%struct.page* %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %49
  %61 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %62 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %61, i32 0, i32 6
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %196

68:                                               ; preds = %49
  br label %74

69:                                               ; preds = %39
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @page_to_phys(%struct.page* %70)
  %72 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %73 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %68
  %75 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %76 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  %79 = load i32 (%struct.agp_bridge_data*, i32, i32)*, i32 (%struct.agp_bridge_data*, i32, i32)** %78, align 8
  %80 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %81 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %82 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 %79(%struct.agp_bridge_data* %80, i32 %83, i32 0)
  %85 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %86 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %74, %1
  %88 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %89 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (...)*, i32 (...)** %91, align 8
  %93 = call i32 (...) %92()
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %98 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %97, i32 0, i32 6
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %168

104:                                              ; preds = %87
  %105 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %106 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i64 (%struct.agp_bridge_data*)*, i64 (%struct.agp_bridge_data*)** %108, align 8
  %110 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %111 = call i64 %109(%struct.agp_bridge_data* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %115 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %114, i32 0, i32 6
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %168

121:                                              ; preds = %104
  store i32 1, i32* %6, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = mul nsw i32 %122, 4
  %124 = call i32* @vmalloc(i32 %123)
  %125 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %126 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  %127 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %128 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %121
  %132 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %133 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %132, i32 0, i32 6
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = call i32 @dev_err(i32* %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %168

139:                                              ; preds = %121
  store i32 1, i32* %7, align 4
  %140 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %141 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* @PAGE_SIZE, align 4
  %144 = mul nsw i32 %143, 4
  %145 = call i32 @memset(i32* %142, i32 0, i32 %144)
  %146 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %147 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %146, i32 0, i32 1
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 5
  %150 = load i64 (...)*, i64 (...)** %149, align 8
  %151 = call i64 (...) %150()
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %139
  %154 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %155 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %154, i32 0, i32 6
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %5, align 4
  br label %168

161:                                              ; preds = %139
  %162 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %163 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %162, i32 0, i32 5
  %164 = call i32 @INIT_LIST_HEAD(i32* %163)
  %165 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %166 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %165, i32 0, i32 4
  %167 = call i32 @spin_lock_init(i32* %166)
  store i32 0, i32* %2, align 4
  br label %248

168:                                              ; preds = %153, %131, %113, %96
  %169 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %170 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %168
  %176 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %177 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 4
  %180 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %179, align 8
  %181 = icmp ne i32 (%struct.page*, i32)* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %184 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %183, i32 0, i32 1
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 4
  %187 = load i32 (%struct.page*, i32)*, i32 (%struct.page*, i32)** %186, align 8
  %188 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %189 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %188, i32 0, i32 2
  %190 = load %struct.page*, %struct.page** %189, align 8
  %191 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %192 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 %187(%struct.page* %190, i32 %193)
  br label %195

195:                                              ; preds = %182, %175, %168
  br label %196

196:                                              ; preds = %195, %60
  %197 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %198 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %196
  %204 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %205 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %204, i32 0, i32 2
  %206 = load %struct.page*, %struct.page** %205, align 8
  %207 = call i8* @page_address(%struct.page* %206)
  store i8* %207, i8** %9, align 8
  %208 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %209 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i32 (i8*, i32)*, i32 (i8*, i32)** %211, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = load i32, i32* @AGP_PAGE_DESTROY_UNMAP, align 4
  %215 = call i32 %212(i8* %213, i32 %214)
  %216 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %217 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %216, i32 0, i32 1
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load i32 (i8*, i32)*, i32 (i8*, i32)** %219, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = load i32, i32* @AGP_PAGE_DESTROY_FREE, align 4
  %223 = call i32 %220(i8* %221, i32 %222)
  br label %224

224:                                              ; preds = %203, %196
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %229 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = bitcast {}** %231 to i32 (%struct.agp_bridge_data*)**
  %233 = load i32 (%struct.agp_bridge_data*)*, i32 (%struct.agp_bridge_data*)** %232, align 8
  %234 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %235 = call i32 %233(%struct.agp_bridge_data* %234)
  br label %236

236:                                              ; preds = %227, %224
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %241 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = call i32 @vfree(i32* %242)
  %244 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %3, align 8
  %245 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %244, i32 0, i32 0
  store i32* null, i32** %245, align 8
  br label %246

246:                                              ; preds = %239, %236
  %247 = load i32, i32* %5, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %246, %161, %31
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @agp_find_max(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

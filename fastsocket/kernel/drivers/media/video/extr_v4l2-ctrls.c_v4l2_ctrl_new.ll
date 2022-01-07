; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_v4l2_ctrl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i8*, i32, i8**, i8*, i32, i64, %struct.TYPE_2__, i64, i64, i8*, i64, i64, i64, i64, %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_handler* }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.v4l2_ctrl_handler = type { i32, i32, i64 }
%struct.v4l2_ctrl_ops = type { i32 }

@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_INTEGER = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_STRING = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BOOLEAN = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BUTTON = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_WRITE_ONLY = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.v4l2_ctrl* (%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i64, i8*, i32, i64, i64, i64, i64, i64, i8**, i8*)* @v4l2_ctrl_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_ops* %1, i64 %2, i8* %3, i32 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i8** %10, i8* %11) #0 {
  %13 = alloca %struct.v4l2_ctrl*, align 8
  %14 = alloca %struct.v4l2_ctrl_handler*, align 8
  %15 = alloca %struct.v4l2_ctrl_ops*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.v4l2_ctrl*, align 8
  %27 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %14, align 8
  store %struct.v4l2_ctrl_ops* %1, %struct.v4l2_ctrl_ops** %15, align 8
  store i64 %2, i64* %16, align 8
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i8** %10, i8*** %24, align 8
  store i8* %11, i8** %25, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %12
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %13, align 8
  br label %254

33:                                               ; preds = %12
  %34 = load i64, i64* %16, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %17, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %68, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %68, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %20, align 8
  %45 = load i64, i64* %19, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %68, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* %21, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8**, i8*** %24, align 8
  %60 = icmp eq i8** %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @V4L2_CTRL_TYPE_STRING, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i64, i64* %20, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65, %58, %51, %43, %39, %36, %33
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  %72 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %69, i32 %71)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %13, align 8
  br label %254

73:                                               ; preds = %65, %61
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* @V4L2_CTRL_TYPE_BOOLEAN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81, %77, %73
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %19, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %20, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89, %85
  %94 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %95 = load i32, i32* @ERANGE, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %94, i32 %96)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %13, align 8
  br label %254

98:                                               ; preds = %89, %81
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @V4L2_CTRL_TYPE_BUTTON, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i64, i64* @V4L2_CTRL_FLAG_WRITE_ONLY, align 8
  %104 = load i64, i64* %23, align 8
  %105 = or i64 %104, %103
  store i64 %105, i64* %23, align 8
  br label %128

106:                                              ; preds = %98
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* @V4L2_CTRL_TYPE_CTRL_CLASS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i64, i64* @V4L2_CTRL_FLAG_READ_ONLY, align 8
  %112 = load i64, i64* %23, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %23, align 8
  br label %127

114:                                              ; preds = %106
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @V4L2_CTRL_TYPE_STRING, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i64, i64* %20, align 8
  %120 = add nsw i64 %119, 1
  %121 = mul nsw i64 2, %120
  %122 = load i32, i32* %27, align 4
  %123 = zext i32 %122 to i64
  %124 = add nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %27, align 4
  br label %126

126:                                              ; preds = %118, %114
  br label %127

127:                                              ; preds = %126, %110
  br label %128

128:                                              ; preds = %127, %102
  %129 = load i32, i32* %27, align 4
  %130 = zext i32 %129 to i64
  %131 = add i64 136, %130
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* @GFP_KERNEL, align 4
  %134 = call %struct.v4l2_ctrl* @kzalloc(i32 %132, i32 %133)
  store %struct.v4l2_ctrl* %134, %struct.v4l2_ctrl** %26, align 8
  %135 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %136 = icmp eq %struct.v4l2_ctrl* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %128
  %138 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  %141 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %138, i32 %140)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %13, align 8
  br label %254

142:                                              ; preds = %128
  %143 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %144 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %143, i32 0, i32 4
  %145 = call i32 @INIT_LIST_HEAD(i32* %144)
  %146 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %147 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %148 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %147, i32 0, i32 15
  store %struct.v4l2_ctrl_handler* %146, %struct.v4l2_ctrl_handler** %148, align 8
  %149 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %15, align 8
  %150 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %151 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %150, i32 0, i32 14
  store %struct.v4l2_ctrl_ops* %149, %struct.v4l2_ctrl_ops** %151, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %154 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %153, i32 0, i32 13
  store i64 %152, i64* %154, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %157 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %160 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load i64, i64* %23, align 8
  %162 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %163 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %162, i32 0, i32 12
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %19, align 8
  %165 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %166 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %165, i32 0, i32 5
  store i64 %164, i64* %166, align 8
  %167 = load i64, i64* %20, align 8
  %168 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %169 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %168, i32 0, i32 11
  store i64 %167, i64* %169, align 8
  %170 = load i64, i64* %21, align 8
  %171 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %172 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %171, i32 0, i32 10
  store i64 %170, i64* %172, align 8
  %173 = load i8**, i8*** %24, align 8
  %174 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %175 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %174, i32 0, i32 2
  store i8** %173, i8*** %175, align 8
  %176 = load i8*, i8** %25, align 8
  %177 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %178 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %177, i32 0, i32 9
  store i8* %176, i8** %178, align 8
  %179 = load i64, i64* %22, align 8
  %180 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %181 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %180, i32 0, i32 7
  store i64 %179, i64* %181, align 8
  %182 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %183 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %182, i32 0, i32 8
  store i64 %179, i64* %183, align 8
  %184 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %185 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %184, i32 0, i32 6
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  store i64 %179, i64* %186, align 8
  %187 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %188 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @V4L2_CTRL_TYPE_STRING, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %233

192:                                              ; preds = %142
  %193 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %194 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %193, i64 1
  %195 = bitcast %struct.v4l2_ctrl* %194 to i8*
  %196 = load i32, i32* %27, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i64, i64* %20, align 8
  %200 = add nsw i64 %199, 1
  %201 = sub i64 0, %200
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %204 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %203, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 0
  store i8* %202, i8** %205, align 8
  %206 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %207 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %206, i64 1
  %208 = bitcast %struct.v4l2_ctrl* %207 to i8*
  %209 = load i32, i32* %27, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i64, i64* %20, align 8
  %213 = add nsw i64 %212, 1
  %214 = mul nsw i64 2, %213
  %215 = sub i64 0, %214
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  %217 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %218 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %217, i32 0, i32 3
  store i8* %216, i8** %218, align 8
  %219 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %220 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %192
  %224 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %225 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %229 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @memset(i8* %227, i8 signext 32, i64 %230)
  br label %232

232:                                              ; preds = %223, %192
  br label %233

233:                                              ; preds = %232, %142
  %234 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %235 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %236 = call i64 @handler_new_ref(%struct.v4l2_ctrl_handler* %234, %struct.v4l2_ctrl* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %240 = call i32 @kfree(%struct.v4l2_ctrl* %239)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %13, align 8
  br label %254

241:                                              ; preds = %233
  %242 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %243 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %242, i32 0, i32 0
  %244 = call i32 @mutex_lock(i32* %243)
  %245 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  %246 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %245, i32 0, i32 4
  %247 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %248 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %247, i32 0, i32 1
  %249 = call i32 @list_add_tail(i32* %246, i32* %248)
  %250 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %14, align 8
  %251 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %250, i32 0, i32 0
  %252 = call i32 @mutex_unlock(i32* %251)
  %253 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %26, align 8
  store %struct.v4l2_ctrl* %253, %struct.v4l2_ctrl** %13, align 8
  br label %254

254:                                              ; preds = %241, %238, %137, %93, %68, %32
  %255 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %13, align 8
  ret %struct.v4l2_ctrl* %255
}

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i64 @handler_new_ref(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl*) #1

declare dso_local i32 @kfree(%struct.v4l2_ctrl*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

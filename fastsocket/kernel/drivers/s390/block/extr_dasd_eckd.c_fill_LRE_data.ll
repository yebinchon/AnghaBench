; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_fill_LRE_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_eckd.c_fill_LRE_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LRE_eckd_data = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_6__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dasd_device = type { i64 }
%struct.dasd_eckd_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@DBF_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fill LRE unknown opcode 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.LRE_eckd_data*, i32, i32, i32, i32, %struct.dasd_device*, i32, i32)* @fill_LRE_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_LRE_data(%struct.LRE_eckd_data* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.dasd_device* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.LRE_eckd_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dasd_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dasd_eckd_private*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.LRE_eckd_data* %0, %struct.LRE_eckd_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.dasd_device* %5, %struct.dasd_device** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %22 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.dasd_eckd_private*
  store %struct.dasd_eckd_private* %24, %struct.dasd_eckd_private** %17, align 8
  %25 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %26 = call i32 @memset(%struct.LRE_eckd_data* %25, i32 0, i32 64)
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %65

29:                                               ; preds = %8
  %30 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %31 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %64 [
    i32 13200, label %34
    i32 13184, label %52
  ]

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  %36 = add i32 %35, 6
  %37 = call i32 @ceil_quot(i32 %36, i32 232)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %19, align 4
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 6, %40
  %42 = add i32 %38, %41
  %43 = call i32 @ceil_quot(i32 %42, i32 34)
  %44 = add nsw i32 9, %43
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub i32 %45, 1
  %47 = load i32, i32* %20, align 4
  %48 = add nsw i32 10, %47
  %49 = mul i32 %46, %48
  %50 = add i32 49, %49
  %51 = udiv i32 %50, 8
  store i32 %51, i32* %18, align 4
  br label %64

52:                                               ; preds = %29
  %53 = load i32, i32* %15, align 4
  %54 = add i32 %53, 12
  %55 = call i32 @ceil_quot(i32 %54, i32 32)
  %56 = add nsw i32 7, %55
  store i32 %56, i32* %20, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub i32 %57, 1
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 8, %59
  %61 = mul i32 %58, %60
  %62 = add i32 39, %61
  %63 = udiv i32 %62, 7
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %29, %52, %34
  br label %65

65:                                               ; preds = %64, %8
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %68 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %71 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  switch i32 %72, label %250 [
    i32 133, label %73
    i32 144, label %80
    i32 129, label %87
    i32 140, label %98
    i32 137, label %109
    i32 130, label %109
    i32 132, label %109
    i32 131, label %109
    i32 136, label %119
    i32 135, label %119
    i32 134, label %129
    i32 128, label %183
    i32 148, label %195
    i32 141, label %195
    i32 143, label %195
    i32 142, label %195
    i32 147, label %205
    i32 146, label %205
    i32 145, label %215
    i32 139, label %219
    i32 138, label %230
    i32 149, label %240
  ]

73:                                               ; preds = %65
  %74 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %75 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 3, i32* %76, align 4
  %77 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %78 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 3, i32* %79, align 4
  br label %256

80:                                               ; preds = %65
  %81 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %82 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 3, i32* %83, align 4
  %84 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %85 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  store i32 22, i32* %86, align 4
  br label %256

87:                                               ; preds = %65
  %88 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %89 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %88, i32 0, i32 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  %91 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %92 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32 3, i32* %93, align 4
  %94 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %95 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %256

98:                                               ; preds = %65
  %99 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %100 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %99, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 3, i32* %101, align 4
  %102 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %103 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %102, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 22, i32* %104, align 4
  %105 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %106 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  br label %256

109:                                              ; preds = %65, %65, %65, %65
  %110 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %111 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %115 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %117 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  br label %256

119:                                              ; preds = %65, %65
  %120 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %121 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %125 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %127 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  store i32 3, i32* %128, align 4
  br label %256

129:                                              ; preds = %65
  %130 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %131 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  %133 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %134 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  store i32 63, i32* %135, align 4
  %136 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %137 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %136, i32 0, i32 3
  store i32 17, i32* %137, align 4
  %138 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %139 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %138, i32 0, i32 2
  store i32 0, i32* %139, align 8
  %140 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %141 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %140, i32 0, i32 4
  store i32 2, i32* %141, align 8
  %142 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %143 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp sgt i32 %144, 8
  br i1 %145, label %146, label %163

146:                                              ; preds = %129
  %147 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %148 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  store i32 255, i32* %150, align 4
  %151 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %152 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 255, i32* %154, align 4
  %155 = load i32, i32* %12, align 4
  %156 = sub nsw i32 16, %155
  %157 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %158 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, %156
  store i32 %162, i32* %160, align 4
  br label %180

163:                                              ; preds = %129
  %164 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %165 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 255, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = sub nsw i32 8, %168
  %170 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %171 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %170, i32 0, i32 5
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, %169
  store i32 %175, i32* %173, align 4
  %176 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %177 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %176, i32 0, i32 5
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %163, %146
  %181 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %182 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %181, i32 0, i32 0
  store i32 255, i32* %182, align 8
  br label %256

183:                                              ; preds = %65
  %184 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %185 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %184, i32 0, i32 9
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 1, i32* %186, align 4
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %189 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %191 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  store i32 63, i32* %192, align 4
  %193 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %194 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %193, i32 0, i32 3
  store i32 35, i32* %194, align 4
  br label %256

195:                                              ; preds = %65, %65, %65, %65
  %196 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %197 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %201 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %203 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %202, i32 0, i32 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store i32 6, i32* %204, align 4
  br label %256

205:                                              ; preds = %65, %65
  %206 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %207 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %206, i32 0, i32 9
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %211 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %213 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %212, i32 0, i32 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 1
  store i32 22, i32* %214, align 4
  br label %256

215:                                              ; preds = %65
  %216 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %217 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  store i32 6, i32* %218, align 4
  br label %256

219:                                              ; preds = %65
  %220 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %221 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %220, i32 0, i32 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 4
  %223 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %224 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %223, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  store i32 12, i32* %225, align 4
  %226 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %227 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %226, i32 0, i32 4
  store i32 0, i32* %227, align 8
  %228 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %229 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %228, i32 0, i32 0
  store i32 255, i32* %229, align 8
  br label %256

230:                                              ; preds = %65
  %231 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %232 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %231, i32 0, i32 9
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %236 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %238 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store i32 12, i32* %239, align 4
  br label %256

240:                                              ; preds = %65
  %241 = load i32, i32* %15, align 4
  %242 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %243 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 8
  %244 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %245 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %244, i32 0, i32 9
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  store i32 1, i32* %246, align 4
  %247 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %248 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %247, i32 0, i32 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  store i32 11, i32* %249, align 4
  br label %256

250:                                              ; preds = %65
  %251 = load i32, i32* @DBF_ERR, align 4
  %252 = load %struct.dasd_device*, %struct.dasd_device** %14, align 8
  %253 = load i32, i32* %13, align 4
  %254 = call i32 @DBF_DEV_EVENT(i32 %251, %struct.dasd_device* %252, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %253)
  %255 = call i32 (...) @BUG()
  br label %256

256:                                              ; preds = %250, %240, %230, %219, %215, %205, %195, %183, %180, %119, %109, %98, %87, %80, %73
  %257 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %258 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %257, i32 0, i32 7
  %259 = load i32, i32* %10, align 4
  %260 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %261 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = udiv i32 %259, %263
  %265 = load i32, i32* %10, align 4
  %266 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %17, align 8
  %267 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = urem i32 %265, %269
  %271 = call i32 @set_ch_t(%struct.TYPE_10__* %258, i32 %264, i32 %270)
  %272 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %273 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %272, i32 0, i32 7
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %277 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %276, i32 0, i32 6
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  store i32 %275, i32* %278, align 8
  %279 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %280 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %284 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %283, i32 0, i32 6
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 1
  store i32 %282, i32* %285, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.LRE_eckd_data*, %struct.LRE_eckd_data** %9, align 8
  %288 = getelementptr inbounds %struct.LRE_eckd_data, %struct.LRE_eckd_data* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  store i32 %286, i32* %289, align 8
  ret void
}

declare dso_local i32 @memset(%struct.LRE_eckd_data*, i32, i32) #1

declare dso_local i32 @ceil_quot(i32, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @set_ch_t(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

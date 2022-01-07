; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_set_vw_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_set_vw_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_data = type { i32, %struct.TYPE_6__, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"bad videosize value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_data*)* @set_vw_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vw_size(%struct.cam_data* %0) #0 {
  %2 = alloca %struct.cam_data*, align 8
  store %struct.cam_data* %0, %struct.cam_data** %2, align 8
  %3 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %4 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %270 [
    i32 131, label %6
    i32 128, label %28
    i32 135, label %50
    i32 136, label %72
    i32 137, label %94
    i32 138, label %116
    i32 130, label %138
    i32 129, label %160
    i32 139, label %182
    i32 132, label %204
    i32 133, label %226
    i32 134, label %248
  ]

6:                                                ; preds = %1
  %7 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %8 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 352, i32* %9, align 4
  %10 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %11 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i32 288, i32* %12, align 4
  %13 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %14 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 131, i32* %16, align 4
  %17 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %18 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %22 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %26 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 120, i32* %27, align 4
  br label %275

28:                                               ; preds = %1
  %29 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %30 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 320, i32* %31, align 4
  %32 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %33 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 240, i32* %34, align 4
  %35 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %36 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 131, i32* %38, align 4
  %39 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %40 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 2, i32* %42, align 4
  %43 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %44 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store i32 6, i32* %46, align 4
  %47 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %48 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 120, i32* %49, align 4
  br label %275

50:                                               ; preds = %1
  %51 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %52 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 288, i32* %53, align 4
  %54 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %55 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 216, i32* %56, align 4
  %57 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %58 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 131, i32* %60, align 4
  %61 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %62 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 4, i32* %64, align 4
  %65 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %66 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i32 9, i32* %68, align 4
  %69 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %70 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 120, i32* %71, align 4
  br label %275

72:                                               ; preds = %1
  %73 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %74 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 256, i32* %75, align 4
  %76 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %77 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 192, i32* %78, align 4
  %79 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %80 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 131, i32* %82, align 4
  %83 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %84 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 6, i32* %86, align 4
  %87 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %88 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i32 12, i32* %90, align 4
  %91 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %92 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 120, i32* %93, align 4
  br label %275

94:                                               ; preds = %1
  %95 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %96 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 224, i32* %97, align 4
  %98 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %99 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 168, i32* %100, align 4
  %101 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %102 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  store i32 131, i32* %104, align 4
  %105 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %106 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32 8, i32* %108, align 4
  %109 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %110 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  store i32 15, i32* %112, align 4
  %113 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %114 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32 120, i32* %115, align 4
  br label %275

116:                                              ; preds = %1
  %117 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %118 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  store i32 192, i32* %119, align 4
  %120 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %121 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 144, i32* %122, align 4
  %123 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %124 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  store i32 131, i32* %126, align 4
  %127 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %128 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i32 10, i32* %130, align 4
  %131 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %132 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 18, i32* %134, align 4
  %135 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %136 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  store i32 120, i32* %137, align 4
  br label %275

138:                                              ; preds = %1
  %139 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %140 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 176, i32* %141, align 4
  %142 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %143 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  store i32 144, i32* %144, align 4
  %145 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %146 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i32 130, i32* %148, align 4
  %149 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %150 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 4
  %153 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %154 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %158 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  store i32 60, i32* %159, align 4
  br label %275

160:                                              ; preds = %1
  %161 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %162 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i32 160, i32* %163, align 4
  %164 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %165 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 120, i32* %166, align 4
  %167 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %168 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store i32 130, i32* %170, align 4
  %171 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %172 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 4
  %175 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %176 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  store i32 3, i32* %178, align 4
  %179 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %180 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i32 60, i32* %181, align 4
  br label %275

182:                                              ; preds = %1
  %183 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %184 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  store i32 128, i32* %185, align 4
  %186 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %187 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  store i32 96, i32* %188, align 4
  %189 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %190 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i32 130, i32* %192, align 4
  %193 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %194 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  store i32 3, i32* %196, align 4
  %197 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %198 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  store i32 6, i32* %200, align 4
  %201 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %202 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  store i32 60, i32* %203, align 4
  br label %275

204:                                              ; preds = %1
  %205 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %206 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  store i32 88, i32* %207, align 4
  %208 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %209 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  store i32 72, i32* %210, align 4
  %211 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %212 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  store i32 130, i32* %214, align 4
  %215 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %216 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  store i32 5, i32* %218, align 4
  %219 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %220 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  store i32 9, i32* %222, align 4
  %223 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %224 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  store i32 60, i32* %225, align 4
  br label %275

226:                                              ; preds = %1
  %227 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %228 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %227, i32 0, i32 3
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  store i32 64, i32* %229, align 4
  %230 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %231 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 1
  store i32 48, i32* %232, align 4
  %233 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %234 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  store i32 130, i32* %236, align 4
  %237 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %238 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  store i32 7, i32* %240, align 4
  %241 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %242 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 1
  store i32 12, i32* %244, align 4
  %245 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %246 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  store i32 60, i32* %247, align 4
  br label %275

248:                                              ; preds = %1
  %249 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %250 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  store i32 48, i32* %251, align 4
  %252 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %253 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 1
  store i32 48, i32* %254, align 4
  %255 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %256 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  store i32 130, i32* %258, align 4
  %259 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %260 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 0
  store i32 8, i32* %262, align 4
  %263 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %264 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  store i32 6, i32* %266, align 4
  %267 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %268 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  store i32 60, i32* %269, align 4
  br label %275

270:                                              ; preds = %1
  %271 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %272 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %273)
  br label %356

275:                                              ; preds = %248, %226, %204, %182, %160, %138, %116, %94, %72, %50, %28, %6
  %276 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %277 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %275
  %282 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %283 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %287 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 4
  br label %289

289:                                              ; preds = %281, %275
  %290 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %291 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %289
  %296 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %297 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %301 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  store i32 %299, i32* %302, align 4
  br label %303

303:                                              ; preds = %295, %289
  %304 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %305 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = ashr i32 %307, 3
  %309 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %310 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %309, i32 0, i32 2
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, %308
  store i32 %314, i32* %312, align 4
  %315 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %316 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %321 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = ashr i32 %323, 3
  %325 = add nsw i32 %319, %324
  %326 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %327 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 2
  store i32 %325, i32* %329, align 4
  %330 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %331 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = ashr i32 %333, 2
  %335 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %336 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, %334
  store i32 %340, i32* %338, align 4
  %341 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %342 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %341, i32 0, i32 2
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %347 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = ashr i32 %349, 2
  %351 = add nsw i32 %345, %350
  %352 = load %struct.cam_data*, %struct.cam_data** %2, align 8
  %353 = getelementptr inbounds %struct.cam_data, %struct.cam_data* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 3
  store i32 %351, i32* %355, align 4
  br label %356

356:                                              ; preds = %303, %270
  ret void
}

declare dso_local i32 @LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

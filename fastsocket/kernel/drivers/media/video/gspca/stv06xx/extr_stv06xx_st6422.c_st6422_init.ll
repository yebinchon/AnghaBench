; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_st6422.c_st6422_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@STV_ISO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*)* @st6422_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st6422_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [30 x [2 x %struct.TYPE_5__]], align 16
  store %struct.sd* %0, %struct.sd** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = getelementptr inbounds [30 x [2 x %struct.TYPE_5__]], [30 x [2 x %struct.TYPE_5__]]* %5, i64 0, i64 0
  %7 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* @STV_ISO_ENABLE, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 2
  br label %13

13:                                               ; preds = %13, %1
  %14 = phi %struct.TYPE_5__* [ %11, %1 ], [ %16, %13 ]
  %15 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 1
  %17 = icmp eq %struct.TYPE_5__* %16, %12
  br i1 %17, label %18, label %13

18:                                               ; preds = %13
  %19 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %6, i64 1
  %20 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %19, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 5174, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 2
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi %struct.TYPE_5__* [ %23, %18 ], [ %28, %25 ]
  %27 = bitcast %struct.TYPE_5__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 1
  %29 = icmp eq %struct.TYPE_5__* %28, %24
  br i1 %29, label %30, label %25

30:                                               ; preds = %25
  %31 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %19, i64 1
  %32 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %31, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 5170, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 3, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 2
  br label %37

37:                                               ; preds = %37, %30
  %38 = phi %struct.TYPE_5__* [ %35, %30 ], [ %40, %37 ]
  %39 = bitcast %struct.TYPE_5__* %38 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 8, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 1
  %41 = icmp eq %struct.TYPE_5__* %40, %36
  br i1 %41, label %42, label %37

42:                                               ; preds = %37
  %43 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %31, i64 1
  %44 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %43, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 5178, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 249, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 2
  br label %49

49:                                               ; preds = %49, %42
  %50 = phi %struct.TYPE_5__* [ %47, %42 ], [ %52, %49 ]
  %51 = bitcast %struct.TYPE_5__* %50 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 8, i1 false)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 1
  %53 = icmp eq %struct.TYPE_5__* %52, %48
  br i1 %53, label %54, label %49

54:                                               ; preds = %49
  %55 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %43, i64 1
  %56 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %55, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 1289, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 2
  br label %61

61:                                               ; preds = %61, %54
  %62 = phi %struct.TYPE_5__* [ %59, %54 ], [ %64, %61 ]
  %63 = bitcast %struct.TYPE_5__* %62 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %63, i8 0, i64 8, i1 false)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 1
  %65 = icmp eq %struct.TYPE_5__* %64, %60
  br i1 %65, label %66, label %61

66:                                               ; preds = %61
  %67 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %55, i64 1
  %68 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %67, i64 0, i64 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 1290, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 56, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 2
  br label %73

73:                                               ; preds = %73, %66
  %74 = phi %struct.TYPE_5__* [ %71, %66 ], [ %76, %73 ]
  %75 = bitcast %struct.TYPE_5__* %74 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %75, i8 0, i64 8, i1 false)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 1
  %77 = icmp eq %struct.TYPE_5__* %76, %72
  br i1 %77, label %78, label %73

78:                                               ; preds = %73
  %79 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %67, i64 1
  %80 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %79, i64 0, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 1291, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i32 56, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 2
  br label %85

85:                                               ; preds = %85, %78
  %86 = phi %struct.TYPE_5__* [ %83, %78 ], [ %88, %85 ]
  %87 = bitcast %struct.TYPE_5__* %86 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 8, i1 false)
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 1
  %89 = icmp eq %struct.TYPE_5__* %88, %84
  br i1 %89, label %90, label %85

90:                                               ; preds = %85
  %91 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %79, i64 1
  %92 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %91, i64 0, i64 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i32 1292, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i32 42, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 2
  br label %97

97:                                               ; preds = %97, %90
  %98 = phi %struct.TYPE_5__* [ %95, %90 ], [ %100, %97 ]
  %99 = bitcast %struct.TYPE_5__* %98 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %99, i8 0, i64 8, i1 false)
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 1
  %101 = icmp eq %struct.TYPE_5__* %100, %96
  br i1 %101, label %102, label %97

102:                                              ; preds = %97
  %103 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %91, i64 1
  %104 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %103, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 1293, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 2
  br label %109

109:                                              ; preds = %109, %102
  %110 = phi %struct.TYPE_5__* [ %107, %102 ], [ %112, %109 ]
  %111 = bitcast %struct.TYPE_5__* %110 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %111, i8 0, i64 8, i1 false)
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 1
  %113 = icmp eq %struct.TYPE_5__* %112, %108
  br i1 %113, label %114, label %109

114:                                              ; preds = %109
  %115 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %103, i64 1
  %116 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %115, i64 0, i64 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 5169, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 2
  br label %121

121:                                              ; preds = %121, %114
  %122 = phi %struct.TYPE_5__* [ %119, %114 ], [ %124, %121 ]
  %123 = bitcast %struct.TYPE_5__* %122 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %123, i8 0, i64 8, i1 false)
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 1
  %125 = icmp eq %struct.TYPE_5__* %124, %120
  br i1 %125, label %126, label %121

126:                                              ; preds = %121
  %127 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %115, i64 1
  %128 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %127, i64 0, i64 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 5171, i32* %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 52, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 2
  br label %133

133:                                              ; preds = %133, %126
  %134 = phi %struct.TYPE_5__* [ %131, %126 ], [ %136, %133 ]
  %135 = bitcast %struct.TYPE_5__* %134 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %135, i8 0, i64 8, i1 false)
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 1
  %137 = icmp eq %struct.TYPE_5__* %136, %132
  br i1 %137, label %138, label %133

138:                                              ; preds = %133
  %139 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %127, i64 1
  %140 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %139, i64 0, i64 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 5176, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 24, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 2
  br label %145

145:                                              ; preds = %145, %138
  %146 = phi %struct.TYPE_5__* [ %143, %138 ], [ %148, %145 ]
  %147 = bitcast %struct.TYPE_5__* %146 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %147, i8 0, i64 8, i1 false)
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 1
  %149 = icmp eq %struct.TYPE_5__* %148, %144
  br i1 %149, label %150, label %145

150:                                              ; preds = %145
  %151 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %139, i64 1
  %152 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %151, i64 0, i64 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 5177, i32* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 2
  br label %157

157:                                              ; preds = %157, %150
  %158 = phi %struct.TYPE_5__* [ %155, %150 ], [ %160, %157 ]
  %159 = bitcast %struct.TYPE_5__* %158 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %159, i8 0, i64 8, i1 false)
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 1
  %161 = icmp eq %struct.TYPE_5__* %160, %156
  br i1 %161, label %162, label %157

162:                                              ; preds = %157
  %163 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %151, i64 1
  %164 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %163, i64 0, i64 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i32 5179, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  store i32 5, i32* %166, align 4
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 1
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 2
  br label %169

169:                                              ; preds = %169, %162
  %170 = phi %struct.TYPE_5__* [ %167, %162 ], [ %172, %169 ]
  %171 = bitcast %struct.TYPE_5__* %170 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %171, i8 0, i64 8, i1 false)
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i64 1
  %173 = icmp eq %struct.TYPE_5__* %172, %168
  br i1 %173, label %174, label %169

174:                                              ; preds = %169
  %175 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %163, i64 1
  %176 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %175, i64 0, i64 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 5180, i32* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 2
  br label %181

181:                                              ; preds = %181, %174
  %182 = phi %struct.TYPE_5__* [ %179, %174 ], [ %184, %181 ]
  %183 = bitcast %struct.TYPE_5__* %182 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %183, i8 0, i64 8, i1 false)
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 1
  %185 = icmp eq %struct.TYPE_5__* %184, %180
  br i1 %185, label %186, label %181

186:                                              ; preds = %181
  %187 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %175, i64 1
  %188 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %187, i64 0, i64 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 5182, i32* %189, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 2
  br label %193

193:                                              ; preds = %193, %186
  %194 = phi %struct.TYPE_5__* [ %191, %186 ], [ %196, %193 ]
  %195 = bitcast %struct.TYPE_5__* %194 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %195, i8 0, i64 8, i1 false)
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 1
  %197 = icmp eq %struct.TYPE_5__* %196, %192
  br i1 %197, label %198, label %193

198:                                              ; preds = %193
  %199 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %187, i64 1
  %200 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %199, i64 0, i64 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  store i32 5181, i32* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  store i32 0, i32* %202, align 4
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 1
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 2
  br label %205

205:                                              ; preds = %205, %198
  %206 = phi %struct.TYPE_5__* [ %203, %198 ], [ %208, %205 ]
  %207 = bitcast %struct.TYPE_5__* %206 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %207, i8 0, i64 8, i1 false)
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i64 1
  %209 = icmp eq %struct.TYPE_5__* %208, %204
  br i1 %209, label %210, label %205

210:                                              ; preds = %205
  %211 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %199, i64 1
  %212 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %211, i64 0, i64 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  store i32 5186, i32* %213, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  store i32 226, i32* %214, align 4
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 2
  br label %217

217:                                              ; preds = %217, %210
  %218 = phi %struct.TYPE_5__* [ %215, %210 ], [ %220, %217 ]
  %219 = bitcast %struct.TYPE_5__* %218 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %219, i8 0, i64 8, i1 false)
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 1
  %221 = icmp eq %struct.TYPE_5__* %220, %216
  br i1 %221, label %222, label %217

222:                                              ; preds = %217
  %223 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %211, i64 1
  %224 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %223, i64 0, i64 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store i32 5376, i32* %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  store i32 208, i32* %226, align 4
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 1
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i64 2
  br label %229

229:                                              ; preds = %229, %222
  %230 = phi %struct.TYPE_5__* [ %227, %222 ], [ %232, %229 ]
  %231 = bitcast %struct.TYPE_5__* %230 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %231, i8 0, i64 8, i1 false)
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i64 1
  %233 = icmp eq %struct.TYPE_5__* %232, %228
  br i1 %233, label %234, label %229

234:                                              ; preds = %229
  %235 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %223, i64 1
  %236 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %235, i64 0, i64 0
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  store i32 5376, i32* %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  store i32 208, i32* %238, align 4
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 1
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 2
  br label %241

241:                                              ; preds = %241, %234
  %242 = phi %struct.TYPE_5__* [ %239, %234 ], [ %244, %241 ]
  %243 = bitcast %struct.TYPE_5__* %242 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %243, i8 0, i64 8, i1 false)
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 1
  %245 = icmp eq %struct.TYPE_5__* %244, %240
  br i1 %245, label %246, label %241

246:                                              ; preds = %241
  %247 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %235, i64 1
  %248 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %247, i64 0, i64 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  store i32 5376, i32* %249, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  store i32 80, i32* %250, align 4
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 1
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i64 2
  br label %253

253:                                              ; preds = %253, %246
  %254 = phi %struct.TYPE_5__* [ %251, %246 ], [ %256, %253 ]
  %255 = bitcast %struct.TYPE_5__* %254 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %255, i8 0, i64 8, i1 false)
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i64 1
  %257 = icmp eq %struct.TYPE_5__* %256, %252
  br i1 %257, label %258, label %253

258:                                              ; preds = %253
  %259 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %247, i64 1
  %260 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %259, i64 0, i64 0
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  store i32 5377, i32* %261, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  store i32 175, i32* %262, align 4
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 1
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 2
  br label %265

265:                                              ; preds = %265, %258
  %266 = phi %struct.TYPE_5__* [ %263, %258 ], [ %268, %265 ]
  %267 = bitcast %struct.TYPE_5__* %266 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %267, i8 0, i64 8, i1 false)
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i64 1
  %269 = icmp eq %struct.TYPE_5__* %268, %264
  br i1 %269, label %270, label %265

270:                                              ; preds = %265
  %271 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %259, i64 1
  %272 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %271, i64 0, i64 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  store i32 5378, i32* %273, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  store i32 194, i32* %274, align 4
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i64 1
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i64 2
  br label %277

277:                                              ; preds = %277, %270
  %278 = phi %struct.TYPE_5__* [ %275, %270 ], [ %280, %277 ]
  %279 = bitcast %struct.TYPE_5__* %278 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %279, i8 0, i64 8, i1 false)
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i64 1
  %281 = icmp eq %struct.TYPE_5__* %280, %276
  br i1 %281, label %282, label %277

282:                                              ; preds = %277
  %283 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %271, i64 1
  %284 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %283, i64 0, i64 0
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  store i32 5379, i32* %285, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  store i32 69, i32* %286, align 4
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i64 1
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i64 2
  br label %289

289:                                              ; preds = %289, %282
  %290 = phi %struct.TYPE_5__* [ %287, %282 ], [ %292, %289 ]
  %291 = bitcast %struct.TYPE_5__* %290 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %291, i8 0, i64 8, i1 false)
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i64 1
  %293 = icmp eq %struct.TYPE_5__* %292, %288
  br i1 %293, label %294, label %289

294:                                              ; preds = %289
  %295 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %283, i64 1
  %296 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %295, i64 0, i64 0
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  store i32 5381, i32* %297, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  store i32 2, i32* %298, align 4
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i64 1
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i64 2
  br label %301

301:                                              ; preds = %301, %294
  %302 = phi %struct.TYPE_5__* [ %299, %294 ], [ %304, %301 ]
  %303 = bitcast %struct.TYPE_5__* %302 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %303, i8 0, i64 8, i1 false)
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i64 1
  %305 = icmp eq %struct.TYPE_5__* %304, %300
  br i1 %305, label %306, label %301

306:                                              ; preds = %301
  %307 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %295, i64 1
  %308 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %307, i64 0, i64 0
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 0
  store i32 5390, i32* %309, align 8
  %310 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 1
  store i32 142, i32* %310, align 4
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 1
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 2
  br label %313

313:                                              ; preds = %313, %306
  %314 = phi %struct.TYPE_5__* [ %311, %306 ], [ %316, %313 ]
  %315 = bitcast %struct.TYPE_5__* %314 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %315, i8 0, i64 8, i1 false)
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i64 1
  %317 = icmp eq %struct.TYPE_5__* %316, %312
  br i1 %317, label %318, label %313

318:                                              ; preds = %313
  %319 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %307, i64 1
  %320 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %319, i64 0, i64 0
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  store i32 5391, i32* %321, align 8
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 1
  store i32 55, i32* %322, align 4
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 1
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 2
  br label %325

325:                                              ; preds = %325, %318
  %326 = phi %struct.TYPE_5__* [ %323, %318 ], [ %328, %325 ]
  %327 = bitcast %struct.TYPE_5__* %326 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %327, i8 0, i64 8, i1 false)
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i64 1
  %329 = icmp eq %struct.TYPE_5__* %328, %324
  br i1 %329, label %330, label %325

330:                                              ; preds = %325
  %331 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %319, i64 1
  %332 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %331, i64 0, i64 0
  %333 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 0
  store i32 5568, i32* %333, align 8
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i32 0, i32 1
  store i32 0, i32* %334, align 4
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i64 1
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %332, i64 2
  br label %337

337:                                              ; preds = %337, %330
  %338 = phi %struct.TYPE_5__* [ %335, %330 ], [ %340, %337 ]
  %339 = bitcast %struct.TYPE_5__* %338 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %339, i8 0, i64 8, i1 false)
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i64 1
  %341 = icmp eq %struct.TYPE_5__* %340, %336
  br i1 %341, label %342, label %337

342:                                              ; preds = %337
  %343 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %331, i64 1
  %344 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %343, i64 0, i64 0
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 0
  store i32 5571, i32* %345, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 1
  store i32 8, i32* %346, align 4
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i64 1
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i64 2
  br label %349

349:                                              ; preds = %349, %342
  %350 = phi %struct.TYPE_5__* [ %347, %342 ], [ %352, %349 ]
  %351 = bitcast %struct.TYPE_5__* %350 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %351, i8 0, i64 8, i1 false)
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i64 1
  %353 = icmp eq %struct.TYPE_5__* %352, %348
  br i1 %353, label %354, label %349

354:                                              ; preds = %349
  %355 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %343, i64 1
  %356 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %355, i64 0, i64 0
  %357 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 0
  store i32 5183, i32* %357, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i32 0, i32 1
  store i32 1, i32* %358, align 4
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 1
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 2
  br label %361

361:                                              ; preds = %361, %354
  %362 = phi %struct.TYPE_5__* [ %359, %354 ], [ %364, %361 ]
  %363 = bitcast %struct.TYPE_5__* %362 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %363, i8 0, i64 8, i1 false)
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i64 1
  %365 = icmp eq %struct.TYPE_5__* %364, %360
  br i1 %365, label %366, label %361

366:                                              ; preds = %361
  store i32 0, i32* %4, align 4
  br label %367

367:                                              ; preds = %394, %366
  %368 = load i32, i32* %4, align 4
  %369 = getelementptr inbounds [30 x [2 x %struct.TYPE_5__]], [30 x [2 x %struct.TYPE_5__]]* %5, i64 0, i64 0
  %370 = bitcast [2 x %struct.TYPE_5__]* %369 to %struct.TYPE_5__**
  %371 = call i32 @ARRAY_SIZE(%struct.TYPE_5__** %370)
  %372 = icmp slt i32 %368, %371
  br i1 %372, label %373, label %377

373:                                              ; preds = %367
  %374 = load i32, i32* %3, align 4
  %375 = icmp ne i32 %374, 0
  %376 = xor i1 %375, true
  br label %377

377:                                              ; preds = %373, %367
  %378 = phi i1 [ false, %367 ], [ %376, %373 ]
  br i1 %378, label %379, label %397

379:                                              ; preds = %377
  %380 = load %struct.sd*, %struct.sd** %2, align 8
  %381 = load i32, i32* %4, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [30 x [2 x %struct.TYPE_5__]], [30 x [2 x %struct.TYPE_5__]]* %5, i64 0, i64 %382
  %384 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %383, i64 0, i64 0
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [30 x [2 x %struct.TYPE_5__]], [30 x [2 x %struct.TYPE_5__]]* %5, i64 0, i64 %386
  %388 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %387, i64 0, i64 1
  %389 = bitcast %struct.TYPE_5__* %384 to i64*
  %390 = load i64, i64* %389, align 16
  %391 = bitcast %struct.TYPE_5__* %388 to i64*
  %392 = load i64, i64* %391, align 8
  %393 = call i32 @stv06xx_write_bridge(%struct.sd* %380, i64 %390, i64 %392)
  store i32 %393, i32* %3, align 4
  br label %394

394:                                              ; preds = %379
  %395 = load i32, i32* %4, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %4, align 4
  br label %367

397:                                              ; preds = %377
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__**) #2

declare dso_local i32 @stv06xx_write_bridge(%struct.sd*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

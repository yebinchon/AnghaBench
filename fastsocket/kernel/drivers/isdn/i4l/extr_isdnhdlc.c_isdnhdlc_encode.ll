; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdnhdlc.c_isdnhdlc_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdnhdlc.c_isdnhdlc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isdnhdlc_vars = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32 }

@isdnhdlc_encode.xfast_flag_value = internal constant [9 x i8] c"~?\9F\CF\E7\F3\F9\FC~", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdnhdlc_encode(%struct.isdnhdlc_vars* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.isdnhdlc_vars*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.isdnhdlc_vars* %0, %struct.isdnhdlc_vars** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %6
  %20 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %21 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 132
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %26 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %25, i32 0, i32 0
  store i32 137, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19, %6
  br label %28

28:                                               ; preds = %708, %27
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %709

31:                                               ; preds = %28
  %32 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %33 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %41 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* %45, align 4
  %48 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %49 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %56 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %44
  %58 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %59 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %58, i32 0, i32 1
  store i32 8, i32* %59, align 4
  br label %99

60:                                               ; preds = %39, %36
  %61 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %62 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 133
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %67 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %72 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %71, i32 0, i32 0
  store i32 135, i32* %72, align 8
  %73 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %74 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, 65535
  store i32 %76, i32* %74, align 4
  %77 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %78 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %77, i32 0, i32 1
  store i32 8, i32* %78, align 4
  %79 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %80 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 255
  %83 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %84 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  br label %97

85:                                               ; preds = %65
  %86 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %87 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %86, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %92 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %91, i32 0, i32 0
  store i32 132, i32* %92, align 8
  br label %96

93:                                               ; preds = %85
  %94 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %95 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %94, i32 0, i32 0
  store i32 140, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %70
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98, %57
  br label %100

100:                                              ; preds = %99, %31
  %101 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %102 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %652 [
    i32 128, label %104
    i32 132, label %114
    i32 137, label %144
    i32 140, label %169
    i32 139, label %184
    i32 138, label %206
    i32 130, label %235
    i32 133, label %289
    i32 135, label %355
    i32 134, label %422
    i32 136, label %485
    i32 129, label %580
    i32 131, label %609
  ]

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %13, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32*, i32** %12, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %12, align 8
  store i32 255, i32* %110, align 4
  br label %105

112:                                              ; preds = %105
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %7, align 4
  br label %715

114:                                              ; preds = %100
  %115 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %116 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %115, i32 0, i32 2
  store i32 0, i32* %116, align 8
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %143

119:                                              ; preds = %114
  %120 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %121 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %126 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @bitrev8(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %12, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  br label %138

132:                                              ; preds = %119
  %133 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %134 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %12, align 8
  store i32 %135, i32* %136, align 4
  br label %138

138:                                              ; preds = %132, %124
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %13, align 4
  br label %653

143:                                              ; preds = %114
  br label %144

144:                                              ; preds = %100, %143
  %145 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %146 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 8
  br i1 %148, label %149, label %168

149:                                              ; preds = %144
  %150 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %151 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %154 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 8, %155
  %157 = ashr i32 %152, %156
  %158 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %159 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 4
  %160 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %161 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %160, i32 0, i32 0
  store i32 133, i32* %161, align 8
  %162 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %163 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %162, i32 0, i32 5
  store i32 65535, i32* %163, align 4
  %164 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %165 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %164, i32 0, i32 10
  store i32 0, i32* %165, align 4
  %166 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %167 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %166, i32 0, i32 4
  store i32 1, i32* %167, align 8
  br label %168

168:                                              ; preds = %149, %144
  br label %653

169:                                              ; preds = %100
  %170 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %171 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %170, i32 0, i32 2
  store i32 0, i32* %171, align 8
  %172 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %173 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %177 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 8
  %180 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %181 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %180, i32 0, i32 10
  store i32 0, i32* %181, align 4
  %182 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %183 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %182, i32 0, i32 0
  store i32 139, i32* %183, align 8
  br label %653

184:                                              ; preds = %100
  %185 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %186 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %190 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 8
  %193 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %194 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %198 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %197, i32 0, i32 10
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = icmp eq i32 %200, 6
  br i1 %201, label %202, label %205

202:                                              ; preds = %184
  %203 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %204 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %203, i32 0, i32 0
  store i32 138, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %184
  br label %653

206:                                              ; preds = %100
  %207 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %208 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %207, i32 0, i32 8
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %212 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  %215 = load i32, i32* %10, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %206
  %218 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %219 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %218, i32 0, i32 0
  store i32 140, i32* %219, align 8
  br label %653

220:                                              ; preds = %206
  %221 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %222 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 8
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %227 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %226, i32 0, i32 0
  store i32 133, i32* %227, align 8
  %228 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %229 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %228, i32 0, i32 5
  store i32 65535, i32* %229, align 4
  %230 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %231 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %230, i32 0, i32 10
  store i32 0, i32* %231, align 4
  %232 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %233 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %232, i32 0, i32 4
  store i32 1, i32* %233, align 8
  br label %234

234:                                              ; preds = %225, %220
  br label %653

235:                                              ; preds = %100
  %236 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %237 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %236, i32 0, i32 4
  store i32 1, i32* %237, align 8
  %238 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %239 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %238, i32 0, i32 9
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 8
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %244 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %243, i32 0, i32 0
  store i32 133, i32* %244, align 8
  %245 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %246 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %245, i32 0, i32 5
  store i32 65535, i32* %246, align 4
  %247 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %248 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %247, i32 0, i32 10
  store i32 0, i32* %248, align 4
  br label %653

249:                                              ; preds = %235
  %250 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %251 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 4
  %253 = shl i32 %252, 1
  store i32 %253, i32* %251, align 4
  %254 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %255 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %254, i32 0, i32 9
  %256 = load i32, i32* %255, align 8
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 8
  %258 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %259 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, 1
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %249
  %264 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %265 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %263, %249
  %269 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %270 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %274 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %278 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %268
  %282 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %283 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %282, i32 0, i32 0
  store i32 133, i32* %283, align 8
  %284 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %285 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %284, i32 0, i32 5
  store i32 65535, i32* %285, align 4
  %286 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %287 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %286, i32 0, i32 10
  store i32 0, i32* %287, align 4
  br label %288

288:                                              ; preds = %281, %268
  br label %653

289:                                              ; preds = %100
  %290 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %291 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %290, i32 0, i32 8
  %292 = load i32, i32* %291, align 4
  %293 = shl i32 %292, 1
  store i32 %293, i32* %291, align 4
  %294 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %295 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 8
  %298 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %299 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %298, i32 0, i32 10
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 5
  br i1 %301, label %302, label %305

302:                                              ; preds = %289
  %303 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %304 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %303, i32 0, i32 10
  store i32 0, i32* %304, align 4
  br label %653

305:                                              ; preds = %289
  %306 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %307 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 8
  br i1 %309, label %310, label %320

310:                                              ; preds = %305
  %311 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %312 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %311, i32 0, i32 5
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %315 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @crc_ccitt_byte(i32 %313, i32 %316)
  %318 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %319 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %318, i32 0, i32 5
  store i32 %317, i32* %319, align 4
  br label %320

320:                                              ; preds = %310, %305
  %321 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %322 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, 1
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %343

326:                                              ; preds = %320
  %327 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %328 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  %331 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %332 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %332, align 4
  %335 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %336 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = ashr i32 %337, 1
  store i32 %338, i32* %336, align 4
  %339 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %340 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %340, align 4
  br label %354

343:                                              ; preds = %320
  %344 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %345 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %344, i32 0, i32 10
  store i32 0, i32* %345, align 4
  %346 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %347 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  %349 = ashr i32 %348, 1
  store i32 %349, i32* %347, align 4
  %350 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %351 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %343, %326
  br label %653

355:                                              ; preds = %100
  %356 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %357 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %356, i32 0, i32 8
  %358 = load i32, i32* %357, align 4
  %359 = shl i32 %358, 1
  store i32 %359, i32* %357, align 4
  %360 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %361 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %360, i32 0, i32 9
  %362 = load i32, i32* %361, align 8
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 8
  %364 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %365 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %364, i32 0, i32 10
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 5
  br i1 %367, label %368, label %371

368:                                              ; preds = %355
  %369 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %370 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %369, i32 0, i32 10
  store i32 0, i32* %370, align 4
  br label %653

371:                                              ; preds = %355
  %372 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %373 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, 1
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %394

377:                                              ; preds = %371
  %378 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %379 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %378, i32 0, i32 10
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 4
  %382 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %383 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %382, i32 0, i32 8
  %384 = load i32, i32* %383, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %383, align 4
  %386 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %387 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = ashr i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %391 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %392, -1
  store i32 %393, i32* %391, align 4
  br label %405

394:                                              ; preds = %371
  %395 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %396 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %395, i32 0, i32 10
  store i32 0, i32* %396, align 4
  %397 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %398 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = ashr i32 %399, 1
  store i32 %400, i32* %398, align 4
  %401 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %402 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, -1
  store i32 %404, i32* %402, align 4
  br label %405

405:                                              ; preds = %394, %377
  %406 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %407 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %405
  %411 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %412 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %411, i32 0, i32 5
  %413 = load i32, i32* %412, align 4
  %414 = ashr i32 %413, 8
  %415 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %416 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %415, i32 0, i32 3
  store i32 %414, i32* %416, align 4
  %417 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %418 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %417, i32 0, i32 0
  store i32 134, i32* %418, align 8
  %419 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %420 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %419, i32 0, i32 1
  store i32 8, i32* %420, align 4
  br label %421

421:                                              ; preds = %410, %405
  br label %653

422:                                              ; preds = %100
  %423 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %424 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %423, i32 0, i32 8
  %425 = load i32, i32* %424, align 4
  %426 = shl i32 %425, 1
  store i32 %426, i32* %424, align 4
  %427 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %428 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %427, i32 0, i32 9
  %429 = load i32, i32* %428, align 8
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %428, align 8
  %431 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %432 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %431, i32 0, i32 10
  %433 = load i32, i32* %432, align 4
  %434 = icmp eq i32 %433, 5
  br i1 %434, label %435, label %438

435:                                              ; preds = %422
  %436 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %437 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %436, i32 0, i32 10
  store i32 0, i32* %437, align 4
  br label %653

438:                                              ; preds = %422
  %439 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %440 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 4
  %442 = and i32 %441, 1
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %461

444:                                              ; preds = %438
  %445 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %446 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %445, i32 0, i32 10
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %446, align 4
  %449 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %450 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %449, i32 0, i32 8
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %450, align 4
  %453 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %454 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = ashr i32 %455, 1
  store i32 %456, i32* %454, align 4
  %457 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %458 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %459, -1
  store i32 %460, i32* %458, align 4
  br label %472

461:                                              ; preds = %438
  %462 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %463 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %462, i32 0, i32 10
  store i32 0, i32* %463, align 4
  %464 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %465 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %464, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = ashr i32 %466, 1
  store i32 %467, i32* %465, align 4
  %468 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %469 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = add nsw i32 %470, -1
  store i32 %471, i32* %469, align 4
  br label %472

472:                                              ; preds = %461, %444
  %473 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %474 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %484

477:                                              ; preds = %472
  %478 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %479 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %478, i32 0, i32 3
  store i32 126, i32* %479, align 4
  %480 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %481 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %480, i32 0, i32 0
  store i32 136, i32* %481, align 8
  %482 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %483 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %482, i32 0, i32 1
  store i32 8, i32* %483, align 4
  br label %484

484:                                              ; preds = %477, %472
  br label %653

485:                                              ; preds = %100
  %486 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %487 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %486, i32 0, i32 8
  %488 = load i32, i32* %487, align 4
  %489 = shl i32 %488, 1
  store i32 %489, i32* %487, align 4
  %490 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %491 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %490, i32 0, i32 9
  %492 = load i32, i32* %491, align 8
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %491, align 8
  %494 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %495 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %494, i32 0, i32 10
  %496 = load i32, i32* %495, align 4
  %497 = icmp eq i32 %496, 5
  br i1 %497, label %498, label %501

498:                                              ; preds = %485
  %499 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %500 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %499, i32 0, i32 10
  store i32 0, i32* %500, align 4
  br label %653

501:                                              ; preds = %485
  %502 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %503 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = and i32 %504, 1
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %501
  %508 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %509 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %508, i32 0, i32 8
  %510 = load i32, i32* %509, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %509, align 4
  br label %512

512:                                              ; preds = %507, %501
  %513 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %514 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = ashr i32 %515, 1
  store i32 %516, i32* %514, align 4
  %517 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %518 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = add nsw i32 %519, -1
  store i32 %520, i32* %518, align 4
  %521 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %522 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %579

525:                                              ; preds = %512
  %526 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %527 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %526, i32 0, i32 9
  %528 = load i32, i32* %527, align 8
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [9 x i8], [9 x i8]* @isdnhdlc_encode.xfast_flag_value, i64 0, i64 %529
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i32
  %533 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %534 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %533, i32 0, i32 7
  store i32 %532, i32* %534, align 8
  %535 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %536 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %535, i32 0, i32 12
  %537 = load i32, i32* %536, align 8
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %558

539:                                              ; preds = %525
  %540 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %541 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %540, i32 0, i32 7
  store i32 126, i32* %541, align 8
  %542 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %543 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %542, i32 0, i32 0
  store i32 129, i32* %543, align 8
  %544 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %545 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %544, i32 0, i32 9
  %546 = load i32, i32* %545, align 8
  %547 = sub nsw i32 8, %546
  %548 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %549 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %548, i32 0, i32 1
  store i32 %547, i32* %549, align 4
  %550 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %551 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %539
  %555 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %556 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %555, i32 0, i32 0
  store i32 131, i32* %556, align 8
  br label %557

557:                                              ; preds = %554, %539
  br label %578

558:                                              ; preds = %525
  %559 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %560 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %559, i32 0, i32 11
  %561 = load i64, i64* %560, align 8
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %568, label %563

563:                                              ; preds = %558
  %564 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %565 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %564, i32 0, i32 0
  store i32 132, i32* %565, align 8
  %566 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %567 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %566, i32 0, i32 4
  store i32 0, i32* %567, align 8
  br label %573

568:                                              ; preds = %558
  %569 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %570 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %569, i32 0, i32 0
  store i32 140, i32* %570, align 8
  %571 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %572 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %571, i32 0, i32 4
  store i32 0, i32* %572, align 8
  br label %573

573:                                              ; preds = %568, %563
  %574 = load i32, i32* %13, align 4
  %575 = icmp sgt i32 %574, 1
  br i1 %575, label %576, label %577

576:                                              ; preds = %573
  store i32 1, i32* %13, align 4
  br label %577

577:                                              ; preds = %576, %573
  br label %578

578:                                              ; preds = %577, %557
  br label %579

579:                                              ; preds = %578, %512
  br label %653

580:                                              ; preds = %100
  %581 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %582 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %581, i32 0, i32 2
  store i32 0, i32* %582, align 8
  %583 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %584 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %583, i32 0, i32 8
  %585 = load i32, i32* %584, align 4
  %586 = shl i32 %585, 1
  store i32 %586, i32* %584, align 4
  %587 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %588 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %587, i32 0, i32 8
  %589 = load i32, i32* %588, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %588, align 4
  %591 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %592 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %591, i32 0, i32 9
  %593 = load i32, i32* %592, align 8
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %592, align 8
  %595 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %596 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = add nsw i32 %597, -1
  store i32 %598, i32* %596, align 4
  %599 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %600 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %608

603:                                              ; preds = %580
  %604 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %605 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %604, i32 0, i32 0
  store i32 131, i32* %605, align 8
  %606 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %607 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %606, i32 0, i32 1
  store i32 0, i32* %607, align 4
  br label %608

608:                                              ; preds = %603, %580
  br label %653

609:                                              ; preds = %100
  %610 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %611 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %610, i32 0, i32 2
  store i32 0, i32* %611, align 8
  %612 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %613 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %612, i32 0, i32 8
  store i32 255, i32* %613, align 4
  %614 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %615 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %614, i32 0, i32 9
  store i32 8, i32* %615, align 8
  %616 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %617 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %616, i32 0, i32 1
  %618 = load i32, i32* %617, align 4
  %619 = icmp eq i32 %618, 8
  br i1 %619, label %620, label %625

620:                                              ; preds = %609
  %621 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %622 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %621, i32 0, i32 8
  store i32 126, i32* %622, align 4
  %623 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %624 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %623, i32 0, i32 0
  store i32 130, i32* %624, align 8
  br label %651

625:                                              ; preds = %609
  %626 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %627 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %626, i32 0, i32 6
  %628 = load i64, i64* %627, align 8
  %629 = icmp eq i64 %628, 0
  br i1 %629, label %630, label %638

630:                                              ; preds = %625
  %631 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %632 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %631, i32 0, i32 8
  %633 = load i32, i32* %632, align 4
  %634 = call i8* @bitrev8(i32 %633)
  %635 = ptrtoint i8* %634 to i32
  %636 = load i32*, i32** %12, align 8
  %637 = getelementptr inbounds i32, i32* %636, i32 1
  store i32* %637, i32** %12, align 8
  store i32 %635, i32* %636, align 4
  br label %644

638:                                              ; preds = %625
  %639 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %640 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %639, i32 0, i32 8
  %641 = load i32, i32* %640, align 4
  %642 = load i32*, i32** %12, align 8
  %643 = getelementptr inbounds i32, i32* %642, i32 1
  store i32* %643, i32** %12, align 8
  store i32 %641, i32* %642, align 4
  br label %644

644:                                              ; preds = %638, %630
  %645 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %646 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %645, i32 0, i32 1
  store i32 0, i32* %646, align 4
  %647 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %648 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %647, i32 0, i32 9
  store i32 0, i32* %648, align 8
  %649 = load i32, i32* %14, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %651

651:                                              ; preds = %644, %620
  br label %653

652:                                              ; preds = %100
  br label %653

653:                                              ; preds = %652, %651, %608, %579, %498, %484, %435, %421, %368, %354, %302, %288, %242, %234, %217, %205, %169, %168, %138
  %654 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %655 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %654, i32 0, i32 11
  %656 = load i64, i64* %655, align 8
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %658, label %677

658:                                              ; preds = %653
  %659 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %660 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %659, i32 0, i32 9
  %661 = load i32, i32* %660, align 8
  %662 = icmp eq i32 %661, 7
  br i1 %662, label %663, label %676

663:                                              ; preds = %658
  %664 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %665 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %664, i32 0, i32 8
  %666 = load i32, i32* %665, align 4
  %667 = shl i32 %666, 1
  store i32 %667, i32* %665, align 4
  %668 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %669 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %668, i32 0, i32 8
  %670 = load i32, i32* %669, align 4
  %671 = add nsw i32 %670, 1
  store i32 %671, i32* %669, align 4
  %672 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %673 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %672, i32 0, i32 9
  %674 = load i32, i32* %673, align 8
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %673, align 8
  br label %676

676:                                              ; preds = %663, %658
  br label %677

677:                                              ; preds = %676, %653
  %678 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %679 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %678, i32 0, i32 9
  %680 = load i32, i32* %679, align 8
  %681 = icmp eq i32 %680, 8
  br i1 %681, label %682, label %708

682:                                              ; preds = %677
  %683 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %684 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %683, i32 0, i32 6
  %685 = load i64, i64* %684, align 8
  %686 = icmp eq i64 %685, 0
  br i1 %686, label %687, label %695

687:                                              ; preds = %682
  %688 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %689 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %688, i32 0, i32 8
  %690 = load i32, i32* %689, align 4
  %691 = call i8* @bitrev8(i32 %690)
  %692 = ptrtoint i8* %691 to i32
  %693 = load i32*, i32** %12, align 8
  %694 = getelementptr inbounds i32, i32* %693, i32 1
  store i32* %694, i32** %12, align 8
  store i32 %692, i32* %693, align 4
  br label %701

695:                                              ; preds = %682
  %696 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %697 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %696, i32 0, i32 8
  %698 = load i32, i32* %697, align 4
  %699 = load i32*, i32** %12, align 8
  %700 = getelementptr inbounds i32, i32* %699, i32 1
  store i32* %700, i32** %12, align 8
  store i32 %698, i32* %699, align 4
  br label %701

701:                                              ; preds = %695, %687
  %702 = load %struct.isdnhdlc_vars*, %struct.isdnhdlc_vars** %8, align 8
  %703 = getelementptr inbounds %struct.isdnhdlc_vars, %struct.isdnhdlc_vars* %702, i32 0, i32 9
  store i32 0, i32* %703, align 8
  %704 = load i32, i32* %14, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %14, align 4
  %706 = load i32, i32* %13, align 4
  %707 = add nsw i32 %706, -1
  store i32 %707, i32* %13, align 4
  br label %708

708:                                              ; preds = %701, %677
  br label %28

709:                                              ; preds = %28
  %710 = load i32, i32* %10, align 4
  %711 = load i32*, i32** %11, align 8
  %712 = load i32, i32* %711, align 4
  %713 = sub nsw i32 %712, %710
  store i32 %713, i32* %711, align 4
  %714 = load i32, i32* %14, align 4
  store i32 %714, i32* %7, align 4
  br label %715

715:                                              ; preds = %709, %112
  %716 = load i32, i32* %7, align 4
  ret i32 %716
}

declare dso_local i8* @bitrev8(i32) #1

declare dso_local i32 @crc_ccitt_byte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

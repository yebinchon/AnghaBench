; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_test_proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_test_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@TEST_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: bpck: 0x%x unit %d mode %d: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32)* @bpck_test_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpck_test_proto(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @TEST_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %12, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %13, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i32 @bpck_force_spp(%struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %153 [
    i32 0, label %23
    i32 1, label %50
    i32 2, label %75
    i32 3, label %75
    i32 4, label %75
  ]

23:                                               ; preds = %3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @bpck_connect(%struct.TYPE_6__* %24)
  %26 = call i32 @WR(i32 19, i32 127)
  %27 = call i32 @w0(i32 19)
  %28 = call i32 @t2(i32 2)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %44, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TEST_LEN, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = call i32 @t2(i32 4)
  %35 = call i32 (...) @r1()
  store i32 %35, i32* %9, align 4
  %36 = call i32 @t2(i32 4)
  %37 = call i32 (...) @r1()
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call signext i8 @j44(i32 %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %17, i64 %42
  store i8 %40, i8* %43, align 1
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = call i32 @bpck_disconnect(%struct.TYPE_6__* %48)
  br label %153

50:                                               ; preds = %3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = call i32 @bpck_connect(%struct.TYPE_6__* %51)
  %53 = call i32 @WR(i32 19, i32 127)
  %54 = call i32 @w0(i32 19)
  %55 = call i32 @t2(i32 2)
  %56 = call i32 @t2(i32 32)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %67, %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @TEST_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = call i32 @t2(i32 4)
  %63 = call signext i8 (...) @r0()
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %17, i64 %65
  store i8 %63, i8* %66, align 1
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %57

70:                                               ; preds = %57
  %71 = call i32 @t2(i32 1)
  %72 = call i32 @t2(i32 32)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = call i32 @bpck_disconnect(%struct.TYPE_6__* %73)
  br label %153

75:                                               ; preds = %3, %3, %3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = call i32 @bpck_connect(%struct.TYPE_6__* %81)
  %83 = call i32 @WR(i32 7, i32 3)
  %84 = call i32 @WR(i32 4, i32 8)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %86 = call i32 @bpck_disconnect(%struct.TYPE_6__* %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = call i32 @bpck_connect(%struct.TYPE_6__* %90)
  %92 = call i32 @w0(i32 19)
  %93 = call i32 @w2(i32 9)
  %94 = call i32 @w2(i32 1)
  %95 = call i32 @w0(i32 0)
  %96 = call i32 @w2(i32 3)
  %97 = call i32 @w2(i32 0)
  %98 = call i32 @w2(i32 224)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  switch i32 %101, label %148 [
    i32 2, label %102
    i32 3, label %116
    i32 4, label %132
  ]

102:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %112, %102
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @TEST_LEN, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = call signext i8 (...) @r4()
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %17, i64 %110
  store i8 %108, i8* %111, align 1
  br label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %103

115:                                              ; preds = %103
  br label %148

116:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %117

117:                                              ; preds = %128, %116
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @TEST_LEN, align 4
  %120 = sdiv i32 %119, 2
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = call i32 (...) @r4w()
  %124 = bitcast i8* %17 to i32*
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %122
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %117

131:                                              ; preds = %117
  br label %148

132:                                              ; preds = %75
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @TEST_LEN, align 4
  %136 = sdiv i32 %135, 4
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = call i32 (...) @r4l()
  %140 = bitcast i8* %17 to i32*
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %133

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %75, %147, %131, %115
  %149 = call i32 @w2(i32 0)
  %150 = call i32 @WR(i32 7, i32 0)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = call i32 @bpck_disconnect(%struct.TYPE_6__* %151)
  br label %153

153:                                              ; preds = %3, %148, %70, %47
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %153
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %159, i32 %162, i32 %165, i32 %168)
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %181, %156
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @TEST_LEN, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %17, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %170

184:                                              ; preds = %170
  %185 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %153
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %204, %186
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @TEST_LEN, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %17, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  %199 = icmp ne i32 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %191
  %201 = load i32, i32* %8, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200, %191
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %187

207:                                              ; preds = %187
  %208 = load i32, i32* %8, align 4
  %209 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %209)
  ret i32 %208
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpck_force_spp(%struct.TYPE_6__*) #2

declare dso_local i32 @bpck_connect(%struct.TYPE_6__*) #2

declare dso_local i32 @WR(i32, i32) #2

declare dso_local i32 @w0(i32) #2

declare dso_local i32 @t2(i32) #2

declare dso_local i32 @r1(...) #2

declare dso_local signext i8 @j44(i32, i32) #2

declare dso_local i32 @bpck_disconnect(%struct.TYPE_6__*) #2

declare dso_local signext i8 @r0(...) #2

declare dso_local i32 @w2(i32) #2

declare dso_local signext i8 @r4(...) #2

declare dso_local i32 @r4w(...) #2

declare dso_local i32 @r4l(...) #2

declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

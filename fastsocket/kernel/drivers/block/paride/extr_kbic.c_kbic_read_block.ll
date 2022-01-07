; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_kbic.c_kbic_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_kbic.c_kbic_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @kbic_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kbic_read_block(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %215 [
    i32 0, label %13
    i32 1, label %55
    i32 2, label %110
    i32 3, label %142
    i32 4, label %165
    i32 5, label %190
  ]

13:                                               ; preds = %3
  %14 = call i32 @w0(i32 152)
  %15 = call i32 @w2(i32 4)
  %16 = call i32 @w2(i32 6)
  %17 = call i32 @w2(i32 4)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %51, %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = call i32 @w2(i32 1)
  %25 = call i32 @w0(i32 8)
  %26 = call i32 (...) @r1()
  store i32 %26, i32* %8, align 4
  %27 = call i32 @w0(i32 40)
  %28 = call i32 (...) @r1()
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call signext i8 @j44(i32 %29, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 %31, i8* %36, align 1
  %37 = call i32 @w2(i32 5)
  %38 = call i32 (...) @r1()
  store i32 %38, i32* %9, align 4
  %39 = call i32 @w0(i32 8)
  %40 = call i32 (...) @r1()
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call signext i8 @j44(i32 %41, i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %44, i64 %48
  store i8 %43, i8* %49, align 1
  %50 = call i32 @w2(i32 4)
  br label %51

51:                                               ; preds = %23
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %18

54:                                               ; preds = %18
  br label %215

55:                                               ; preds = %3
  %56 = call i32 @w0(i32 184)
  %57 = call i32 @w2(i32 4)
  %58 = call i32 @w2(i32 6)
  %59 = call i32 @w2(i32 4)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %105, %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %60
  %66 = call i32 @w0(i32 184)
  %67 = call i32 @w2(i32 4)
  %68 = call i32 @w2(i32 5)
  %69 = call i32 @w0(i32 8)
  %70 = call i32 (...) @r12w()
  %71 = call signext i8 @j53(i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 4, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8 %71, i8* %76, align 1
  %77 = call i32 @w0(i32 184)
  %78 = call i32 (...) @r12w()
  %79 = call signext i8 @j53(i32 %78)
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 4, %81
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 %79, i8* %85, align 1
  %86 = call i32 @w2(i32 4)
  %87 = call i32 @w2(i32 5)
  %88 = call i32 (...) @r12w()
  %89 = call signext i8 @j53(i32 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 4, %91
  %93 = add nsw i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %90, i64 %94
  store i8 %89, i8* %95, align 1
  %96 = call i32 @w0(i32 8)
  %97 = call i32 (...) @r12w()
  %98 = call signext i8 @j53(i32 %97)
  %99 = load i8*, i8** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 4, %100
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %99, i64 %103
  store i8 %98, i8* %104, align 1
  br label %105

105:                                              ; preds = %65
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %60

108:                                              ; preds = %60
  %109 = call i32 @w2(i32 4)
  br label %215

110:                                              ; preds = %3
  %111 = call i32 @w0(i32 136)
  %112 = call i32 @w2(i32 4)
  %113 = call i32 @w2(i32 6)
  %114 = call i32 @w2(i32 4)
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %137, %110
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sdiv i32 %117, 2
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = call i32 @w2(i32 160)
  %122 = call i32 @w2(i32 161)
  %123 = call signext i8 (...) @r0()
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 2, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  store i8 %123, i8* %128, align 1
  %129 = call i32 @w2(i32 165)
  %130 = call signext i8 (...) @r0()
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 2, %132
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  store i8 %130, i8* %136, align 1
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %115

140:                                              ; preds = %115
  %141 = call i32 @w2(i32 4)
  br label %215

142:                                              ; preds = %3
  %143 = call i32 @w0(i32 160)
  %144 = call i32 @w2(i32 4)
  %145 = call i32 @w2(i32 6)
  %146 = call i32 @w2(i32 4)
  %147 = call i32 @w3(i32 0)
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %158, %142
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = call signext i8 (...) @r4()
  %154 = load i8*, i8** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 %153, i8* %157, align 1
  br label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %148

161:                                              ; preds = %148
  %162 = call i32 @w2(i32 4)
  %163 = call i32 @w2(i32 0)
  %164 = call i32 @w2(i32 4)
  br label %215

165:                                              ; preds = %3
  %166 = call i32 @w0(i32 160)
  %167 = call i32 @w2(i32 4)
  %168 = call i32 @w2(i32 6)
  %169 = call i32 @w2(i32 4)
  %170 = call i32 @w3(i32 0)
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %183, %165
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sdiv i32 %173, 2
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = call i32 (...) @r4w()
  %178 = load i8*, i8** %5, align 8
  %179 = bitcast i8* %178 to i32*
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %177, i32* %182, align 4
  br label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %171

186:                                              ; preds = %171
  %187 = call i32 @w2(i32 4)
  %188 = call i32 @w2(i32 0)
  %189 = call i32 @w2(i32 4)
  br label %215

190:                                              ; preds = %3
  %191 = call i32 @w0(i32 160)
  %192 = call i32 @w2(i32 4)
  %193 = call i32 @w2(i32 6)
  %194 = call i32 @w2(i32 4)
  %195 = call i32 @w3(i32 0)
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %208, %190
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sdiv i32 %198, 4
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = call i32 (...) @r4l()
  %203 = load i8*, i8** %5, align 8
  %204 = bitcast i8* %203 to i32*
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %202, i32* %207, align 4
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %196

211:                                              ; preds = %196
  %212 = call i32 @w2(i32 4)
  %213 = call i32 @w2(i32 0)
  %214 = call i32 @w2(i32 4)
  br label %215

215:                                              ; preds = %3, %211, %186, %161, %140, %108, %54
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local signext i8 @j44(i32, i32) #1

declare dso_local signext i8 @j53(i32) #1

declare dso_local i32 @r12w(...) #1

declare dso_local signext i8 @r0(...) #1

declare dso_local i32 @w3(i32) #1

declare dso_local signext i8 @r4(...) #1

declare dso_local i32 @r4w(...) #1

declare dso_local i32 @r4l(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

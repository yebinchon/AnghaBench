; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpicoder.c_mpi_fromstr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/mpi/extr_mpicoder.c_mpi_fromstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@BYTES_PER_MPI_LIMB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpi_fromstr(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 48
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 120
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %40

37:                                               ; preds = %30, %25
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %212

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8* %42, i8** %5, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = mul nsw i32 %44, 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = urem i32 %46, 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %14, align 4
  %52 = add i32 %51, 7
  %53 = udiv i32 %52, 8
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %56 = add i32 %54, %55
  %57 = sub i32 %56, 1
  %58 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %50
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @mpi_resize(%struct.TYPE_5__* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %212

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %78 = urem i32 %76, %77
  %79 = sub i32 %75, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %81 = load i32, i32* %9, align 4
  %82 = urem i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  store i32 %83, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %208, %74
  %90 = load i32, i32* %10, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %211

92:                                               ; preds = %89
  store i32 0, i32* %17, align 4
  br label %93

93:                                               ; preds = %196, %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @BYTES_PER_MPI_LIMB, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %199

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 48, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %106

101:                                              ; preds = %97
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %5, align 8
  %104 = load i8, i8* %102, align 1
  %105 = sext i8 %104 to i32
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %101, %100
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @assert(i32 %107)
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  %111 = load i8, i8* %109, align 1
  %112 = sext i8 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @assert(i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = icmp sge i32 %115, 48
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load i32, i32* %12, align 4
  %119 = icmp sle i32 %118, 57
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %121, 48
  store i32 %122, i32* %11, align 4
  br label %148

123:                                              ; preds = %117, %106
  %124 = load i32, i32* %12, align 4
  %125 = icmp sge i32 %124, 97
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp sle i32 %127, 102
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %12, align 4
  %131 = sub nsw i32 %130, 97
  %132 = add nsw i32 %131, 10
  store i32 %132, i32* %11, align 4
  br label %147

133:                                              ; preds = %126, %123
  %134 = load i32, i32* %12, align 4
  %135 = icmp sge i32 %134, 65
  br i1 %135, label %136, label %143

136:                                              ; preds = %133
  %137 = load i32, i32* %12, align 4
  %138 = icmp sle i32 %137, 70
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, 65
  %142 = add nsw i32 %141, 10
  store i32 %142, i32* %11, align 4
  br label %146

143:                                              ; preds = %136, %133
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = call i32 @mpi_clear(%struct.TYPE_5__* %144)
  store i32 1, i32* %3, align 4
  br label %212

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %120
  %149 = load i32, i32* %11, align 4
  %150 = shl i32 %149, 4
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp sge i32 %151, 48
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load i32, i32* %13, align 4
  %155 = icmp sle i32 %154, 57
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = sub nsw i32 %157, 48
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %190

161:                                              ; preds = %153, %148
  %162 = load i32, i32* %13, align 4
  %163 = icmp sge i32 %162, 97
  br i1 %163, label %164, label %173

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = icmp sle i32 %165, 102
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = sub nsw i32 %168, 97
  %170 = add nsw i32 %169, 10
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %11, align 4
  br label %189

173:                                              ; preds = %164, %161
  %174 = load i32, i32* %13, align 4
  %175 = icmp sge i32 %174, 65
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = icmp sle i32 %177, 70
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = sub nsw i32 %180, 65
  %182 = add nsw i32 %181, 10
  %183 = load i32, i32* %11, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %11, align 4
  br label %188

185:                                              ; preds = %176, %173
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %187 = call i32 @mpi_clear(%struct.TYPE_5__* %186)
  store i32 1, i32* %3, align 4
  br label %212

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188, %167
  br label %190

190:                                              ; preds = %189, %156
  %191 = load i32, i32* %17, align 4
  %192 = shl i32 %191, 8
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %17, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %93

199:                                              ; preds = %93
  store i32 0, i32* %9, align 4
  %200 = load i32, i32* %17, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 %200, i32* %207, align 4
  br label %208

208:                                              ; preds = %199
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %10, align 4
  br label %89

211:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %185, %143, %70, %37
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mpi_resize(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mpi_clear(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

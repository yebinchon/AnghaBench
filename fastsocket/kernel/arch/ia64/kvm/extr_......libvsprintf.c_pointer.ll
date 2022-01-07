; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i32, i32, i32 }
%struct.va_format = type { i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pK-error\00", align 1
@kptr_restrict = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@ZEROPAD = common dso_local global i32 0, align 4
@SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i8*, i64, i32)* @pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pointer(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.printf_spec, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca { i64, i32 }, align 4
  %15 = alloca { i64, i32 }, align 4
  %16 = alloca { i64, i32 }, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  %19 = alloca { i64, i32 }, align 4
  %20 = alloca { i64, i32 }, align 4
  %21 = alloca { i64, i32 }, align 4
  %22 = alloca { i64, i32 }, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %4, i64* %24, align 4
  %25 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %5, i32* %25, align 4
  %26 = bitcast %struct.printf_spec* %8 to i8*
  %27 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %6
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 75
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = bitcast { i64, i32 }* %14 to i8*
  %39 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 12, i1 false)
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %41 = load i64, i64* %40, align 4
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @string(i8* %36, i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %43)
  store i8* %44, i8** %7, align 8
  br label %237

45:                                               ; preds = %30, %6
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %210 [
    i32 70, label %49
    i32 102, label %49
    i32 83, label %52
    i32 115, label %52
    i32 82, label %65
    i32 114, label %65
    i32 77, label %77
    i32 109, label %77
    i32 73, label %89
    i32 105, label %89
    i32 75, label %119
    i32 85, label %177
    i32 86, label %189
  ]

49:                                               ; preds = %45, %45
  %50 = load i8*, i8** %13, align 8
  %51 = call i8* @dereference_function_descriptor(i8* %50)
  store i8* %51, i8** %13, align 8
  br label %52

52:                                               ; preds = %45, %45, %49
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = bitcast { i64, i32 }* %15 to i8*
  %59 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %61 = load i64, i64* %60, align 4
  %62 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @symbol_string(i8* %53, i8* %54, i8* %55, i64 %61, i32 %63, i8 signext %57)
  store i8* %64, i8** %7, align 8
  br label %237

65:                                               ; preds = %45, %45
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = bitcast { i64, i32 }* %16 to i8*
  %71 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 12, i1 false)
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %73 = load i64, i64* %72, align 4
  %74 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @resource_string(i8* %66, i8* %67, i8* %68, i64 %73, i32 %75, i8* %69)
  store i8* %76, i8** %7, align 8
  br label %237

77:                                               ; preds = %45, %45
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast { i64, i32 }* %17 to i8*
  %83 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 12, i1 false)
  %84 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %85 = load i64, i64* %84, align 4
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @mac_address_string(i8* %78, i8* %79, i8* %80, i64 %85, i32 %87, i8* %81)
  store i8* %88, i8** %7, align 8
  br label %237

89:                                               ; preds = %45, %45
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %118 [
    i32 54, label %94
    i32 52, label %106
  ]

94:                                               ; preds = %89
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = bitcast { i64, i32 }* %18 to i8*
  %100 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %102 = load i64, i64* %101, align 4
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @ip6_addr_string(i8* %95, i8* %96, i8* %97, i64 %102, i32 %104, i8* %98)
  store i8* %105, i8** %7, align 8
  br label %237

106:                                              ; preds = %89
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = bitcast { i64, i32 }* %19 to i8*
  %112 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 12, i1 false)
  %113 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 0
  %114 = load i64, i64* %113, align 4
  %115 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %19, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @ip4_addr_string(i8* %107, i8* %108, i8* %109, i64 %114, i32 %116, i8* %110)
  store i8* %117, i8** %7, align 8
  br label %237

118:                                              ; preds = %89
  br label %210

119:                                              ; preds = %45
  %120 = call i32 (...) @in_irq()
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = call i32 (...) @in_softirq()
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = call i32 (...) @in_nmi()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %125, %122, %119
  %129 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 0
  store i32 16, i32* %133, align 4
  br label %134

134:                                              ; preds = %132, %128
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = bitcast { i64, i32 }* %20 to i8*
  %138 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 12, i1 false)
  %139 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 0
  %140 = load i64, i64* %139, align 4
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %20, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @string(i8* %135, i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %140, i32 %142)
  store i8* %143, i8** %7, align 8
  br label %237

144:                                              ; preds = %125
  %145 = load i32, i32* @kptr_restrict, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @kptr_restrict, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load i32, i32* @current, align 4
  %152 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %153 = call i32 @has_capability_noaudit(i32 %151, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150, %144
  br label %210

156:                                              ; preds = %150, %147
  br label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 0
  store i32 16, i32* %162, align 4
  %163 = load i32, i32* @ZEROPAD, align 4
  %164 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %163
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %157
  %168 = load i8*, i8** %11, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = bitcast { i64, i32 }* %21 to i8*
  %171 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 12, i1 false)
  %172 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 0
  %173 = load i64, i64* %172, align 4
  %174 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %21, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @number(i8* %168, i8* %169, i64 0, i64 %173, i32 %175)
  store i8* %176, i8** %7, align 8
  br label %237

177:                                              ; preds = %45
  %178 = load i8*, i8** %11, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = load i8*, i8** %13, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = bitcast { i64, i32 }* %22 to i8*
  %183 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %182, i8* align 4 %183, i64 12, i1 false)
  %184 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 0
  %185 = load i64, i64* %184, align 4
  %186 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %22, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @uuid_string(i8* %178, i8* %179, i8* %180, i64 %185, i32 %187, i8* %181)
  store i8* %188, i8** %7, align 8
  br label %237

189:                                              ; preds = %45
  %190 = load i8*, i8** %11, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = trunc i64 %196 to i32
  %198 = load i8*, i8** %13, align 8
  %199 = bitcast i8* %198 to %struct.va_format*
  %200 = getelementptr inbounds %struct.va_format, %struct.va_format* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = bitcast i8* %202 to %struct.va_format*
  %204 = getelementptr inbounds %struct.va_format, %struct.va_format* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @vsnprintf(i8* %191, i32 %197, i32 %201, i32 %206)
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %190, i64 %208
  store i8* %209, i8** %7, align 8
  br label %237

210:                                              ; preds = %45, %155, %118
  %211 = load i32, i32* @SMALL, align 4
  %212 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %211
  store i32 %214, i32* %212, align 4
  %215 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 0
  store i32 16, i32* %219, align 4
  %220 = load i32, i32* @ZEROPAD, align 4
  %221 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %220
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %218, %210
  %225 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %8, i32 0, i32 1
  store i32 16, i32* %225, align 4
  %226 = load i8*, i8** %11, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = load i8*, i8** %13, align 8
  %229 = ptrtoint i8* %228 to i64
  %230 = bitcast { i64, i32 }* %23 to i8*
  %231 = bitcast %struct.printf_spec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %230, i8* align 4 %231, i64 12, i1 false)
  %232 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %233 = load i64, i64* %232, align 4
  %234 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @number(i8* %226, i8* %227, i64 %229, i64 %233, i32 %235)
  store i8* %236, i8** %7, align 8
  br label %237

237:                                              ; preds = %224, %189, %177, %167, %134, %106, %94, %77, %65, %52, %35
  %238 = load i8*, i8** %7, align 8
  ret i8* %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @string(i8*, i8*, i8*, i64, i32) #2

declare dso_local i8* @dereference_function_descriptor(i8*) #2

declare dso_local i8* @symbol_string(i8*, i8*, i8*, i64, i32, i8 signext) #2

declare dso_local i8* @resource_string(i8*, i8*, i8*, i64, i32, i8*) #2

declare dso_local i8* @mac_address_string(i8*, i8*, i8*, i64, i32, i8*) #2

declare dso_local i8* @ip6_addr_string(i8*, i8*, i8*, i64, i32, i8*) #2

declare dso_local i8* @ip4_addr_string(i8*, i8*, i8*, i64, i32, i8*) #2

declare dso_local i32 @in_irq(...) #2

declare dso_local i32 @in_softirq(...) #2

declare dso_local i32 @in_nmi(...) #2

declare dso_local i32 @has_capability_noaudit(i32, i32) #2

declare dso_local i8* @number(i8*, i8*, i64, i64, i32) #2

declare dso_local i8* @uuid_string(i8*, i8*, i8*, i64, i32, i8*) #2

declare dso_local i32 @vsnprintf(i8*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

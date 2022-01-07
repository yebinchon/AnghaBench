; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_get_a_ctxt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_get_a_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.qib_user_info = type { i64 }
%struct.qib_devdata = type { i64, i64, i64, i64, i64* }

@ENXIO = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@QIB_PORT_ALG_ACROSS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.qib_user_info*, i32)* @get_a_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_a_ctxt(%struct.file* %0, %struct.qib_user_info* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.qib_user_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.qib_devdata*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.qib_devdata*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.qib_user_info* %1, %struct.qib_user_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.qib_devdata* null, %struct.qib_devdata** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.qib_user_info*, %struct.qib_user_info** %5, align 8
  %24 = getelementptr inbounds %struct.qib_user_info, %struct.qib_user_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %15, align 8
  %26 = call i32 @qib_count_units(i32* %10, i32* %11)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %200

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ENETDOWN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %200

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @QIB_PORT_ALG_ACROSS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %156

42:                                               ; preds = %38
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %143, %42
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %146

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  %49 = call %struct.qib_devdata* @qib_lookup(i32 %48)
  store %struct.qib_devdata* %49, %struct.qib_devdata** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %51 = icmp ne %struct.qib_devdata* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %143

53:                                               ; preds = %47
  %54 = load i64, i64* %15, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i64, i64* %15, align 8
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ule i64 %57, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = add i64 %65, %66
  %68 = sub i64 %67, 1
  %69 = call i64 @usable(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i32 1, i32* %21, align 4
  br label %97

72:                                               ; preds = %62, %56, %53
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %93, %72
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %83, %85
  %87 = call i64 @usable(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %21, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %21, align 4
  br label %92

92:                                               ; preds = %89, %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %73

96:                                               ; preds = %73
  br label %97

97:                                               ; preds = %96, %71
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  br label %143

101:                                              ; preds = %97
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %103 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %16, align 8
  br label %105

105:                                              ; preds = %126, %101
  %106 = load i64, i64* %16, align 8
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load i32, i32* %19, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %125

122:                                              ; preds = %111
  %123 = load i32, i32* %20, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %16, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %16, align 8
  br label %105

129:                                              ; preds = %105
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.qib_devdata*, %struct.qib_devdata** %18, align 8
  store %struct.qib_devdata* %140, %struct.qib_devdata** %7, align 8
  %141 = load i32, i32* %19, align 4
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %139, %135, %132, %129
  br label %143

143:                                              ; preds = %142, %100, %52
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %43

146:                                              ; preds = %43
  %147 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %148 = icmp ne %struct.qib_devdata* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load %struct.file*, %struct.file** %4, align 8
  %151 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %152 = load i64, i64* %15, align 8
  %153 = load %struct.qib_user_info*, %struct.qib_user_info** %5, align 8
  %154 = call i32 @choose_port_ctxt(%struct.file* %150, %struct.qib_devdata* %151, i64 %152, %struct.qib_user_info* %153)
  store i32 %154, i32* %8, align 4
  br label %200

155:                                              ; preds = %146
  br label %189

156:                                              ; preds = %38
  store i32 0, i32* %12, align 4
  br label %157

157:                                              ; preds = %185, %156
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %188

161:                                              ; preds = %157
  %162 = load i32, i32* %12, align 4
  %163 = call %struct.qib_devdata* @qib_lookup(i32 %162)
  store %struct.qib_devdata* %163, %struct.qib_devdata** %22, align 8
  %164 = load %struct.qib_devdata*, %struct.qib_devdata** %22, align 8
  %165 = icmp ne %struct.qib_devdata* %164, null
  br i1 %165, label %166, label %184

166:                                              ; preds = %161
  %167 = load %struct.file*, %struct.file** %4, align 8
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %22, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load %struct.qib_user_info*, %struct.qib_user_info** %5, align 8
  %171 = call i32 @choose_port_ctxt(%struct.file* %167, %struct.qib_devdata* %168, i64 %169, %struct.qib_user_info* %170)
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %166
  br label %200

175:                                              ; preds = %166
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @EBUSY, align 4
  %178 = sub nsw i32 0, %177
  %179 = icmp eq i32 %176, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %180, %175
  br label %184

184:                                              ; preds = %183, %161
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  br label %157

188:                                              ; preds = %157
  br label %189

189:                                              ; preds = %188, %155
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* @EBUSY, align 4
  %194 = sub nsw i32 0, %193
  br label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @ENETDOWN, align 4
  %197 = sub nsw i32 0, %196
  br label %198

198:                                              ; preds = %195, %192
  %199 = phi i32 [ %194, %192 ], [ %197, %195 ]
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %198, %174, %149, %35, %29
  %201 = load i32, i32* %8, align 4
  ret i32 %201
}

declare dso_local i32 @qib_count_units(i32*, i32*) #1

declare dso_local %struct.qib_devdata* @qib_lookup(i32) #1

declare dso_local i64 @usable(i64) #1

declare dso_local i32 @choose_port_ctxt(%struct.file*, %struct.qib_devdata*, i64, %struct.qib_user_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

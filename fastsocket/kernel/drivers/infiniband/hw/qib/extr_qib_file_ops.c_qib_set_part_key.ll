; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_set_part_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_file_ops.c_qib_set_part_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ctxtdata = type { i32*, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32, i32)* }

@QIB_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QIB_IB_CFG_PKEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ctxtdata*, i32)* @qib_set_part_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_set_part_key(%struct.qib_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.qib_ctxtdata* %0, %struct.qib_ctxtdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %12, i32 0, i32 1
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %13, align 8
  store %struct.qib_pportdata* %14, %struct.qib_pportdata** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 32767
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @QIB_DEFAULT_P_KEY, align 4
  %19 = and i32 %18, 32767
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %209

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  br label %209

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, 32768
  store i32 %30, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %66, %28
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %34 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %31
  %39 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %40 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %50, %47, %38
  %53 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %54 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @EEXIST, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %209

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %209

75:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %144, %75
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %79 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @ARRAY_SIZE(i32* %80)
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %147

83:                                               ; preds = %76
  %84 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %85 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %144

95:                                               ; preds = %83
  %96 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %97 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %95
  %106 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %107 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %11, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @atomic_inc_return(i32* %112)
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %118 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  store i32 0, i32* %10, align 4
  br label %209

123:                                              ; preds = %105
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @atomic_dec(i32* %124)
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %95
  %130 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %131 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 32767
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  %141 = load i32, i32* @EEXIST, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %10, align 4
  br label %209

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143, %92
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %76

147:                                              ; preds = %76
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* @EBUSY, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %10, align 4
  br label %209

153:                                              ; preds = %147
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %203, %153
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %157 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @ARRAY_SIZE(i32* %158)
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %161, label %206

161:                                              ; preds = %154
  %162 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %163 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %202, label %170

170:                                              ; preds = %161
  %171 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %172 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = call i32 @atomic_inc_return(i32* %176)
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %202

179:                                              ; preds = %170
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %3, align 8
  %182 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %189 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  store i32 %187, i32* %193, align 4
  %194 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %195 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32 (%struct.qib_pportdata*, i32, i32)*, i32 (%struct.qib_pportdata*, i32, i32)** %197, align 8
  %199 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %200 = load i32, i32* @QIB_IB_CFG_PKEYS, align 4
  %201 = call i32 %198(%struct.qib_pportdata* %199, i32 %200, i32 0)
  store i32 0, i32* %10, align 4
  br label %209

202:                                              ; preds = %170, %161
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %154

206:                                              ; preds = %154
  %207 = load i32, i32* @EBUSY, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %206, %179, %150, %140, %115, %72, %62, %25, %21
  %210 = load i32, i32* %10, align 4
  ret i32 %210
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

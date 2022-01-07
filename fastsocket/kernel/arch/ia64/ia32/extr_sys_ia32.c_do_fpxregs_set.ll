; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpxregs_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpxregs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_frame_info = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8 }
%struct.regset_getset = type { i64, i32, %struct.TYPE_7__, i8*, %struct.task_struct* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.task_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pt_regs = type { i32 }

@st_space = common dso_local global i32* null, align 8
@xmm_space = common dso_local global i32* null, align 8
@padding = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @do_fpxregs_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fpxregs_set(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regset_getset*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i32, align 4
  store %struct.unw_frame_info* %0, %struct.unw_frame_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.regset_getset*
  store %struct.regset_getset* %13, %struct.regset_getset** %5, align 8
  %14 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %15 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %14, i32 0, i32 4
  %16 = load %struct.task_struct*, %struct.task_struct** %15, align 8
  store %struct.task_struct* %16, %struct.task_struct** %6, align 8
  %17 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %18 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %23 = call i64 @unw_unwind_to_user(%struct.unw_frame_info* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %2
  br label %208

26:                                               ; preds = %21
  %27 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %28 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** @st_space, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OFFSET(i32 %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %26
  %36 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %37 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  %39 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %40 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %39, i32 0, i32 1
  %41 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %42 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %41, i32 0, i32 0
  %43 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %44 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %48 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %52 = load i32*, i32** @st_space, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @OFFSET(i32 %54)
  %56 = call i8* @user_regset_copyin(i32* %40, i64* %42, i32* %46, i32* %50, i8* %51, i32 0, i32 %55)
  %57 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %58 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %60 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %35
  br label %208

64:                                               ; preds = %35
  %65 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %68 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %71 = call i32 @setfpxreg(%struct.task_struct* %65, i32 %66, i32 %69, i8* %70)
  %72 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %73 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %208

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %26
  %79 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %80 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** @xmm_space, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @OFFSET(i32 %84)
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %171

87:                                               ; preds = %78
  %88 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %89 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %88)
  store %struct.pt_regs* %89, %struct.pt_regs** %10, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 11
  %95 = and i32 %94, 7
  store i32 %95, i32* %11, align 4
  %96 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %97 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** @st_space, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @OFFSET(i32 %101)
  %103 = sub nsw i32 %98, %102
  %104 = sdiv i32 %103, 16
  store i32 %104, i32* %8, align 4
  %105 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %106 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %105, i32 0, i32 1
  %107 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %108 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %107, i32 0, i32 0
  %109 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %110 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %114 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %118 = load i32*, i32** @st_space, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @OFFSET(i32 %120)
  %122 = load i32*, i32** @xmm_space, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @OFFSET(i32 %124)
  %126 = call i8* @user_regset_copyin(i32* %106, i64* %108, i32* %112, i32* %116, i8* %117, i32 %121, i32 %125)
  %127 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %128 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %127, i32 0, i32 3
  store i8* %126, i8** %128, align 8
  %129 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %130 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %129, i32 0, i32 3
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %87
  br label %208

134:                                              ; preds = %87
  %135 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %136 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** @st_space, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @OFFSET(i32 %140)
  %142 = sub nsw i32 %137, %141
  %143 = sdiv i32 %142, 16
  store i32 %143, i32* %9, align 4
  br label %144

144:                                              ; preds = %161, %134
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load i32, i32* %8, align 4
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 16, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %156 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %157 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @access_fpreg_ia32(i32 %149, i8* %154, %struct.pt_regs* %155, %struct.TYPE_8__* %158, i32 %159, i32 1)
  br label %161

161:                                              ; preds = %148
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %144

164:                                              ; preds = %144
  %165 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %166 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %208

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170, %78
  %172 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %173 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32*, i32** @padding, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @OFFSET(i32 %177)
  %179 = icmp slt i32 %174, %178
  br i1 %179, label %180, label %208

180:                                              ; preds = %171
  %181 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %182 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %181, i32 0, i32 1
  %183 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %184 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %183, i32 0, i32 0
  %185 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %186 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %190 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %194 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %193, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32*, i32** @xmm_space, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @OFFSET(i32 %199)
  %201 = load i32*, i32** @padding, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @OFFSET(i32 %203)
  %205 = call i8* @user_regset_copyin(i32* %182, i64* %184, i32* %188, i32* %192, i8* %196, i32 %200, i32 %204)
  %206 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %207 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %25, %63, %76, %133, %169, %180, %171
  ret void
}

declare dso_local i64 @unw_unwind_to_user(%struct.unw_frame_info*) #1

declare dso_local i32 @OFFSET(i32) #1

declare dso_local i8* @user_regset_copyin(i32*, i64*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @setfpxreg(%struct.task_struct*, i32, i32, i8*) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @access_fpreg_ia32(i32, i8*, %struct.pt_regs*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

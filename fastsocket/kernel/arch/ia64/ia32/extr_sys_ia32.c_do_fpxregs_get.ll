; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpxregs_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpxregs_get.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @do_fpxregs_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fpxregs_get(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regset_getset*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  br label %223

26:                                               ; preds = %21
  %27 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %28 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** @st_space, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @OFFSET(i32 %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %83

35:                                               ; preds = %26
  %36 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %37 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %41 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @min(i64 %43, i32 32)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %46 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %47 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %51 = call i32 @getfpxreg(%struct.task_struct* %45, i32 %48, i32 %49, i8* %50)
  %52 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %53 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %52, i32 0, i32 1
  %54 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %55 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %54, i32 0, i32 0
  %56 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %57 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %61 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %65 = load i32*, i32** @st_space, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OFFSET(i32 %67)
  %69 = call i8* @user_regset_copyout(i32* %53, i64* %55, i32* %59, i32* %63, i8* %64, i32 0, i32 %68)
  %70 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %71 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %73 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %35
  %77 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %78 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %35
  br label %223

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %26
  %84 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %85 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** @xmm_space, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @OFFSET(i32 %89)
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %186

92:                                               ; preds = %83
  %93 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %94 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %93)
  store %struct.pt_regs* %94, %struct.pt_regs** %7, align 8
  %95 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %96 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 11
  %100 = and i32 %99, 7
  store i32 %100, i32* %11, align 4
  %101 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %102 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %106 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load i32*, i32** @xmm_space, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @OFFSET(i32 %111)
  %113 = call i32 @min(i64 %108, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %115 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** @st_space, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @OFFSET(i32 %119)
  %121 = sub nsw i32 %116, %120
  %122 = sdiv i32 %121, 16
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32*, i32** @st_space, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @OFFSET(i32 %126)
  %128 = sub nsw i32 %123, %127
  %129 = sdiv i32 %128, 16
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %147, %92
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %150

134:                                              ; preds = %130
  %135 = load i32, i32* %9, align 4
  %136 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %137 = load i32, i32* %9, align 4
  %138 = mul nsw i32 16, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  %141 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %142 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %143 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @access_fpreg_ia32(i32 %135, i8* %140, %struct.pt_regs* %141, %struct.TYPE_8__* %144, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %134
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %130

150:                                              ; preds = %130
  %151 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %152 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %151, i32 0, i32 1
  %153 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %154 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %153, i32 0, i32 0
  %155 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %156 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %160 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %164 = load i32*, i32** @st_space, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @OFFSET(i32 %166)
  %168 = load i32*, i32** @xmm_space, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @OFFSET(i32 %170)
  %172 = call i8* @user_regset_copyout(i32* %152, i64* %154, i32* %158, i32* %162, i8* %163, i32 %167, i32 %171)
  %173 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %174 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %176 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %150
  %180 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %181 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179, %150
  br label %223

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %185, %83
  %187 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %188 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** @padding, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @OFFSET(i32 %192)
  %194 = icmp slt i32 %189, %193
  br i1 %194, label %195, label %223

195:                                              ; preds = %186
  %196 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %197 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %196, i32 0, i32 1
  %198 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %199 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %198, i32 0, i32 0
  %200 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %201 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %205 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %209 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32*, i32** @xmm_space, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @OFFSET(i32 %214)
  %216 = load i32*, i32** @padding, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @OFFSET(i32 %218)
  %220 = call i8* @user_regset_copyout(i32* %197, i64* %199, i32* %203, i32* %207, i8* %211, i32 %215, i32 %219)
  %221 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %222 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %221, i32 0, i32 3
  store i8* %220, i8** %222, align 8
  br label %223

223:                                              ; preds = %25, %81, %184, %195, %186
  ret void
}

declare dso_local i64 @unw_unwind_to_user(%struct.unw_frame_info*) #1

declare dso_local i32 @OFFSET(i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @getfpxreg(%struct.task_struct*, i32, i32, i8*) #1

declare dso_local i8* @user_regset_copyout(i32*, i64*, i32*, i32*, i8*, i32, i32) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @access_fpreg_ia32(i32, i8*, %struct.pt_regs*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

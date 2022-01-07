; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpregs_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpregs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_frame_info = type { i32 }
%struct.regset_getset = type { i64, i32, i8*, %struct.TYPE_6__, %struct.task_struct* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.task_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct._fpreg_ia32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @do_fpregs_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fpregs_get(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regset_getset*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [80 x i8], align 16
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
  br label %175

26:                                               ; preds = %21
  %27 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %28 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 28
  br i1 %31, label %32, label %91

32:                                               ; preds = %26
  %33 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %34 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %38 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @min(i64 %40, i32 28)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %43 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %58, %32
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = bitcast i8* %55 to i32*
  %57 = call i32 @getfpreg(%struct.task_struct* %50, i32 %51, i32* %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %65 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %64, i32 0, i32 1
  %66 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %67 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %66, i32 0, i32 0
  %68 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %69 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %73 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %77 = call i8* @user_regset_copyout(i32* %65, i64* %67, i32* %71, i32* %75, i8* %76, i32 0, i32 28)
  %78 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %79 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %81 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %63
  %85 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %86 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %63
  br label %175

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %26
  %92 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %93 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %95, 4
  br i1 %96, label %97, label %175

97:                                               ; preds = %91
  %98 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %99 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %98)
  store %struct.pt_regs* %99, %struct.pt_regs** %7, align 8
  %100 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 11
  %105 = and i32 %104, 7
  store i32 %105, i32* %10, align 4
  %106 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %107 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %111 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = call i32 @min(i64 %113, i32 4)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %116 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = sub i64 %118, 28
  %120 = udiv i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = sub i64 %123, 28
  %125 = udiv i64 %124, 4
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %144, %97
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %134 = bitcast i8* %133 to %struct._fpreg_ia32*
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct._fpreg_ia32, %struct._fpreg_ia32* %134, i64 %136
  %138 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %139 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %140 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @access_fpreg_ia32(i32 %132, %struct._fpreg_ia32* %137, %struct.pt_regs* %138, i32 %141, i32 %142, i32 0)
  br label %144

144:                                              ; preds = %131
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %127

147:                                              ; preds = %127
  %148 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %149 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %148, i32 0, i32 1
  %150 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %151 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %150, i32 0, i32 0
  %152 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %153 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %157 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %161 = call i8* @user_regset_copyout(i32* %149, i64* %151, i32* %155, i32* %159, i8* %160, i32 28, i32 4)
  %162 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %163 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %165 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %147
  %169 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %170 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %147
  br label %175

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %25, %89, %173, %174, %91
  ret void
}

declare dso_local i64 @unw_unwind_to_user(%struct.unw_frame_info*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @getfpreg(%struct.task_struct*, i32, i32*) #1

declare dso_local i8* @user_regset_copyout(i32*, i64*, i32*, i32*, i8*, i32, i32) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @access_fpreg_ia32(i32, %struct._fpreg_ia32*, %struct.pt_regs*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

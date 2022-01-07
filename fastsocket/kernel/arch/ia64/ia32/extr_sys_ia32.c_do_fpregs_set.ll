; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpregs_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_do_fpregs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_frame_info = type { i32 }
%struct.regset_getset = type { i64, i32, i8*, %struct.TYPE_5__, %struct.task_struct* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.task_struct = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pt_regs = type { i32 }
%struct._fpreg_ia32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @do_fpregs_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_fpregs_set(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.regset_getset*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca [80 x i8], align 16
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
  br label %164

26:                                               ; preds = %21
  %27 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %28 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 28
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %34 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  %36 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %37 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %36, i32 0, i32 1
  %38 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %39 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %38, i32 0, i32 0
  %40 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %41 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %45 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %49 = call i8* @user_regset_copyin(i32* %37, i64* %39, i32* %43, i32* %47, i8* %48, i32 0, i32 28)
  %50 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %51 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %53 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %32
  br label %164

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %61 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @setfpreg(%struct.task_struct* %65, i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 4
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %58

79:                                               ; preds = %58
  %80 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %81 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %164

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %26
  %87 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %88 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 4
  br i1 %91, label %92, label %164

92:                                               ; preds = %86
  %93 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %94 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 28
  %98 = udiv i64 %97, 4
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %101 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %100, i32 0, i32 1
  %102 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %103 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %102, i32 0, i32 0
  %104 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %105 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %109 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %113 = call i8* @user_regset_copyin(i32* %101, i64* %103, i32* %107, i32* %111, i8* %112, i32 28, i32 4)
  %114 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %115 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %117 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %92
  br label %164

121:                                              ; preds = %92
  %122 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %123 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %122)
  store %struct.pt_regs* %123, %struct.pt_regs** %7, align 8
  %124 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %125 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 11
  %129 = and i32 %128, 7
  store i32 %129, i32* %11, align 4
  %130 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %131 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = sub i64 %133, 28
  %135 = udiv i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %154, %121
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load i32, i32* %10, align 4
  %143 = getelementptr inbounds [80 x i8], [80 x i8]* %8, i64 0, i64 0
  %144 = bitcast i8* %143 to %struct._fpreg_ia32*
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct._fpreg_ia32, %struct._fpreg_ia32* %144, i64 %146
  %148 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %149 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %150 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @access_fpreg_ia32(i32 %142, %struct._fpreg_ia32* %147, %struct.pt_regs* %148, i32 %151, i32 %152, i32 1)
  br label %154

154:                                              ; preds = %141
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %137

157:                                              ; preds = %137
  %158 = load %struct.regset_getset*, %struct.regset_getset** %5, align 8
  %159 = getelementptr inbounds %struct.regset_getset, %struct.regset_getset* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %164

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %25, %56, %84, %120, %162, %163, %86
  ret void
}

declare dso_local i64 @unw_unwind_to_user(%struct.unw_frame_info*) #1

declare dso_local i8* @user_regset_copyin(i32*, i64*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @setfpreg(%struct.task_struct*, i32, i32) #1

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @access_fpreg_ia32(i32, %struct._fpreg_ia32*, %struct.pt_regs*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

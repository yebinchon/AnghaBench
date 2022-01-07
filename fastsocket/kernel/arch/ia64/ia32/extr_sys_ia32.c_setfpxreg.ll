; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_setfpxreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_setfpxreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@fop = common dso_local global i32 0, align 4
@cwd = common dso_local global i32 0, align 4
@swd = common dso_local global i32 0, align 4
@twd = common dso_local global i32 0, align 4
@fip = common dso_local global i32 0, align 4
@foo = common dso_local global i32 0, align 4
@mxcsr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, i32, i8*)* @setfpxreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfpxreg(%struct.task_struct* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @fop, align 4
  %15 = call i32 @OFFSET(i32 %14)
  %16 = call i32 @min(i32 %13, i32 %15)
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %79, %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i16*
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %11, align 2
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @cwd, align 4
  %27 = call i32 @OFFSET(i32 %26)
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -8000
  %35 = load i16, i16* %11, align 2
  %36 = sext i16 %35 to i32
  %37 = and i32 %36, 7999
  %38 = or i32 %34, %37
  %39 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %79

42:                                               ; preds = %21
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @swd, align 4
  %45 = call i32 @OFFSET(i32 %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -65536
  %53 = load i16, i16* %11, align 2
  %54 = sext i16 %53 to i32
  %55 = or i32 %52, %54
  %56 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  br label %78

59:                                               ; preds = %42
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @twd, align 4
  %62 = call i32 @OFFSET(i32 %61)
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 65535
  %70 = load i16, i16* %11, align 2
  %71 = sext i16 %70 to i32
  %72 = shl i32 %71, 16
  %73 = or i32 %69, %72
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %64, %59
  br label %78

78:                                               ; preds = %77, %47
  br label %79

79:                                               ; preds = %78, %29
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %8, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 2
  store i32 %83, i32* %6, align 4
  br label %17

84:                                               ; preds = %17
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @fop, align 4
  %87 = call i32 @OFFSET(i32 %86)
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %6, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %8, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %174, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %179

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @fip, align 4
  %105 = call i32 @OFFSET(i32 %104)
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %109 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 0
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %116 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  br label %174

118:                                              ; preds = %99
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @foo, align 4
  %121 = call i32 @OFFSET(i32 %120)
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %125 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 0
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %132 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  store i32 %130, i32* %133, align 4
  br label %173

134:                                              ; preds = %118
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @mxcsr, align 4
  %137 = call i32 @OFFSET(i32 %136)
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %172

139:                                              ; preds = %134
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 65296
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %12, align 8
  %143 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %144 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = and i64 %147, -280444184559617
  %149 = load i64, i64* %12, align 8
  %150 = shl i64 %149, 32
  %151 = or i64 %148, %150
  %152 = trunc i64 %151 to i32
  %153 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %154 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, 63
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %12, align 8
  %159 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %160 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = and i64 %163, -270582939649
  %165 = load i64, i64* %12, align 8
  %166 = shl i64 %165, 32
  %167 = or i64 %164, %166
  %168 = trunc i64 %167 to i32
  %169 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %170 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %139, %134
  br label %173

173:                                              ; preds = %172, %123
  br label %174

174:                                              ; preds = %173, %107
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 4
  store i8* %176, i8** %8, align 8
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 4
  store i32 %178, i32* %6, align 4
  br label %95

179:                                              ; preds = %95
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

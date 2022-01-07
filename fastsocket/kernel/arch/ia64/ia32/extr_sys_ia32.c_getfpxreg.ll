; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_getfpxreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/ia32/extr_sys_ia32.c_getfpxreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@fop = common dso_local global i32 0, align 4
@cwd = common dso_local global i32 0, align 4
@swd = common dso_local global i32 0, align 4
@twd = common dso_local global i32 0, align 4
@fip = common dso_local global i32 0, align 4
@fcs = common dso_local global i32 0, align 4
@foo = common dso_local global i32 0, align 4
@fos = common dso_local global i32 0, align 4
@mxcsr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, i32, i8*)* @getfpxreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getfpxreg(%struct.task_struct* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @fop, align 4
  %12 = call i32 @OFFSET(i32 %11)
  %13 = call i32 @min(i32 %10, i32 %12)
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %63, %4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %68

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @cwd, align 4
  %21 = call i32 @OFFSET(i32 %20)
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 65535
  %29 = trunc i32 %28 to i16
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to i16*
  store i16 %29, i16* %31, align 2
  br label %63

32:                                               ; preds = %18
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @swd, align 4
  %35 = call i32 @OFFSET(i32 %34)
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %39 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 65535
  %43 = trunc i32 %42 to i16
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to i16*
  store i16 %43, i16* %45, align 2
  br label %62

46:                                               ; preds = %32
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @twd, align 4
  %49 = call i32 @OFFSET(i32 %48)
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 65535
  %58 = trunc i32 %57 to i16
  %59 = load i8*, i8** %8, align 8
  %60 = bitcast i8* %59 to i16*
  store i16 %58, i16* %60, align 2
  br label %61

61:                                               ; preds = %51, %46
  br label %62

62:                                               ; preds = %61, %37
  br label %63

63:                                               ; preds = %62, %23
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  store i8* %65, i8** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %6, align 4
  br label %14

68:                                               ; preds = %14
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @fop, align 4
  %71 = call i32 @OFFSET(i32 %70)
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %6, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %160, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %165

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @fip, align 4
  %86 = call i32 @OFFSET(i32 %85)
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = bitcast i8* %93 to i32*
  store i32 %92, i32* %94, align 4
  br label %160

95:                                               ; preds = %83
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @fcs, align 4
  %98 = call i32 @OFFSET(i32 %97)
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 32
  %106 = and i32 %105, 65535
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to i32*
  store i32 %106, i32* %108, align 4
  br label %159

109:                                              ; preds = %95
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @foo, align 4
  %112 = call i32 @OFFSET(i32 %111)
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %116 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = bitcast i8* %119 to i32*
  store i32 %118, i32* %120, align 4
  br label %158

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @fos, align 4
  %124 = call i32 @OFFSET(i32 %123)
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %128 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 32
  %132 = and i32 %131, 65535
  %133 = load i8*, i8** %8, align 8
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 4
  br label %157

135:                                              ; preds = %121
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @mxcsr, align 4
  %138 = call i32 @OFFSET(i32 %137)
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %135
  %141 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %142 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 32
  %146 = and i32 %145, 65408
  %147 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %148 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 32
  %152 = and i32 %151, 63
  %153 = or i32 %146, %152
  %154 = load i8*, i8** %8, align 8
  %155 = bitcast i8* %154 to i32*
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %140, %135
  br label %157

157:                                              ; preds = %156, %126
  br label %158

158:                                              ; preds = %157, %114
  br label %159

159:                                              ; preds = %158, %100
  br label %160

160:                                              ; preds = %159, %88
  %161 = load i8*, i8** %8, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 4
  store i8* %162, i8** %8, align 8
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 4
  store i32 %164, i32* %6, align 4
  br label %79

165:                                              ; preds = %79
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

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_signal.c_flush_window_regs_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/kernel/extr_signal.c_flush_window_regs_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32, i32* }

@XCHAL_NUM_AREGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flush_window_regs_user(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %176

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = lshr i64 %24, %25
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* @XCHAL_NUM_AREGS, align 4
  %29 = sdiv i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %30, %31
  %33 = shl i64 %27, %32
  %34 = or i64 %26, %33
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* @XCHAL_NUM_AREGS, align 4
  %36 = sdiv i32 %35, 4
  %37 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %38 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 4
  %41 = sub nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %23
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %50 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 12
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i64 @__get_user(i64 %48, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %174

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %23
  br label %66

66:                                               ; preds = %151, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @XCHAL_NUM_AREGS, align 4
  %69 = sdiv i32 %68, 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %165

71:                                               ; preds = %66
  %72 = load i64, i64* %7, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = lshr i64 %72, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 2
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 1, i32* %11, align 4
  br label %123

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %86, 32
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %90 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  %94 = mul nsw i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = call i64 @copy_to_user(i8* %88, i32* %96, i32 16)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %85
  br label %174

100:                                              ; preds = %85
  store i32 2, i32* %11, align 4
  br label %122

101:                                              ; preds = %81
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i64, i64* %6, align 8
  %107 = sub i64 %106, 48
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %110 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = mul nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = call i64 @copy_to_user(i8* %108, i32* %116, i32 32)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %105
  br label %174

120:                                              ; preds = %105
  store i32 3, i32* %11, align 4
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %80
  %124 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %125 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %127, %128
  %130 = mul nsw i32 %129, 4
  %131 = add nsw i32 %130, 1
  %132 = load i32, i32* @XCHAL_NUM_AREGS, align 4
  %133 = srem i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %126, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %6, align 8
  %138 = load i64, i64* %6, align 8
  %139 = sub i64 %138, 16
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %142 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 %144, 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = call i64 @copy_to_user(i8* %140, i32* %147, i32 16)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %123
  br label %174

151:                                              ; preds = %123
  %152 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %153 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = mul nsw i32 %155, 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %154, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %6, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %9, align 4
  br label %66

165:                                              ; preds = %66
  %166 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %167 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %166, i32 0, i32 2
  store i32 1, i32* %167, align 8
  %168 = load i64, i64* %5, align 8
  %169 = trunc i64 %168 to i32
  %170 = shl i32 1, %169
  %171 = sext i32 %170 to i64
  %172 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %173 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  store i32 0, i32* %2, align 4
  br label %176

174:                                              ; preds = %150, %119, %99, %63
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %165, %22
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @__get_user(i64, i32*) #1

declare dso_local i64 @copy_to_user(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

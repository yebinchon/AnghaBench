; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_arbiter.c_crisv32_arbiter_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/mach-fs/extr_arbiter.c_crisv32_arbiter_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBR_OF_SLOTS = common dso_local global i32 0, align 4
@NBR_OF_CLIENTS = common dso_local global i32 0, align 4
@requested_slots = common dso_local global i32** null, align 8
@active_clients = common dso_local global i32** null, align 8
@EXT_REGION = common dso_local global i32 0, align 4
@marb = common dso_local global i32 0, align 4
@regi_marb = common dso_local global i32 0, align 4
@rw_ext_slots = common dso_local global i32 0, align 4
@INT_REGION = common dso_local global i32 0, align 4
@rw_int_slots = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @crisv32_arbiter_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crisv32_arbiter_config(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @NBR_OF_SLOTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %24, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NBR_OF_SLOTS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %15, i64 %22
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %16

27:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %98, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NBR_OF_CLIENTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %101

32:                                               ; preds = %28
  %33 = load i32**, i32*** @requested_slots, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %32
  %44 = load i32**, i32*** @active_clients, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %43
  br label %98

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @NBR_OF_SLOTS, align 4
  store i32 %61, i32* %7, align 4
  br label %74

62:                                               ; preds = %32
  %63 = load i32, i32* @NBR_OF_SLOTS, align 4
  %64 = load i32**, i32*** @requested_slots, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %63, %72
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %62, %58
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %96, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @NBR_OF_SLOTS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %15, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %96

88:                                               ; preds = %79
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %15, i64 %91
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %88, %85
  br label %75

97:                                               ; preds = %75
  br label %98

98:                                               ; preds = %97, %57
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %28

101:                                              ; preds = %28
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %175, %101
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @NBR_OF_SLOTS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %178

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %15, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %135, %112
  %115 = load i32**, i32*** @active_clients, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  br i1 %125, label %126, label %136

126:                                              ; preds = %114
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* @NBR_OF_CLIENTS, align 4
  %130 = srem i32 %128, %129
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %136

135:                                              ; preds = %126
  br label %114

136:                                              ; preds = %134, %114
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %15, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* @NBR_OF_CLIENTS, align 4
  %144 = srem i32 %142, %143
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %136, %106
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @EXT_REGION, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = load i32, i32* @marb, align 4
  %151 = load i32, i32* @regi_marb, align 4
  %152 = load i32, i32* @rw_ext_slots, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %15, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @REG_WR_INT_VECT(i32 %150, i32 %151, i32 %152, i32 %153, i32 %157)
  br label %174

159:                                              ; preds = %145
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @INT_REGION, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load i32, i32* @marb, align 4
  %165 = load i32, i32* @regi_marb, align 4
  %166 = load i32, i32* @rw_int_slots, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %15, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @REG_WR_INT_VECT(i32 %164, i32 %165, i32 %166, i32 %167, i32 %171)
  br label %173

173:                                              ; preds = %163, %159
  br label %174

174:                                              ; preds = %173, %149
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %102

178:                                              ; preds = %102
  %179 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %179)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @REG_WR_INT_VECT(i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

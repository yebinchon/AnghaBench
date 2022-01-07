; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_print_binder_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_print_binder_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_stats = type { i32*, i32*, i32*, i32* }

@binder_command_strings = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s%s: %d\0A\00", align 1
@binder_return_strings = common dso_local global i32* null, align 8
@binder_objstat_strings = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s%s: active %d total %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, %struct.binder_stats*)* @print_binder_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_binder_stats(i8* %0, i8* %1, i8* %2, %struct.binder_stats* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.binder_stats*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.binder_stats* %3, %struct.binder_stats** %9, align 8
  %11 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %12 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = load i32*, i32** @binder_command_strings, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp ne i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %68, %4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %23 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %20
  %28 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %29 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** @binder_command_strings, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %51 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, i8*, i8*, i32, i32, ...) @snprintf(i8* %37, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %49, i32 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %6, align 8
  br label %61

61:                                               ; preds = %36, %27
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp uge i8* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %5, align 8
  br label %230

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %73 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = load i32*, i32** @binder_return_strings, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = icmp ne i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUILD_BUG_ON(i32 %79)
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %129, %71
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %84 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @ARRAY_SIZE(i32* %85)
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %81
  %89 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %90 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %88
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %8, align 8
  %106 = load i32*, i32** @binder_return_strings, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %112 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, i32, i8*, i8*, i32, i32, ...) @snprintf(i8* %98, i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %105, i32 %110, i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %6, align 8
  br label %122

122:                                              ; preds = %97, %88
  %123 = load i8*, i8** %6, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = icmp uge i8* %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i8*, i8** %6, align 8
  store i8* %127, i8** %5, align 8
  br label %230

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %81

132:                                              ; preds = %81
  %133 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %134 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @ARRAY_SIZE(i32* %135)
  %137 = load i32*, i32** @binder_objstat_strings, align 8
  %138 = call i32 @ARRAY_SIZE(i32* %137)
  %139 = icmp ne i32 %136, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @BUILD_BUG_ON(i32 %140)
  %142 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %143 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ARRAY_SIZE(i32* %144)
  %146 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %147 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @ARRAY_SIZE(i32* %148)
  %150 = icmp ne i32 %145, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUILD_BUG_ON(i32 %151)
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %225, %132
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %156 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @ARRAY_SIZE(i32* %157)
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %228

160:                                              ; preds = %153
  %161 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %162 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %160
  %170 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %171 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %218

178:                                              ; preds = %169, %160
  %179 = load i8*, i8** %6, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = load i8*, i8** %8, align 8
  %187 = load i32*, i32** @binder_objstat_strings, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %193 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %200 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %198, %205
  %207 = load %struct.binder_stats*, %struct.binder_stats** %9, align 8
  %208 = getelementptr inbounds %struct.binder_stats, %struct.binder_stats* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, i32, i8*, i8*, i32, i32, ...) @snprintf(i8* %179, i32 %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %186, i32 %191, i32 %206, i32 %213)
  %215 = load i8*, i8** %6, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i8, i8* %215, i64 %216
  store i8* %217, i8** %6, align 8
  br label %218

218:                                              ; preds = %178, %169
  %219 = load i8*, i8** %6, align 8
  %220 = load i8*, i8** %7, align 8
  %221 = icmp uge i8* %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i8*, i8** %6, align 8
  store i8* %223, i8** %5, align 8
  br label %230

224:                                              ; preds = %218
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %153

228:                                              ; preds = %153
  %229 = load i8*, i8** %6, align 8
  store i8* %229, i8** %5, align 8
  br label %230

230:                                              ; preds = %228, %222, %126, %65
  %231 = load i8*, i8** %5, align 8
  ret i8* %231
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

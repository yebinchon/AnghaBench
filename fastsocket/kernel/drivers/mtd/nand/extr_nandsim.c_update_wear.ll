; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_update_wear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_update_wear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@erase_block_wear = common dso_local global i32* null, align 8
@total_wear = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Erase counter total overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Erase counter overflow for erase block %u\0A\00", align 1
@rptwear_cnt = common dso_local global i64 0, align 8
@rptwear = common dso_local global i64 0, align 8
@wear_eb_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"*** Wear Report ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Total numbers of erases:  %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Number of erase blocks:   %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Average number of erases: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Maximum number of erases: %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Minimum number of erases: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Number of ebs with erase counts from %lu to %lu : %lu\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"*** End of Wear Report ***\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_wear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wear(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [10 x i64], align 16
  %7 = alloca [10 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 -1, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32*, i32** @erase_block_wear, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %192

17:                                               ; preds = %1
  %18 = load i64, i64* @total_wear, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @total_wear, align 8
  %20 = load i64, i64* @total_wear, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32*, i32** @erase_block_wear, align 8
  %26 = load i32, i32* %2, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32*, i32** @erase_block_wear, align 8
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i8*, ...) @NS_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i64, i64* @rptwear_cnt, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* @rptwear_cnt, align 8
  %43 = load i64, i64* @rptwear_cnt, align 8
  %44 = load i64, i64* @rptwear, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %192

47:                                               ; preds = %40
  store i64 0, i64* @rptwear_cnt, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @wear_eb_count, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %77

52:                                               ; preds = %48
  %53 = load i32*, i32** @erase_block_wear, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i64, i64* %10, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %62, %52
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %48

77:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %9, align 4
  %80 = icmp ult i32 %79, 9
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 %83
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  %88 = zext i32 %87 to i64
  %89 = mul i64 %85, %88
  %90 = add i64 %89, 5
  %91 = udiv i64 %90, 10
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %93
  store i64 %91, i64* %94, align 8
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %78

98:                                               ; preds = %78
  %99 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 9
  store i64 0, i64* %99, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 9
  store i64 %100, i64* %101, align 8
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %134, %98
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @wear_eb_count, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %137

106:                                              ; preds = %102
  %107 = load i32*, i32** @erase_block_wear, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %130, %106
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load i64, i64* %12, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ule i64 %117, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %133

129:                                              ; preds = %116
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %113

133:                                              ; preds = %123, %113
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %9, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %102

137:                                              ; preds = %102
  %138 = load i64, i64* %8, align 8
  %139 = load i32, i32* @wear_eb_count, align 4
  %140 = zext i32 %139 to i64
  %141 = udiv i64 %138, %140
  store i64 %141, i64* %5, align 8
  %142 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i64, i64* %8, align 8
  %144 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* @wear_eb_count, align 4
  %146 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i64, i64* %5, align 8
  %148 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %147)
  %149 = load i64, i64* %4, align 8
  %150 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %149)
  %151 = load i64, i64* %3, align 8
  %152 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %151)
  store i32 0, i32* %9, align 4
  br label %153

153:                                              ; preds = %187, %137
  %154 = load i32, i32* %9, align 4
  %155 = icmp ult i32 %154, 10
  br i1 %155, label %156, label %190

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* %9, align 4
  %161 = sub i32 %160, 1
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  br label %167

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %159
  %168 = phi i64 [ %165, %159 ], [ 0, %166 ]
  store i64 %168, i64* %13, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i32, i32* %9, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp ugt i64 %169, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %187

176:                                              ; preds = %167
  %177 = load i64, i64* %13, align 8
  %178 = load i32, i32* %9, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [10 x i64], [10 x i64]* %6, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i64 %177, i64 %181, i64 %185)
  br label %187

187:                                              ; preds = %176, %175
  %188 = load i32, i32* %9, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %153

190:                                              ; preds = %153
  %191 = call i32 (i8*, ...) @NS_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %46, %16
  ret void
}

declare dso_local i32 @NS_ERR(i8*, ...) #1

declare dso_local i32 @NS_INFO(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

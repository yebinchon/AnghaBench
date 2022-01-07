; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000_read_pba_string_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_nvm.c_e1000_read_pba_string_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"PBA string buffer was null\0A\00", align 1
@E1000_ERR_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@NVM_PBA_OFFSET_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@NVM_PBA_OFFSET_1 = common dso_local global i32 0, align 4
@NVM_PBA_PTR_GUARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"NVM PBA number is not stored as string\0A\00", align 1
@E1000_PBANUM_LENGTH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"PBA string buffer too small\0A\00", align 1
@E1000_ERR_NO_SPACE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"NVM PBA number section invalid length\0A\00", align 1
@E1000_ERR_NVM_PBA_SECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_read_pba_string_generic(%struct.e1000_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @E1000_ERR_INVALID_ARGUMENT, align 8
  %18 = sub nsw i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %206

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = load i32, i32* @NVM_PBA_OFFSET_0, align 4
  %22 = call i64 @e1000_read_nvm(%struct.e1000_hw* %20, i32 %21, i32 1, i32* %9)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %206

28:                                               ; preds = %19
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %30 = load i32, i32* @NVM_PBA_OFFSET_1, align 4
  %31 = call i64 @e1000_read_nvm(%struct.e1000_hw* %29, i32 %30, i32 1, i32* %10)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %4, align 8
  br label %206

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @NVM_PBA_PTR_GUARD, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %131

41:                                               ; preds = %37
  %42 = call i32 @e_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @E1000_PBANUM_LENGTH, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i64, i64* @E1000_ERR_NO_SPACE, align 8
  store i64 %48, i64* %4, align 8
  br label %206

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 12
  %52 = and i32 %51, 15
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 15
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 15
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 12
  %71 = and i32 %70, 15
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 8
  %76 = and i32 %75, 15
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 6
  store i32 45, i32* %80, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 4
  %85 = and i32 %84, 15
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 15
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 9
  store i32 %89, i32* %91, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 10
  store i32 0, i32* %93, align 4
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %127, %49
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 10
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %102, 10
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 48
  store i32 %110, i32* %108, align 4
  br label %126

111:                                              ; preds = %97
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 16
  br i1 %117, label %118, label %125

118:                                              ; preds = %111
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 55
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %118, %111
  br label %126

126:                                              ; preds = %125, %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %94

130:                                              ; preds = %94
  store i64 0, i64* %4, align 8
  br label %206

131:                                              ; preds = %37
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @e1000_read_nvm(%struct.e1000_hw* %132, i32 %133, i32 1, i32* %12)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %139 = load i64, i64* %8, align 8
  store i64 %139, i64* %4, align 8
  br label %206

140:                                              ; preds = %131
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 65535
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143, %140
  %147 = call i32 @e_dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %148 = load i64, i64* @E1000_ERR_NVM_PBA_SECTION, align 8
  %149 = sub nsw i64 0, %148
  store i64 %149, i64* %4, align 8
  br label %206

150:                                              ; preds = %143
  %151 = load i64, i64* %7, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, 2
  %155 = sub nsw i64 %154, 1
  %156 = icmp slt i64 %151, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i64, i64* @E1000_ERR_NO_SPACE, align 8
  %160 = sub nsw i64 0, %159
  store i64 %160, i64* %4, align 8
  br label %206

161:                                              ; preds = %150
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %166

166:                                              ; preds = %197, %161
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %200

170:                                              ; preds = %166
  %171 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %172, %173
  %175 = call i64 @e1000_read_nvm(%struct.e1000_hw* %171, i32 %174, i32 1, i32* %9)
  store i64 %175, i64* %8, align 8
  %176 = load i64, i64* %8, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %170
  %179 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i64, i64* %8, align 8
  store i64 %180, i64* %4, align 8
  br label %206

181:                                              ; preds = %170
  %182 = load i32, i32* %9, align 4
  %183 = ashr i32 %182, 8
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %11, align 4
  %186 = mul nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = and i32 %189, 255
  %191 = load i32*, i32** %6, align 8
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %192, 2
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %191, i64 %195
  store i32 %190, i32* %196, align 4
  br label %197

197:                                              ; preds = %181
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %166

200:                                              ; preds = %166
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %11, align 4
  %203 = mul nsw i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 0, i32* %205, align 4
  store i64 0, i64* %4, align 8
  br label %206

206:                                              ; preds = %200, %178, %157, %146, %137, %130, %46, %34, %25, %15
  %207 = load i64, i64* %4, align 8
  ret i64 %207
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

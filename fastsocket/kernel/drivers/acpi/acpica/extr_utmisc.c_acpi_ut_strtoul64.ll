; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_strtoul64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utmisc.c_acpi_ut_strtoul64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_integer_byte_width = common dso_local global i32 0, align 4
@ut_stroul64 = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_UINT64_MAX = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Converted value: %8.8X%8.8X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_DECIMAL_CONSTANT = common dso_local global i32 0, align 4
@AE_BAD_HEX_CONSTANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_strtoul64(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 128
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @acpi_gbl_integer_byte_width, align 4
  %21 = icmp eq i32 %20, 4
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* @ut_stroul64, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %23, i8* %24)
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %28 [
    i32 128, label %27
    i32 16, label %27
  ]

27:                                               ; preds = %3, %3
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %209

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i64 @ACPI_IS_SPACE(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 9
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i1 [ true, %41 ], [ %50, %46 ]
  br label %53

53:                                               ; preds = %51, %36
  %54 = phi i1 [ false, %36 ], [ %52, %51 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %5, align 8
  br label %36

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 48
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = call signext i8 @ACPI_TOLOWER(i8 signext %69)
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 120
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  store i32 1, i32* %15, align 4
  store i32 16, i32* %6, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %5, align 8
  br label %77

76:                                               ; preds = %66, %61
  store i32 10, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %73
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i64 @ACPI_IS_SPACE(i8 signext %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 9
  br i1 %91, label %92, label %97

92:                                               ; preds = %87, %82, %78
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %209

96:                                               ; preds = %92
  br label %200

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @ACPI_UINT32_MAX, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @ACPI_UINT64_MAX, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %190, %157, %104
  %107 = load i8*, i8** %5, align 8
  %108 = load i8, i8* %107, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %110, label %199

110:                                              ; preds = %106
  %111 = load i8*, i8** %5, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i64 @ACPI_IS_DIGIT(i8 signext %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** %5, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = sub nsw i32 %118, 48
  store i32 %119, i32* %8, align 4
  br label %140

120:                                              ; preds = %110
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 10
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 1, i32* %16, align 4
  br label %139

124:                                              ; preds = %120
  %125 = load i8*, i8** %5, align 8
  %126 = load i8, i8* %125, align 1
  %127 = call i64 @ACPI_TOUPPER(i8 signext %126)
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = trunc i32 %129 to i8
  %131 = call i64 @ACPI_IS_XDIGIT(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %124
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 65
  %136 = add nsw i32 %135, 10
  store i32 %136, i32* %8, align 4
  br label %138

137:                                              ; preds = %124
  store i32 1, i32* %16, align 4
  br label %138

138:                                              ; preds = %137, %133
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %115
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %209

147:                                              ; preds = %143
  br label %199

148:                                              ; preds = %140
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i8*, i8** %5, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %5, align 8
  br label %106

160:                                              ; preds = %154, %151, %148
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load i32, i32* %14, align 4
  %168 = icmp sgt i32 %167, 16
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %14, align 4
  %171 = icmp sgt i32 %170, 8
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172, %166
  br label %209

176:                                              ; preds = %172, %169, %161
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @acpi_ut_short_divide(i32 %179, i32 %180, i32* %10, i32* null)
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %176
  %186 = load i32, i32* %12, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %209

189:                                              ; preds = %185
  br label %199

190:                                              ; preds = %176
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 %192, %191
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %9, align 4
  %197 = load i8*, i8** %5, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %5, align 8
  br label %106

199:                                              ; preds = %189, %147, %106
  br label %200

200:                                              ; preds = %199, %96
  %201 = load i32, i32* @ACPI_DB_EXEC, align 4
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @ACPI_FORMAT_UINT64(i32 %202)
  %204 = call i32 @ACPI_DEBUG_PRINT(i32 %203)
  %205 = load i32, i32* %9, align 4
  %206 = load i32*, i32** %7, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i32, i32* @AE_OK, align 4
  %208 = call i32 @return_ACPI_STATUS(i32 %207)
  br label %209

209:                                              ; preds = %200, %188, %175, %146, %95, %34
  %210 = load i32, i32* %6, align 4
  %211 = icmp eq i32 %210, 10
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i32, i32* @AE_BAD_DECIMAL_CONSTANT, align 4
  %214 = call i32 @return_ACPI_STATUS(i32 %213)
  br label %218

215:                                              ; preds = %209
  %216 = load i32, i32* @AE_BAD_HEX_CONSTANT, align 4
  %217 = call i32 @return_ACPI_STATUS(i32 %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @ACPI_IS_SPACE(i8 signext) #1

declare dso_local signext i8 @ACPI_TOLOWER(i8 signext) #1

declare dso_local i64 @ACPI_IS_DIGIT(i8 signext) #1

declare dso_local i64 @ACPI_TOUPPER(i8 signext) #1

declare dso_local i64 @ACPI_IS_XDIGIT(i8 signext) #1

declare dso_local i32 @acpi_ut_short_divide(i32, i32, i32*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
